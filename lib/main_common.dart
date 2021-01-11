import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger_flutter/logger_flutter.dart';

import 'app/common/common.dart';
import 'app/core/utils/utils.dart';
import 'app/routes/app_pages.dart';
import 'app/translations/app_translations.dart';
import 'initial_binding.dart';

Future<void> mainCommon(AppConfig appConfig) async {
  WidgetsFlutterBinding.ensureInitialized();

  // set only portrait orientation for device
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // init local storage
  await GetStorage.init();

  // Initialize firebase services
  final FirebaseApp firebaseApp = await Firebase.initializeApp();
  final FirebaseMessaging firebaseMessaging = FirebaseMessaging();
  final FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics();

  if (!appConfig.isProd) LogConsole.init();

  // start app with all configurations done
  runApp(
    GestureDetector(
      onTap: () => GestureUtils.unfocus(),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        enableLog: !appConfig.isProd,
        defaultTransition: Get.defaultTransition,
        transitionDuration: Get.defaultTransitionDuration,
        initialRoute: Routes.INITIAL,
        getPages: AppPages.pages,
        translations: AppTranslations(),
        supportedLocales: [Locale('ru'), Locale('en')],
        locale: Locale('en'),
        title: appConfig.appTitle,
        theme: AppThemes.light,
        themeMode: ThemeMode.system,
        initialBinding: InitialBinding(appConfig),
        navigatorObservers: [
          FirebaseAnalyticsObserver(analytics: firebaseAnalytics),
        ],
        onInit: () {
          final _storage = GetStorage();
          String _appFcmToken = _storage.read(AppStorageKeys.fcmToken);

          firebaseMessaging.configure(
            onMessage: (Map<String, dynamic> message) async {
              AppLog.loggerNoStack.i('FCM onMessage:\n$message');
            },
            onBackgroundMessage:
                GetPlatform.isIOS ? null : backgroundMessageHandler,
            onLaunch: (Map<String, dynamic> message) async {
              AppLog.loggerNoStack.i('FCM onLaunch:\n$message');
            },
            onResume: (Map<String, dynamic> message) async {
              AppLog.loggerNoStack.i('FCM onResume:\n$message');
            },
          );

          firebaseMessaging.requestNotificationPermissions(
            const IosNotificationSettings(
              sound: true,
              badge: true,
              alert: true,
              provisional: false,
            ),
          );

          firebaseMessaging.getToken().then((String token) {
            if (_appFcmToken != token) {
              _appFcmToken = token;
              _saveFcmToken(_storage, _appFcmToken);
            }
          });

          firebaseMessaging.onTokenRefresh.listen((String token) {
            if (_appFcmToken != token) {
              _appFcmToken = token;
              _saveFcmToken(_storage, _appFcmToken);
            }
          });
        },
      ),
    ),
  );
}

/// method to save firebase cloud messages token
void _saveFcmToken(GetStorage storage, String token) {
  assert(token != null);
  storage.write(AppStorageKeys.fcmToken, token).whenComplete(() {
    AppLog.loggerNoStack.i('FCM token:\n$token');
  });
}

/// method to handle firebase push notification messages in background
Future<dynamic> backgroundMessageHandler(Map<String, dynamic> message) async {
  AppLog.loggerNoStack.i('FCM onBackgroundMessage:\n$message');
}
