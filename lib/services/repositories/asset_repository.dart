import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';

class AssetRepository {
  AssetsDictionaryResponse _assetDictionary = AssetsDictionaryResponse();

  String _baseAssetId;

  List<AssetPair> _assetPairList = List();

  Map<String, List<Asset>> assetMap = Map();

  List<AssetCategory> get categoryList => _assetDictionary.categories;

  List<Asset> get assetList => _assetDictionary.assets;

  Asset get baseAsset =>
      _assetDictionary.assets.firstWhere((a) => a.id == _baseAssetId);

  List<AssetPair> get assetPairs => _assetPairList;

  AssetRepository() {
    loadAssetDictionary();
  }

  Future<void> loadAssetDictionary() async {
    _assetDictionary = await ApiService.client.assetsDictionary(Empty());
    categoryList.forEach((category) {
      assetMap.putIfAbsent(
        category.id,
        () => assetList
            .where((asset) => asset.categoryId == category.id)
            .toList(),
      );
    });
    await loadBaseAsset();
  }

  Future<void> loadBaseAsset() async {
    _baseAssetId =
        (await ApiService.client.getBaseAsset(Empty())).baseAsset.assetId;
  }

  Future<void> setBaseAsset(String id) async {
    await ApiService.client
        .setBaseAsset(BaseAssetUpdateRequest()..baseAssetId = id);
    await loadBaseAsset();
  }

  Future<void> loadAssetPairs() async {
    var response = await ApiService.client.getAssetPairs(Empty());
    _assetPairList = response.assetPairs;
  }

  List<AssetPair> watchedAssetPairs(Watchlist watchlist) {
    List<AssetPair> result = List();
    watchlist.assetIds.forEach((id) {
      result.add(_assetPairList.firstWhere((ap) => ap.id == id));
    });
    return result;
  }

  Future<Asset> assetFromId(String id) async {
    if (_assetDictionary.assets.isEmpty) await loadAssetDictionary();

    return assetList.firstWhere((a) => a.id == id);
  }

  Future<List<AssetPair>> pairsForAsset(String assetId) async {
    if (_assetPairList.isEmpty) await loadAssetPairs();
    return _assetPairList
        .where((a) => a.baseAssetId == assetId || a.quotingAssetId == assetId)
        .toList();
  }
}
