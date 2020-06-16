import 'dart:convert';

import 'package:antares_wallet/app/store_keys.dart';
import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/models/settings_data.dart';
import 'package:antares_wallet/app/locator.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/services/blockchain_service.dart';
import 'package:antares_wallet/services/key_store_service.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SettingsRepository {
  final _storage = locator<KeyStoreService>();
  final _bcService = locator<BlockchainService>();
  final _api = locator<MockApiService>();

  SettingsData _settingsData = SettingsData();

  SettingsData get settings => _settingsData;

  List<String> randMnemonicList() {
    return _bcService.generateMnemonic().split(' ').sublist(0, 2);
  }

  Future<void> loadSettings() async {
    SettingsData data = await _storage.readDto<SettingsData>(
      SettingsData(),
      StoreKeys.settingsData,
    );

    data = data ?? await _fetchDefaultSettings();

    if (_settingsData != data) {
      _settingsData = data;
      _storage.write(StoreKeys.settingsData, jsonEncode(data.toJson()));
    }
  }

  Future<void> updateBaseAsset(AssetData assetData) async {
    if (assetData != null && _settingsData.baseAsset != assetData) {
      _settingsData.baseAsset = assetData;
      _storage.write(
        StoreKeys.settingsData,
        jsonEncode(_settingsData.toJson()),
      );
    }
  }

  Future<SettingsData> _fetchDefaultSettings() async {
    AssetDictionaryData assetDictionary = await _api.fetchAssetDictionary();
    final key = _bcService.generateMnemonic();
    return SettingsData()
      ..baseAsset = assetDictionary.assetList.firstWhere(
        (asset) => asset.id == '12',
      )
      ..pushEnable = false
      ..signWithPin = false
      ..privateKey = key;
  }
}
