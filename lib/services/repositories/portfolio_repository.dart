import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/src/google/protobuf/timestamp.pb.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class PortfolioRepository {
  static final _api = Get.find<ApiService>();

  static Future<List<Balance>> getBalances() async {
    try {
      var response = await _api.client.getBalances(Empty());
      return response.payload;
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

  static Future<List<FundsResponse_FundsModel>> getFunds({
    @required int take,
    @required int skip,
    String assetId,
    Timestamp fromDate,
    Timestamp toDate,
  }) async {
    try {
      var request = FundsRequest();
      request.take = take;
      request.skip = skip;
      if (assetId != null) request.assetId = assetId;
      if (fromDate != null) request.from = fromDate;
      if (toDate != null) request.to = toDate;

      final response = await _api.client.getFunds(request);
      return response.funds;
    } catch (e) {
      Future.delayed(Duration()).then(
        (value) => Get.defaultDialog(
          middleText: e.message,
          onConfirm: () => Get.back(),
        ),
      );
      return List();
    }
  }
}
