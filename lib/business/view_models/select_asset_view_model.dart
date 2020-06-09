import 'package:antares_wallet/business/dto/asset_dictionary_data.dart';
import 'package:antares_wallet/business/services/api/mock_api.dart';
import 'package:antares_wallet/locator.dart';
import 'package:antares_wallet/ui/views/select_asset_view.dart';
import 'package:stacked/stacked.dart';

class SelectAssetViewModel extends BaseViewModel {
  final MockApiService _api = locator<MockApiService>();

  final SelectAssetArgs _selectAssetArgs;

  SelectAssetViewModel(this._selectAssetArgs) {
    setBusy(true);
  }

  AssetDictionaryData _assetDictionary = AssetDictionaryData();

  List<AssetData> get assetList => _assetDictionary.assetList;

  AssetData get selectedAsset => _selectAssetArgs.selectedAsset;

  bool get isOnlyBase => _selectAssetArgs.onlyBase;

  String get title => _selectAssetArgs.title;

  Future initialise() async {
    _assetDictionary = await _api.fetchAssetDictionary();
    setBusy(false);
  }
}
