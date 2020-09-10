import 'dart:async';

import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/repositories/session_repository.dart';
import 'package:antares_wallet/ui/pages/local_auth/local_auth_page.dart';
import 'package:antares_wallet/ui/pages/start/start_page.dart';
import 'package:cross_local_storage/cross_local_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootController extends GetxController with WidgetsBindingObserver {
  static RootController get con => Get.find();

  final _storage = Get.find<LocalStorageInterface>();

  final pageIndexObs = 0.obs;
  get pageIndex => this.pageIndexObs.value;
  set pageIndex(value) => this.pageIndexObs.value = value;

  Timer _prolongSessionTimer;

  bool isSelected(int index) => pageIndex == index;

  @override
  void onInit() {
    WidgetsBinding.instance.addObserver(this);
    _prolongSessionTimer = Timer.periodic(
      Duration(minutes: 2),
      (Timer _) async => await SessionRepository.prolongateSession(),
    );
    super.onInit();
  }

  @override
  Future<void> onClose() async {
    WidgetsBinding.instance.removeObserver(this);
    _prolongSessionTimer.cancel();
    super.onClose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
      print('application backgrounded');
    }
    if (state == AppLifecycleState.resumed) {
      print('application came back to foreground');
      _verifyPin();
    }
  }

  Future _verifyPin() async {
    var pinCorrect = (await Get.toNamed(LocalAuthPage.route)) ?? false;
    if (pinCorrect) {
      String pin = _storage.getString(AppStorageKeys.pinCode);
      String token = _storage.getString(AppStorageKeys.token);
      if (!(await SessionRepository.checkPin(sessionId: token, pin: pin))) {
        _storage.clear().whenComplete(
              () => Get.offAllNamed(StartPage.route),
            );
      }
    }
  }
}
