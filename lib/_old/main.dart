import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set preferred orientation
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Run application
  runApp(
    EasyLocalization(
      useOnlyLangCode: true,
      supportedLocales: [Locale('en'), Locale('ru')],
      path: 'assets/locales',
      fallbackLocale: Locale('en'),
      preloaderColor: Colors.white,
      child: AntaresApp(),
    ),
  );
}
