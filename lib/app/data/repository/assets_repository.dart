import 'package:antares_wallet/app/data/provider/assets_provider.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:meta/meta.dart';

abstract class IAssetsRepository {
  Future<AssetsDictionaryResponseBody> assetsDictionary();
  Future<String> getBaseAssetId();
  Future<EmptyResponseV2> setBaseAsset(String id);
  Future<List<AssetPair>> getAssetPairs();
  Future<List<AmountInBaseAssetResponse_AmountInBasePayload>>
      getAmountInBaseAssetList(String baseAssetId);
}

class AssetsRepository implements IAssetsRepository {
  AssetsRepository({@required this.provider});
  final IAssetsProvider provider;

  @override
  Future<AssetsDictionaryResponseBody> assetsDictionary() async {
    return (await provider.assetsDictionary()).body;
  }

  @override
  Future<List<AmountInBaseAssetResponse_AmountInBasePayload>>
      getAmountInBaseAssetList(String baseAssetId) async {
    final response = await provider.getAmountInBaseAsset(baseAssetId);
    return response?.values ?? [];
  }

  @override
  Future<String> getBaseAssetId() async {
    final response = await provider.getBaseAsset();
    return response?.baseAsset?.assetId ?? '';
  }

  @override
  Future<List<AssetPair>> getAssetPairs() async {
    final response = await provider.getAssetPairs();
    return response?.assetPairs ?? [];
  }

  @override
  Future<EmptyResponseV2> setBaseAsset(String id) {
    return provider.setBaseAsset(id);
  }
}
