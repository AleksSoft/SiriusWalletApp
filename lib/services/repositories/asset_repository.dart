import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:get/get.dart';

class AssetsRepository {
  static Future<AssetsDictionaryResponse> assetsDictionary() async {
    try {
      return await Get.find<ApiService>().client.assetsDictionary(Empty());
    } catch (e) {
      Future.delayed(Duration()).then(
        (_) => Get.defaultDialog(
          title: 'Error',
          middleText: e.message,
          onConfirm: () => Get.back(),
        ),
      );
      return AssetsDictionaryResponse.getDefault();
    }
  }

  static Future<String> getBaseAsset() async {
    try {
      return (await Get.find<ApiService>().client.getBaseAsset(Empty()))
          .baseAsset
          .assetId;
    } catch (e) {
      Future.delayed(Duration()).then(
        (_) => Get.defaultDialog(
          title: 'Error',
          middleText: e.message,
          onConfirm: () => Get.back(),
        ),
      );
      return null;
    }
  }

  static Future<void> setBaseAsset(String id) async {
    try {
      await Get.find<ApiService>()
          .client
          .setBaseAsset(BaseAssetUpdateRequest()..baseAssetId = id);
    } catch (e) {
      Future.delayed(Duration()).then(
        (_) => Get.defaultDialog(
          title: 'Error',
          middleText: e.message,
          onConfirm: () => Get.back(),
        ),
      );
    }
  }

  static Future<List<AssetPair>> getAssetPairs() async {
    try {
      return (await Get.find<ApiService>().client.getAssetPairs(Empty()))
          .assetPairs;
    } catch (e) {
      Future.delayed(Duration()).then(
        (_) => Get.defaultDialog(
          title: 'Error',
          middleText: e.message,
          onConfirm: () => Get.back(),
        ),
      );
      return List();
    }
  }
}
