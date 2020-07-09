import 'dart:convert';

import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/models/settings_data.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/services/blockchain_service.dart';
import 'package:antares_wallet/services/isalive_service.dart';
import 'package:antares_wallet/src/generated/isalive.pb.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SettingsRepository {
  final _storage = GetStorage();
  final _bcService = Get.find<BlockchainService>();
  final _api = Get.find<MockApiService>();
  final _isAliveService = Get.find<IsAliveService>();

  SettingsData _settingsData = SettingsData();

  IsAliveResponce _isAliveResponce;

  SettingsData get settings => _settingsData;

  IsAliveResponce get isAliveResponce => _isAliveResponce;

  List<String> randMnemonicList() {
    return _bcService.generateMnemonic().split(' ').sublist(0, 2);
  }

  Future<void> loadSettings() async {
    var settingsStr = await _storage.read(AppStorageKeys.settingsData);

    SettingsData data = settingsStr == null
        ? await _fetchDefaultSettings()
        : SettingsData().fromJson(json.decode(settingsStr));

    if (_settingsData != data) {
      _settingsData = data;
      _storage.write(AppStorageKeys.settingsData, jsonEncode(data.toJson()));
    }
  }

  Future<void> updateBaseAsset(AssetData assetData) async {
    if (assetData != null && _settingsData.baseAsset != assetData) {
      _settingsData.baseAsset = assetData;
      _storage.write(
        AppStorageKeys.settingsData,
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

  Future<void> fetchAlive() async {
    _isAliveResponce = await _isAliveService.check();
  }
}
