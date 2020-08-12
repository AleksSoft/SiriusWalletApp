import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/utils/error_handler.dart';
import 'package:get/get.dart';

class AssetsRepository {
  static final _api = Get.find<ApiService>();

  static Future<AssetsDictionaryResponse> assetsDictionary() async {
    return await ErrorHandler.safeCall(
        _api.clientSecure.assetsDictionary(Empty()));
  }

  static Future<String> getBaseAsset() async {
    return (await ErrorHandler.safeCall(
            _api.clientSecure.getBaseAsset(Empty())))
        .baseAsset
        .assetId;
  }

  static Future<void> setBaseAsset(String id) async {
    await ErrorHandler.safeCall(_api.clientSecure
        .setBaseAsset(BaseAssetUpdateRequest()..baseAssetId = id));
  }

  static Future<List<AssetPair>> getAssetPairs() async {
    return (await ErrorHandler.safeCall(
            _api.clientSecure.getAssetPairs(Empty())))
        .assetPairs;
  }

  static Future<List<AmountInBaseAssetResponse_AmountInBasePayload>>
      getAmountInBaseAsset(String baseAssetId) async {
    return (await ErrorHandler.safeCall(_api.clientSecure.getAmountInBaseAsset(
            AmountInBaseRequest.create()..assetId = baseAssetId)))
        .values;
  }
}
