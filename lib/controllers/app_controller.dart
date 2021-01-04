import 'dart:async';

import 'package:antares_wallet/app/data/repository/session_repository.dart';
import 'package:antares_wallet/app/data/service/session_service.dart';
import 'package:antares_wallet/app/utils/app_log.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'assets_controller.dart';
import 'markets_controller.dart';
import 'orders_controller.dart';
import 'portfolio_controller.dart';

class AppController extends GetxController with WidgetsBindingObserver {
  static AppController get con => Get.find();

  final _localAuth = Get.find<SessionService>();

  final _assetsCon = Get.find<AssetsController>();
  final _marketsCon = Get.find<MarketsController>();
  final _ordersCon = Get.find<OrdersController>();
  final _portfolioCon = Get.find<PortfolioController>();

  final loading = false.obs;

  final pageIndexObs = 0.obs;

  Timer _prolongSessionTimer;

  bool isSelected(int index) => pageIndexObs.value == index;

  @override
  void onInit() {
    WidgetsBinding?.instance?.addObserver(this);
    ever(pageIndexObs, (int pageIndex) {
      switch (pageIndex) {
        case 1:
          _portfolioCon.initialize();
          break;
        case 2:
          _marketsCon.initialize();
          break;
        case 3:
          _ordersCon.initialize();
          break;
        default:
          break;
      }
    });
    super.onInit();
  }

  @override
  void onReady() {
    _initialize();
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

  /// initialised app controllers
  Future<void> _initialize() async {
    loading.toggle();
    await _assetsCon.initialize();
    await _marketsCon.initialize();
    await _ordersCon.initialize();
    await _portfolioCon.initialize();
    loading.toggle();
    _startTimer();
  }

  void _startTimer() => _prolongSession().then(
        (result) {
          if (result) {
            _prolongSessionTimer = Timer.periodic(
              const Duration(seconds: 59),
              (Timer _) async => await _prolongSession(),
            );
          }
        },
      );

  void _stopTimer() => _prolongSessionTimer?.cancel();

  Future<bool> _prolongSession() async {
    bool success = await SessionRepository.prolongateSession();
    AppLog.loggerNoStack.d('session prolongation result = $success');
    if (!success) _localAuth.verifySessionPIN(logOutOnError: true);
    return success;
  }
}
