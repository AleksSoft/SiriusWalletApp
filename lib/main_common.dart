import 'package:antares_wallet/app/data/services/api/api_service.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:logger_flutter/logger_flutter.dart';
import 'package:shake/shake.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  final storage = FlutterSecureStorage();
  final prefs = await SharedPreferences.getInstance();

  if (prefs.getBool(AppStorageKeys.firstRun) ?? true) {
    await storage.deleteAll();
    prefs.setBool(AppStorageKeys.firstRun, false);
  }

  final apiService = await ApiService(storage: storage).init(appConfig);

  // Initialize firebase services
  await Firebase.initializeApp();

  // Init log console
  ShakeDetector shakeDetector;
  if (!appConfig.isProd) {
    LogConsole.init();
    shakeDetector = ShakeDetector.waitForStart(
      onPhoneShake: () => AppLog.showConsole(),
    );
  }

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
        locale: Locale('en'),
        title: appConfig.appTitle,
        theme: AppThemes.light,
        themeMode: ThemeMode.system,
        initialBinding: InitialBinding(
          appConfig: appConfig,
          apiService: apiService,
          storage: storage,
        ),
        navigatorObservers: [
          FirebaseAnalyticsObserver(analytics: FirebaseAnalytics()),
        ],
        onInit: () => shakeDetector?.startListening(),
        onDispose: () => shakeDetector?.stopListening(),
      ),
    ),
  );
}
