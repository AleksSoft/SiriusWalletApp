import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/app/services/api/api_service.dart';
import 'package:meta/meta.dart';

abstract class IAssetsDataSource {
  Future<AssetsDictionaryResponse> assetsDictionary();
  Future<BaseAssetResponse> getBaseAsset();
  Future<EmptyResponse> setBaseAsset(String id);
  Future<AssetPairsResponse> getAssetPairs();
  Future<AmountInBaseAssetResponse> getAmountInBaseAsset(String baseAssetId);
}

class AssetsDataSource implements IAssetsDataSource {
  const AssetsDataSource({@required this.api});
  final ApiService api;

  @override
  Future<AssetsDictionaryResponse> assetsDictionary() =>
      ErrorHandler.safeCall<AssetsDictionaryResponse>(
        () => api.clientSecure.assetsDictionary(Empty()),
        method: 'assetsDictionary',
      );

  @override
  Future<BaseAssetResponse> getBaseAsset() =>
      ErrorHandler.safeCall<BaseAssetResponse>(
        () => api.clientSecure.getBaseAsset(Empty()),
        method: 'getBaseAsset',
      );

  @override
  Future<EmptyResponse> setBaseAsset(String id) =>
      ErrorHandler.safeCall<EmptyResponse>(
        () => api.clientSecure.setBaseAsset(
          BaseAssetUpdateRequest()..baseAssetId = id,
        ),
        method: 'setBaseAsset',
      );

  @override
  Future<AssetPairsResponse> getAssetPairs() =>
      ErrorHandler.safeCall<AssetPairsResponse>(
        () => api.clientSecure.getAssetPairs(Empty()),
        method: 'getAssetPairs',
      );

  @override
  Future<AmountInBaseAssetResponse> getAmountInBaseAsset(String baseAssetId) =>
      ErrorHandler.safeCall<AmountInBaseAssetResponse>(
        () => api.clientSecure.getAmountInBaseAsset(
          AmountInBaseRequest.create()..assetId = baseAssetId,
        ),
        method: 'getAmountInBaseAsset',
      );
}
