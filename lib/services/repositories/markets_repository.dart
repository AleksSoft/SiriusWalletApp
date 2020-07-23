import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:get/get.dart';

class MarketsRepository {
  static final _api = Get.find<ApiService>();

  static Future<List<MarketsResponse_MarketModel>> getMarkets({
    String assetPairId,
  }) async {
    try {
      var request = MarketsRequest();
      if (assetPairId != null) request.assetPairId = assetPairId;
      final response = await _api.client.getMarkets(request);
      return response.markets;
    } catch (e) {
      Get.defaultDialog(
        title: 'Error',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
      return List();
    }
  }
}
