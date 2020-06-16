import 'package:antares_wallet/app/app.dart';
import 'package:antares_wallet/app/locator.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set preferred orientation
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Register all the services before the app starts
  setupLocator();

  // Firebase
  // Setup analytics
  FirebaseAnalytics analytics = FirebaseAnalytics();

  // Run application
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en', ''), Locale('ru', '')],
      path: 'assets/locales',
      fallbackLocale: Locale('en', ''),
      child: AntaresApp(analytics),
    ),
  );
}
