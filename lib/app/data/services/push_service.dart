import 'dart:async';

import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/domain/repositories/push_repository.dart';
import 'package:antares_wallet/app/domain/repositories/session_repository.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class PushService extends GetxService {
  final logger = AppLog.logger;
  final FirebaseMessaging fcm;
  final IPushRepository pushRepo;
  final ISessionRepository sessionRepo;
  PushService({
    @required this.fcm,
    @required this.pushRepo,
    @required this.sessionRepo,
  }) : assert(fcm != null && pushRepo != null && sessionRepo != null);

  StreamSubscription fcmTokenRefreshSubscription;

  @override
  void onInit() {
    fcm.configure(
      onMessage: _onMessage,
      onLaunch: _onLaunch,
      onResume: _onResume,
      onBackgroundMessage: GetPlatform.isIOS ? null : _backgroundMessageHandler,
    );

    fcm.requestNotificationPermissions(
      const IosNotificationSettings(
        sound: true,
        badge: true,
        alert: true,
        provisional: false,
      ),
    );

    fcm.getToken().then(_saveFcmToken);
    fcmTokenRefreshSubscription = fcm.onTokenRefresh.listen(_saveFcmToken);

    super.onInit();
  }

  @override
  void onClose() {
    fcmTokenRefreshSubscription?.cancel();
    super.onClose();
  }

  void tryRegisterFcm({String fcmToken}) {
    if (sessionRepo.getSessionId().isNullOrBlank) return;

    pushRepo.registerPushNotifications(
      fcmToken: fcmToken ?? pushRepo.getPushToken(),
    );
  }

  Future<void> _onMessage(Map<String, dynamic> message) async {
    logger.i('FCM onMessage:\n$message');
  }

  Future<void> _onLaunch(Map<String, dynamic> message) async {
    logger.i('FCM onLaunch:\n$message');
  }

  Future<void> _onResume(Map<String, dynamic> message) async {
    logger.i('FCM onResume:\n$message');
  }

  void _saveFcmToken(String newToken) {
    final token = pushRepo.getPushToken();
    if ((!token.isNullOrBlank || !newToken.isNullOrBlank) &&
        token != newToken) {
      pushRepo.setPushToken(newToken).whenComplete(() {
        tryRegisterFcm(fcmToken: newToken);
        logger.i('FCM token:\n$newToken');
      });
    }
  }
}

Future<void> _backgroundMessageHandler(Map<String, dynamic> message) async {
  AppLog.logger.i('FCM onBackgroundMessage:\n$message');
}
