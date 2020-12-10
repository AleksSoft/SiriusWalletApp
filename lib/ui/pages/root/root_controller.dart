import 'dart:async';

import 'package:antares_wallet/app/utils/app_log.dart';
import 'package:antares_wallet/repositories/session_repository.dart';
import 'package:antares_wallet/services/local_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootController extends GetxController with WidgetsBindingObserver {
  static RootController get con => Get.find();

  final _localAuth = Get.find<LocalAuthService>();

  final pageIndexObs = 0.obs;
  get pageIndex => this.pageIndexObs.value;
  set pageIndex(value) => this.pageIndexObs.value = value;

  Timer _prolongSessionTimer;

  bool isSelected(int index) => pageIndex == index;

  @override
  void onInit() {
    WidgetsBinding?.instance?.addObserver(this);
    super.onInit();
  }

  @override
  void onReady() {
    _startTimer();
    super.onReady();
  }

  @override
  Future<void> onClose() async {
    WidgetsBinding?.instance?.removeObserver(this);
    _stopTimer();
    super.onClose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
      AppLog.loggerNoStack.d('application backgrounded');
      _stopTimer();
    }
    if (state == AppLifecycleState.resumed) {
      AppLog.loggerNoStack.d('application came back to foreground');
      _startTimer();
    }
  }

  void _startTimer() => _prolongateSession().then(
        (result) {
          if (result) {
            _prolongSessionTimer = Timer.periodic(
              const Duration(seconds: 59),
              (Timer _) async => await _prolongateSession(),
            );
          }
        },
      );

  void _stopTimer() => _prolongSessionTimer?.cancel();

  Future<bool> _prolongateSession() async {
    bool success = await SessionRepository.prolongateSession();
    AppLog.loggerNoStack.d('session prolongation result = $success');
    if (!success) {
      _localAuth.verifyPin(logOutOnError: true);
    }
    return success;
  }
}
