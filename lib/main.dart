import 'dart:ui';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import 'app.dart';
import 'locator.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set preferred orientation
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Register all the services before the app starts
  setupLocator();

  // set up locale (workaround for iOS)
  while (window.locale == null) {
    await Future.delayed(const Duration(milliseconds: 1));
  }
  final locale = window.locale;
  Intl.systemLocale = locale.toString();

  // Firebase
  // Setup analytics
  FirebaseAnalytics analytics = FirebaseAnalytics();

  // Run application
  runApp(AntaresApp(analytics));
}
