import 'package:antares_wallet/business/dto/asset_dictionary_data.dart';
import 'package:antares_wallet/business/services/api/mock_api.dart';
import 'package:antares_wallet/locator.dart';
import 'package:stacked/stacked.dart';

class SelectAssetViewModel extends BaseViewModel {
  final MockApi _api = locator<MockApi>();

  final AssetData selectedAsset;
  final bool onlyBase;

  SelectAssetViewModel({
    this.selectedAsset,
    this.onlyBase,
  }) {
    setBusy(true);
  }

  AssetDictionaryData _assetDictionary = AssetDictionaryData();

  List<AssetData> get assetList => _assetDictionary.assetList;

  Future initialise() async {
    _assetDictionary = await _api.fetchAssetDictionary();
    setBusy(false);
  }
}
