import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/timestamp.pb.dart';
import 'package:antares_wallet/app/data/services/api/api_service.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class PortfolioRepository {
  static final _api = Get.find<ApiService>();

  static Future<List<Balance>> getBalances() async {
    var response = await ErrorHandler.safeCall<BalancesResponse>(
      () => _api.clientSecure.getBalances(Empty()),
      method: 'getBalances',
    );
    return response?.body?.balances ?? [];
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

    final response = await ErrorHandler.safeCall<FundsResponse>(
      () => _api.clientSecure.getFunds(request),
      method: 'getFunds',
    );
    return response?.body?.funds ?? [];
  }

  static Future<List<ExplorerLinksResponse_ExplorerLinkModel>>
      getExplorerLinks({
    @required assetId,
    @required transactionHash,
  }) async {
    var response = await ErrorHandler.safeCall<ExplorerLinksResponse>(
      () => _api.clientSecure.getExplorerLinks(
        ExplorerLinksRequest()
          ..assetId = assetId
          ..transactionHash = transactionHash,
      ),
      method: 'getExplorerLinks',
    );
    return response?.body?.links ?? [];
  }
}
