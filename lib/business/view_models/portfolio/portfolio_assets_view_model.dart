import 'package:antares_wallet/business/dto/asset_dictionary_data.dart';
import 'package:antares_wallet/business/services/api/mock_api.dart';
import 'package:antares_wallet/locator.dart';
import 'package:stacked/stacked.dart';

class PortfolioAssetsViewModel extends BaseViewModel {
  final MockApiService _api = locator<MockApiService>();

  PortfolioAssetsViewModel() {
    setBusy(true);
  }

  AssetDictionaryData _assetDictionary = AssetDictionaryData();

  List<CategoryData> get categoryList => _assetDictionary.categoryList;

  Future initialise() async {
    await Future.delayed(Duration(milliseconds: 300));
    _assetDictionary = await _api.fetchAssetDictionary();
    setBusy(false);
  }

  List<AssetData> getAssetsByCategoryId(String categoryId) =>
      _assetDictionary.assetList
          .where((asset) => asset.categoryId == categoryId)
          .toList();
}
