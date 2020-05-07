import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class KeyStoreService {
  final FlutterSecureStorage _storage = FlutterSecureStorage();

  void write(String key, String value) async {
    await _storage.write(key: key, value: value);
  }
}
