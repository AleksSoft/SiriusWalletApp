import 'package:antares_wallet/app/locator.dart';
import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:stacked/stacked.dart';

class PortfolioAssetsViewModel extends BaseViewModel {
  final MockApiService _api = locator<MockApiService>();

  AssetDictionaryData _assetDictionary = AssetDictionaryData();

  List<CategoryData> get categoryList => _assetDictionary.categoryList;

  Future initialise() async {
    _assetDictionary = await runBusyFuture(_api.fetchAssetDictionary());
  }

  List<AssetData> getAssetsByCategoryId(String categoryId) =>
      _assetDictionary.assetList
          .where((asset) => asset.categoryId == categoryId)
          .toList();
}
