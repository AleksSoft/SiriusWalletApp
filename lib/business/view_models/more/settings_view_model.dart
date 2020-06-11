import 'package:antares_wallet/business/models/asset_dictionary_data.dart';
import 'package:antares_wallet/business/models/settings_data.dart';
import 'package:antares_wallet/business/repositories/settings_repository.dart';
import 'package:antares_wallet/locator.dart';
import 'package:stacked/stacked.dart';

class SettingsViewModel extends BaseViewModel {
  final _repository = locator<SettingsRepository>();

  SettingsData get settings => _repository.settings;

  void initialise() {
    runBusyFuture(_repository.loadSettings());
  }

  void updateBaseAsset(AssetData assetData) {
    runBusyFuture(_repository.updateBaseAsset(assetData));
  }
}
