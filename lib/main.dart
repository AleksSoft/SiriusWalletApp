import 'package:antares_wallet/app/routes/app_routes.dart';
import 'package:antares_wallet/app/ui/app_themes.dart';
import 'package:antares_wallet/app/ui/app_translations.dart';
import 'package:antares_wallet/bindings/initial_binding.dart';
import 'package:antares_wallet/ui/pages/start/start_page.dart';
import 'package:cross_local_storage/cross_local_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set preferred orientation
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Initialize storage
  await Get.putAsync<LocalStorageInterface>(() => LocalStorage.getInstance());

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
        initialBinding: InitialBinding(),
        // navigatorObservers: [
        //   FirebaseAnalyticsObserver(analytics: FirebaseAnalytics()),
        // ],
      ),
    ),
  );
}
