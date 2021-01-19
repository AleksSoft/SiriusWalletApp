import 'package:antares_wallet/app/core/error/error_handler.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/app/data/services/api/api_service.dart';
import 'package:meta/meta.dart';

abstract class IAssetsDataSource {
  Future<AssetsDictionaryResponse> assetsDictionary();
  Future<BaseAssetResponse> getBaseAsset();
  Future<EmptyResponse> setBaseAsset(String id);
  Future<AssetPairsResponse> getAssetPairs();
  Future<AmountInBaseAssetResponse> getAmountInBaseAsset(String baseAssetId);
}

class AssetsDataSource with ErrorHandler implements IAssetsDataSource {
  AssetsDataSource({@required this.api});
  final ApiService api;

  @override
  Future<AssetsDictionaryResponse> assetsDictionary() => safeCall(
        () => api.clientSecure.assetsDictionary(Empty()),
        method: 'assetsDictionary',
      );

  @override
  Future<BaseAssetResponse> getBaseAsset() => safeCall(
        () => api.clientSecure.getBaseAsset(Empty()),
        method: 'getBaseAsset',
      );

  @override
  Future<EmptyResponse> setBaseAsset(String id) => safeCall(
        () => api.clientSecure.setBaseAsset(
          BaseAssetUpdateRequest()..baseAssetId = id,
        ),
        method: 'setBaseAsset',
      );

  @override
  Future<AssetPairsResponse> getAssetPairs() => safeCall(
        () => api.clientSecure.getAssetPairs(Empty()),
        method: 'getAssetPairs',
      );

  @override
  Future<AmountInBaseAssetResponse> getAmountInBaseAsset(String baseAssetId) =>
      safeCall(
        () => api.clientSecure.getAmountInBaseAsset(
          AmountInBaseRequest.create()..assetId = baseAssetId,
        ),
        method: 'getAmountInBaseAsset',
      );
}
