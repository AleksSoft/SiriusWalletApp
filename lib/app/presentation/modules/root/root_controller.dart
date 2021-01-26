import 'dart:async';

import 'package:antares_wallet/app/core/error/app_error_handler.dart';
import 'package:antares_wallet/app/core/routes/app_pages.dart';
import 'package:antares_wallet/app/core/utils/app_log.dart';
import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/services/push_service.dart';
import 'package:antares_wallet/app/data/services/session_service.dart';
import 'package:antares_wallet/app/presentation/modules/markets/markets_controller.dart';
import 'package:antares_wallet/app/presentation/modules/orders/orders_controller.dart';
import 'package:antares_wallet/app/presentation/modules/portfolio/assets/assets_controller.dart';
import 'package:antares_wallet/app/presentation/modules/portfolio/portfolio_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootController extends GetxController
    with WidgetsBindingObserver, AppErrorHandler {
  static RootController get con => Get.find();

  final DialogManager dialogManager;
  final PushService pushService;
  final SessionService sessionService;
  final AssetsController assetsCon;
  final MarketsController marketsCon;
  final OrdersController ordersCon;
  final PortfolioController portfolioCon;
  RootController({
    @required this.dialogManager,
    @required this.pushService,
    @required this.sessionService,
    @required this.assetsCon,
    @required this.marketsCon,
    @required this.ordersCon,
    @required this.portfolioCon,
  });

  final loading = false.obs;

  final pageIndexObs = 0.obs;

  Timer _prolongSessionTimer;

  bool isSelected(int index) => pageIndexObs.value == index;

  @override
  void onInit() {
    WidgetsBinding?.instance?.addObserver(this);
    loading(true);
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
      AppLog.logger.i('application backgrounded');
      _stopTimer();
    }
    if (state == AppLifecycleState.resumed) {
      AppLog.logger.i('application came back to foreground');
      _startTimer();
    }
  }

  /// initialised app controllers and services
  Future<void> _initialize() async {
    await pushService.tryRegisterFcm();

    await assetsCon.initialize();
    await marketsCon.initialize();
    await ordersCon.initialize();
    await portfolioCon.initialize();

    loading(false);
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
    final response = await sessionService.sessionRepo.prolongateSession();

    bool isSuccess = false;
    response.fold(
      defaultError,
      (result) => isSuccess = result,
    );

    AppLog.logger.i('session prolongation result = $isSuccess');

    if (!isSuccess) {
      final sessionId = await sessionService.sessionRepo.getSessionId();
      if (sessionId == null || sessionId.isBlank) {
        _logout();
      } else {
        Get.toNamed(Routes.LOCAL_AUTH).then((result) {
          if (!(result ?? false)) _logout();
        });
      }
    }

    return isSuccess;
  }

  void _logout() => dialogManager.error(
        title: 'Unauthorized',
        message: 'Session lost. Logging out..',
        action: () => sessionService.verifySessionPIN(
          logOutOnError: true,
        ),
      );
}
