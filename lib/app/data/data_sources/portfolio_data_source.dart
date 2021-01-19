import 'package:antares_wallet/app/core/error/error_handler.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/app/data/services/api/api_service.dart';
import 'package:meta/meta.dart';

abstract class IPortfolioDataSource {
  Future<BalancesResponse> getBalances();
  Future<FundsResponse> getFunds(FundsRequest r);
  Future<ExplorerLinksResponse> getExplorerLinks(ExplorerLinksRequest r);
}

class PortfolioDataSource with ErrorHandler implements IPortfolioDataSource {
  PortfolioDataSource({@required this.api});
  final ApiService api;

  @override
  Future<BalancesResponse> getBalances() => safeCall(
        () => api.clientSecure.getBalances(Empty()),
        method: 'getBalances',
      );

  @override
  Future<FundsResponse> getFunds(FundsRequest r) => safeCall(
        () => api.clientSecure.getFunds(r),
        method: 'getFunds',
      );

  @override
  Future<ExplorerLinksResponse> getExplorerLinks(ExplorerLinksRequest r) =>
      safeCall(
        () => api.clientSecure.getExplorerLinks(r),
        method: 'getExplorerLinks',
      );
}
