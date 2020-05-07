import 'package:flutter/material.dart';

import 'app.dart';
import 'locator.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Register all the services before the app starts
  setupLocator();
  // Run application
  runApp(SiriusApp());
}
