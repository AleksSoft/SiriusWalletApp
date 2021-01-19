import 'package:antares_wallet/app/core/error/error_handler.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/services/api/api_service.dart';
import 'package:meta/meta.dart';

abstract class IMarketsDataSource {
  Future<MarketsResponse> getMarkets(MarketsRequest r);
}

class MarketsDataSource with ErrorHandler implements IMarketsDataSource {
  MarketsDataSource({@required this.api});
  final ApiService api;

  @override
  Future<MarketsResponse> getMarkets(MarketsRequest r) => safeCall(
        () => api.clientSecure.getMarkets(r),
        method: 'getMarkets',
      );
}
