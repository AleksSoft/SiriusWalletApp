import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/services/blockchain_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SettingsRepository {
  final _storage = GetStorage();
  final _bcService = Get.find<BlockchainService>();

  AppSettingsResponse_AppSettingsData _settingsData =
      AppSettingsResponse_AppSettingsData.getDefault();

  AppSettingsResponse_AppSettingsData get settings => _settingsData;

  List<String> randMnemonicList() {
    return _bcService.generateMnemonic().split(' ').sublist(0, 2);
  }

  Future<void> init() async {
    await _getSettings();
  }

  Future<void> _getSettings() async {
    String settingsStr = await _storage.read(AppStorageKeys.settingsData);

    AppSettingsResponse_AppSettingsData data = settingsStr == null
        ? (await ApiService.client.getAppSettings(Empty())).result
        : AppSettingsResponse_AppSettingsData.fromJson(settingsStr);

    if (_settingsData != data) {
      _settingsData = data;
      _storage.write(AppStorageKeys.settingsData, data.writeToJson());
    }
  }

  Future<void> updateBaseAsset(assetData) async {
    // if (assetData != null && _settingsData.baseAsset != assetData) {
    //   _settingsData.baseAsset = assetData;
    //   _storage.write(
    //     AppStorageKeys.settingsData,
    //     jsonEncode(_settingsData.toJson()),
    //   );
    // }
  }
}
