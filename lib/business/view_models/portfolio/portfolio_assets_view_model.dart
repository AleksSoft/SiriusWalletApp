import 'package:antares_wallet/business/dto/asset_dictionary_data.dart';
import 'package:antares_wallet/business/services/api/mock_api.dart';
import 'package:antares_wallet/locator.dart';
import 'package:stacked/stacked.dart';

class PortfolioAssetsViewModel extends BaseViewModel {
  final MockApi _api = locator<MockApi>();

  PortfolioAssetsViewModel() {
    setBusy(true);
  }

  @override
  void dispose() {
    super.dispose();
  }

  AssetDictionaryData _assetDictionary = AssetDictionaryData();

  List<CategoryData> get categoryList => _assetDictionary.categoryList;

  Future initialise() async {
    _assetDictionary = await _api.fetchAssetDictionary();
    setBusy(false);
  }

  List<AssetData> getAssetsByCategoryId(String categoryId) =>
      _assetDictionary.assetList
          .where((asset) => asset.categoryId == categoryId)
          .toList();
}
