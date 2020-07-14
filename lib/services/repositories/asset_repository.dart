import 'package:antares_wallet/models/asset_pair_data.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:get/get.dart';

class AssetRepository {
  final _api = Get.find<MockApiService>();

  AssetsDictionaryResponse _assetDictionary = AssetsDictionaryResponse();

  String _baseAssetId;

  List<AssetPairData> _assetPairList = List();

  Map<String, List<Asset>> assetMap = Map();

  AssetsDictionaryResponse get assetDictionary => _assetDictionary;

  List<AssetCategory> get categoryList => _assetDictionary.categories;

  List<Asset> get assetList => _assetDictionary.assets;

  Asset get baseAsset =>
      _assetDictionary.assets.firstWhere((a) => a.id == _baseAssetId);

  List<AssetPairData> get assetPairs => _assetPairList;

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
  }

  Future<void> loadBaseAsset() async {
    if (_baseAssetId == null) {
      _baseAssetId =
          (await ApiService.client.getBaseAsset(Empty())).baseAsset.assetId;
    }
  }

  Future<void> loadAllAssetPairs() async {
    if (_assetPairList.isEmpty) {
      _assetPairList = await _api.fetchAssetPairs();
    }
  }

  Future<List<AssetPairData>> loadAssetPairs(Asset asset) async {
    await loadAllAssetPairs();
    return _assetPairList
        .where((e) =>
            e.secAssetSymbol == asset.symbol ||
            e.mainAssetSymbol == asset.symbol)
        .toList();
  }
}
