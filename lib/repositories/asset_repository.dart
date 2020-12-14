import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/app/utils/error_handler.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:get/get.dart';

class AssetsRepository {
  static final _api = Get.find<ApiService>();

  static Future<AssetsDictionaryResponse> assetsDictionary() async {
    final response = await ErrorHandler.safeCall<AssetsDictionaryResponse>(
      () => _api.clientSecure.assetsDictionary(Empty()),
      method: 'assetsDictionary',
    );
    return response ?? AssetsDictionaryResponse();
  }

  static Future<String> getBaseAsset() async {
    final response = await ErrorHandler.safeCall<BaseAssetResponse>(
      () => _api.clientSecure.getBaseAsset(Empty()),
      method: 'getBaseAsset',
    );
    return response?.baseAsset?.assetId ?? '';
  }

  static Future<bool> setBaseAsset(String id) async {
    final response = await ErrorHandler.safeCall<EmptyResponseV2>(
      () => _api.clientSecure.setBaseAsset(
        BaseAssetUpdateRequest()..baseAssetId = id,
      ),
      method: 'setBaseAsset',
    );
    return response != null;
  }

  static Future<List<AssetPair>> getAssetPairs() async {
    final response = await ErrorHandler.safeCall<AssetPairsResponse>(
      () => _api.clientSecure.getAssetPairs(Empty()),
      method: 'getAssetPairs',
    );
    return response?.assetPairs ?? [];
  }

  static Future<List<AmountInBaseAssetResponse_AmountInBasePayload>>
      getAmountInBaseAsset(String baseAssetId) async {
    final response = await ErrorHandler.safeCall<AmountInBaseAssetResponse>(
      () => _api.clientSecure.getAmountInBaseAsset(
        AmountInBaseRequest.create()..assetId = baseAssetId,
      ),
      method: 'getAmountInBaseAsset',
    );
    return response?.values ?? [];
  }
}
