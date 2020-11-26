import 'package:flutter/foundation.dart';

enum Environment { dev, test, prod }

class AppConfig {
  Environment _environment = Environment.prod;
  AppApiVersion _appApiVersion = AppApiVersion(0, 0);

  Environment get env => _environment;

  bool get isDev => _environment == Environment.dev;
  bool get isTest => _environment == Environment.test;
  bool get isProd => _environment == Environment.prod;

  AppApiVersion get version => _appApiVersion;

  String get appTitle {
    switch (this.env) {
      case Environment.dev:
        return 'Dev Antares Wallet';
      case Environment.test:
        return 'Test Antares Wallet';
      case Environment.prod:
      default:
        return 'Antares Wallet';
    }
  }

  Future<AppConfig> init({
    @required Environment environment,
    @required AppApiVersion appApiVersion,
  }) async {
    this._environment = environment;
    this._appApiVersion = appApiVersion;
    return this;
  }
}

@immutable
class AppApiVersion {
  final int major;
  final int minor;
  AppApiVersion(this.major, this.minor);
}
