import 'package:flutter/foundation.dart';

enum Environment { dev, test, prod }

@immutable
class AppConfig {
  final Environment environment;
  final String appTitle;
  final List<String> apiUrls;

  AppConfig({
    @required this.appTitle,
    @required this.environment,
    @required this.apiUrls,
  });

  bool get isDev => environment == Environment.dev;
  bool get isTest => environment == Environment.test;
  bool get isProd => environment == Environment.prod;
}
