import 'package:antares_wallet/app/utils/error_handler.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:meta/meta.dart';

abstract class IAssetsProvider {
  Future<AssetsDictionaryResponse> assetsDictionary();
  Future<BaseAssetResponse> getBaseAsset();
  Future<EmptyResponseV2> setBaseAsset(String id);
  Future<AssetPairsResponse> getAssetPairs();
  Future<AmountInBaseAssetResponse> getAmountInBaseAsset(String baseAssetId);
}

class AssetsProvider implements IAssetsProvider {
  const AssetsProvider({@required this.api});
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
  Future<EmptyResponseV2> setBaseAsset(String id) =>
      ErrorHandler.safeCall<EmptyResponseV2>(
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
