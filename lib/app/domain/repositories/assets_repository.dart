import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';

abstract class IAssetsRepository {
  Future<AssetsDictionaryResponse_Body> assetsDictionary();
  Future<String> getBaseAssetId();
  Future<EmptyResponse> setBaseAsset(String id);
  Future<List<AssetPair>> getAssetPairs();
  Future<List<AmountInBaseAssetResponse_AmountInBasePayload>>
      getAmountInBaseAssetList(String baseAssetId);
}
