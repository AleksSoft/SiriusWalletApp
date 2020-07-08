import 'dart:convert';

import 'package:antares_wallet/app/store_keys.dart';
import 'package:antares_wallet/models/base_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

@lazySingleton
class KeyStoreService with ReactiveServiceMixin {
  final FlutterSecureStorage _storage = FlutterSecureStorage();

  RxValue<String> _authToken = RxValue<String>(initial: null);

  String get authToken => _authToken.value;

  Future fetchStoredData() async {
    _updateToken(await readString(StoreKeys.token));
  }

  void deleteAll() async {
    await _storage.deleteAll();
    _updateToken(null);
  }

  Future write(String key, String value) async {
    await _storage.write(key: key, value: value);
    if (key == StoreKeys.token) _updateToken(value);
  }

  Future<String> readString(String key) {
    return _storage.read(key: key);
  }

  Future<T> readDto<T extends BaseModel<T>>(T obj, String key) async {
    final value = await _storage.read(key: key);
    if (value == null) return null;
    return obj.fromJson(jsonDecode(value));
  }

  void _updateToken(String token) {
    _authToken.value = token;
    notifyListeners();
  }
}
