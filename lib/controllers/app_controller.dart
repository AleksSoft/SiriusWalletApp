import 'dart:async';

import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/services/session_service.dart';
import 'package:antares_wallet/app/domain/repositories/session_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'assets_controller.dart';
import 'markets_controller.dart';
import 'orders_controller.dart';
import 'portfolio_controller.dart';

class AppController extends GetxController with WidgetsBindingObserver {
  static AppController get con => Get.find();

  AppController({
    @required this.sessionService,
    @required this.sessionRepo,
    @required this.assetsCon,
    @required this.marketsCon,
    @required this.ordersCon,
    @required this.portfolioCon,
  });
  final SessionService sessionService;
  final ISessionRepository sessionRepo;
  final AssetsController assetsCon;
  final MarketsController marketsCon;
  final OrdersController ordersCon;
  final PortfolioController portfolioCon;

  final loading = false.obs;

  final pageIndexObs = 0.obs;

  Timer _prolongSessionTimer;

  bool isSelected(int index) => pageIndexObs.value == index;

  @override
  void onInit() {
    WidgetsBinding?.instance?.addObserver(this);
    loading.value = true;
    ever(pageIndexObs, (int pageIndex) {
      switch (pageIndex) {
        case 1:
          portfolioCon.initialize();
          break;
        case 2:
          marketsCon.initialize();
          break;
        case 3:
          ordersCon.initialize();
          break;
        default:
          break;
      }
    });
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    _initialize();
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
    await assetsCon.initialize();
    await marketsCon.initialize();
    await ordersCon.initialize();
    await portfolioCon.initialize();
    loading.value = false;
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
    final response = await sessionRepo.prolongateSession();

    bool isSuccess = false;
    response.fold(
      (error) => sessionService.verifySessionPIN(logOutOnError: true),
      (result) => isSuccess = result,
    );

    AppLog.loggerNoStack.d('session prolongation result = $isSuccess');

    return isSuccess;
  }
}
