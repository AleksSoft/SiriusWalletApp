import 'package:antares_wallet/app/core/common/app_extensions.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:meta/meta.dart';

abstract class IAppStorage {
  Future<String> getString(String key);
  Future<int> getInt(String key);
  Future<bool> getBool(String key);
  Future<double> getDouble(String key);

  Future<String> setString(String key, String value);
  Future<int> setInt(String key, int value);
  Future<bool> setBool(String key, bool value);
  Future<double> setDouble(String key, double value);

  Future<bool> contains(String key);
  Future<void> delete(String key);
  Future<void> deleteAll();
}

class AppStorage implements IAppStorage {
  final FlutterSecureStorage secureStorage;
  AppStorage({@required this.secureStorage});

  @override
  Future<String> getString(String key) async {
    final result = await secureStorage.read(key: key);
    return result;
  }

  @override
  Future<int> getInt(String key) async {
    final result = await secureStorage.read(key: key);
    return int.tryParse(result);
  }

  @override
  Future<bool> getBool(String key) async {
    final result = await secureStorage.read(key: key);
    return result.asBool();
  }

  @override
  Future<double> getDouble(String key) async {
    final result = await secureStorage.read(key: key);
    return double.tryParse(result);
  }

  @override
  Future<String> setString(String key, String value) async {
    await secureStorage.write(key: key, value: value);
    return value;
  }

  @override
  Future<int> setInt(String key, int value) async {
    await secureStorage.write(key: key, value: value.toString());
    return value;
  }

  @override
  Future<bool> setBool(String key, bool value) async {
    await secureStorage.write(key: key, value: value.toString());
    return value;
  }

  @override
  Future<double> setDouble(String key, double value) async {
    await secureStorage.write(key: key, value: value.toString());
    return value;
  }

  @override
  Future<bool> contains(String key) async {
    final result = await secureStorage.containsKey(key: key);
    return result;
  }

  @override
  Future<void> delete(String key) async {
    await secureStorage.delete(key: key);
  }

  @override
  Future<void> deleteAll() async {
    await secureStorage.deleteAll();
  }
}
