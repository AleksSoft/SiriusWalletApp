import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/models/asset_pair_data.dart';
import 'package:antares_wallet/services/api/grpc_client_singleton.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/src/generated/asset_dictionary.pb.dart';
import 'package:antares_wallet/src/generated/asset_dictionary.pbgrpc.dart';
import 'package:antares_wallet/src/generated/protobuf/empty.pb.dart';
import 'package:get/get.dart';

class AssetRepository {
  final _api = Get.find<MockApiService>();

  AssetsDictionaryResponse _assetDictionaryResponse =
      AssetsDictionaryResponse();

  AssetDictionaryData _assetDictionary = AssetDictionaryData();

  AssetData _baseAsset = AssetData();

  List<AssetPairData> _assetPairList = List();

  Map<String, List<AssetData>> assetMap = Map();

  AssetsDictionaryResponse get assetDictionaryResponse =>
      _assetDictionaryResponse;

  List<CategoryData> get categoryList => _assetDictionary.categoryList;

  List<AssetData> get assetList => _assetDictionary.assetList;

  AssetData get baseAsset => _baseAsset;

  List<AssetPairData> get assetPairs => _assetPairList;

  Future<void> loadTestAssetDictionary() async {
    var client = ApiServiceClient(GrpcSingleton.client,
        options: GrpcSingleton.secureOptions);
    _assetDictionaryResponse = await client.assetsDictionary(Empty());
    print(_assetDictionaryResponse);
  }

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

  Future<void> loadBaseAsset() async {
    if (_baseAsset == AssetData()) {
      _baseAsset = await _api.fetchBaseAsset();
    }
  }

  Future<void> loadAllAssetPairs() async {
    if (_assetPairList.isEmpty) {
      _assetPairList = await _api.fetchAssetPairs();
    }
  }

  Future<List<AssetPairData>> loadAssetPairs(AssetData asset) async {
    await loadAllAssetPairs();
    return _assetPairList
        .where((e) =>
            e.secAssetSymbol == asset.symbol ||
            e.mainAssetSymbol == asset.symbol)
        .toList();
  }
}
