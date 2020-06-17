import 'package:antares_wallet/app/locator.dart';
import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AssetDictionaryRepository {
  final _api = locator<MockApiService>();

  AssetDictionaryData _assetDictionary = AssetDictionaryData();

  Map<String, List<AssetData>> assetMap = Map();

  List<CategoryData> get categoryList => _assetDictionary.categoryList;

  List<AssetData> get assetList => _assetDictionary.assetList;

  Future<void> loadAssetDictionary() async {
    if (_assetDictionary == AssetDictionaryData()) {
      _assetDictionary = await _api.fetchAssetDictionary();
      categoryList.forEach((category) {
        assetMap.putIfAbsent(
          category.categoryId,
          () => assetList
              .where((asset) => asset.categoryId == category.categoryId)
              .toList(),
        );
      });
    }
  }
}
