import 'dart:convert';

import 'package:antares_wallet/business/models/base_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class KeyStoreService {
  final FlutterSecureStorage _storage = FlutterSecureStorage();

  void deleteAll() async {
    await _storage.deleteAll();
  }

  void write(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  Future<T> readDto<T extends BaseModel<T>>(T obj, String key) async {
    final value = await _storage.read(key: key);
    if (value == null) return null;
    return obj.fromJson(jsonDecode(value));
  }
}
