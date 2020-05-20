import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:antares_wallet/business/dto/base_dto.dart';

class KeyStoreService {
  final FlutterSecureStorage _storage = FlutterSecureStorage();

  void write(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  Future<T> readDto<T extends Dto<T>>(T obj, String key) async {
    final value = await _storage.read(key: key);
    if (value == null) return null;
    return obj.fromJson(jsonDecode(value));
  }
}
