import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'app.dart';
import 'locator.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Register all the services before the app starts
  setupLocator();

  // set up locale (workaround for iOS)
  while (window.locale == null) {
    await Future.delayed(const Duration(milliseconds: 1));
  }
  final locale = window.locale;
  Intl.systemLocale = locale.toString();

  // Run application
  runApp(SiriusApp());
}
