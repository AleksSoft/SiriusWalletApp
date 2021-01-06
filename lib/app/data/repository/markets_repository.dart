import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/services/api/api_service.dart';
import 'package:get/get.dart';

class MarketsRepository {
  static final _api = Get.find<ApiService>();

  static Future<List<MarketsResponse_MarketModel>> getMarkets({
    String assetPairId,
  }) async {
    var request = MarketsRequest();
    if (assetPairId != null) request.assetPairId = assetPairId;
    var response = await ErrorHandler.safeCall<MarketsResponse>(
      () => _api.clientSecure.getMarkets(request),
      method: 'getMarkets',
    );
    return response?.body?.markets ?? [];
  }
}
