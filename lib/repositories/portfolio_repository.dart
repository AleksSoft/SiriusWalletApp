import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/src/google/protobuf/timestamp.pb.dart';
import 'package:antares_wallet/utils/error_handler.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class PortfolioRepository {
  static final _api = Get.find<ApiService>();

  static Future<List<Balance>> getBalances() async {
    var response =
        await ErrorHandler.safeCall(_api.clientSecure.getBalances(Empty()));
    return response?.payload ?? List();
  }

  static Future<List<FundsResponse_FundsModel>> getFunds({
    @required int take,
    @required int skip,
    String assetId,
    Timestamp fromDate,
    Timestamp toDate,
  }) async {
    var request = FundsRequest();
    request.take = take;
    request.skip = skip;
    if (assetId != null) request.assetId = assetId;
    if (fromDate != null) request.from = fromDate;
    if (toDate != null) request.to = toDate;

    final response =
        await ErrorHandler.safeCall(_api.clientSecure.getFunds(request));
    return response?.funds ?? List();
  }
}