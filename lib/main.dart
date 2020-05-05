import 'package:flutter/material.dart';
import 'package:sirius/redux/store.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final store = await createStore();
  runApp(SiriusApp(store));
}
