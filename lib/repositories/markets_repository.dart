import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:antares_wallet/utils/error_handler.dart';
import 'package:get/get.dart';

class MarketsRepository {
  static final _api = Get.find<ApiService>();

  static Future<List<MarketsResponse_MarketModel>> getMarkets({
    String assetPairId,
  }) async {
    var request = MarketsRequest();
    if (assetPairId != null) request.assetPairId = assetPairId;
    var response = await ErrorHandler.safeCall(
      () => _api.clientSecure.getMarkets(request),
      method: 'getMarkets',
    );
    return response?.markets ?? List();
  }
}
