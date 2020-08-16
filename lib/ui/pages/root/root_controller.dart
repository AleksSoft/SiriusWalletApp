import 'dart:async';

import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/repositories/session_repository.dart';
import 'package:antares_wallet/ui/pages/local_auth/local_auth_page.dart';
import 'package:antares_wallet/ui/pages/start/start_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RootController extends GetxController with WidgetsBindingObserver {
  static RootController get con => Get.find();

  final _storage = GetStorage();

  final pageIndexObs = 0.obs;
  get pageIndex => this.pageIndexObs.value;
  set pageIndex(value) => this.pageIndexObs.value = value;

  Timer _pronogateSessionTimer;

  bool isSelected(int index) => pageIndex == index;

  @override
  void onInit() {
    WidgetsBinding.instance.addObserver(this);
    _pronogateSessionTimer = Timer.periodic(
      Duration(minutes: 2),
      (Timer _) async {
        String sessionId = _storage.read(AppStorageKeys.token);
        var expired =
            await SessionRepository.isSessionExpired(sessionId: sessionId);
        if (expired) await SessionRepository.prolongateSession();
      },
    );
    super.onInit();
  }

  @override
  void onClose() {
    WidgetsBinding.instance.removeObserver(this);
    _pronogateSessionTimer.cancel();
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
      String pin = _storage.read(AppStorageKeys.pinCode);
      String token = _storage.read(AppStorageKeys.token);
      if (!(await SessionRepository.checkPin(sessionId: token, pin: pin))) {
        GetStorage().erase().whenComplete(
              () => Get.offAllNamed(StartPage.route),
            );
      }
    }
  }
}
