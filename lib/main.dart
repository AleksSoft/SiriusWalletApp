import 'package:antares_wallet/app/routes/app_routes.dart';
import 'package:antares_wallet/app/ui/app_themes.dart';
import 'package:antares_wallet/ui/pages/initial/initial_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set preferred orientation
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

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
        locale: Locale('en'),
        title: 'Antares Wallet',
        theme: AppThemes.light,
        themeMode: ThemeMode.system,
        getPages: AppRoutes.routes,
        initialRoute: InitialPage.route,
      ),
    ),
  );
}
