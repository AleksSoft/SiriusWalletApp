import 'package:antares_wallet/app/routes/app_routes.dart';
import 'package:antares_wallet/app/ui/app_themes.dart';
import 'package:antares_wallet/app/ui/app_translations.dart';
import 'package:antares_wallet/bindings/initial_binding.dart';
import 'package:antares_wallet/ui/pages/start/start_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:syncfusion_flutter_core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set preferred orientation
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Register Syncfusion license
  SyncfusionLicense.registerLicense(
    'NT8mJyc2IWhia31hfWN9Z2doYmF8YGJ8ampqanNiYmlmamlmanMDHmgwJzwTICQ6ICAwOzI6PX06PA==',
  );

  // Initialize storage
  await GetStorage.init();

  runApp(
    GestureDetector(
      onTap: () {
        WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
      },
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        debugShowMaterialGrid: false,
        showPerformanceOverlay: false,
        showSemanticsDebugger: false,
        enableLog: true,
        defaultTransition: Transition.native,
        transitionDuration: Duration(milliseconds: 300),
        initialRoute: StartPage.route,
        getPages: AppRoutes.routes,
        translations: AppTranslations(),
        locale: Locale('en'),
        title: 'Antares Wallet',
        theme: AppThemes.light,
        themeMode: ThemeMode.system,
        initialBinding: StartBinding(),
        // navigatorObservers: [
        //   FirebaseAnalyticsObserver(analytics: FirebaseAnalytics()),
        // ],
      ),
    ),
  );
}
