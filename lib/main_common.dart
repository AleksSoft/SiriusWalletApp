import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_core/firebase_core.dart';
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
  await Firebase.initializeApp();

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
        locale: Locale('en'),
        title: appConfig.appTitle,
        theme: AppThemes.light,
        themeMode: ThemeMode.system,
        initialBinding: InitialBinding(appConfig),
        navigatorObservers: [
          FirebaseAnalyticsObserver(analytics: FirebaseAnalytics()),
        ],
      ),
    ),
  );
}
