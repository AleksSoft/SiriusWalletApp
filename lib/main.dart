import 'package:antares_wallet/app/routes/app_routes.dart';
import 'package:antares_wallet/app/ui/app_themes.dart';
import 'package:antares_wallet/app/ui/app_translations.dart';
import 'package:antares_wallet/ui/pages/initial/initial_page.dart';
import 'package:catcher/catcher.dart';
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

  //debug configuration
  CatcherOptions debugOptions = CatcherOptions(
    DialogReportMode(),
    [
      ConsoleHandler(),
      CrashlyticsHandler(
        enableDeviceParameters: true,
        enableApplicationParameters: true,
        enableCustomParameters: true,
        printLogs: true,
      ),
    ],
  );

  //profile configuration
  CatcherOptions profileOptions = CatcherOptions(
    DialogReportMode(),
    [ConsoleHandler(), ToastHandler()],
    handlerTimeout: 10000,
    customParameters: {"example": "example_parameter"},
  );

  // //release configuration
  // CatcherOptions releaseOptions = CatcherOptions(
  //   DialogReportMode(),
  //   [ConsoleHandler()],
  // );

  Catcher(
    App(),
    enableLogger: true,
    debugConfig: debugOptions,
    profileConfig: profileOptions,
    // releaseConfig: releaseOptions,
  );
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
        initialRoute: InitialPage.route,
        getPages: AppRoutes.routes,
        translations: AppTranslations(),
        locale: Locale('en'),
        title: 'Antares Wallet',
        theme: AppThemes.light,
        themeMode: ThemeMode.system,
      ),
    );
  }
}
