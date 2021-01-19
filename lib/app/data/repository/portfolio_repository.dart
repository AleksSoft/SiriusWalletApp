import 'package:antares_wallet/app/data/data_sources/portfolio_data_source.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/common.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/timestamp.pb.dart';
import 'package:antares_wallet/app/domain/repositories/portfolio_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class PortfolioRepository implements IPortfolioRepository {
  PortfolioRepository({@required this.source});
  final IPortfolioDataSource source;

  @override
  Future<Either<ErrorResponseBody, List<Balance>>> getBalances() async {
    final response = await source.getBalances();

    if (response == null) return Right([]);
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body?.balances ?? []);
  }

  @override
  Future<Either<ErrorResponseBody, List<FundsResponse_FundsModel>>> getFunds({
    @required int take,
    @required int skip,
    String assetId,
    Timestamp fromDate,
    Timestamp toDate,
  }) async {
    final request = FundsRequest()
      ..take = take
      ..skip = skip;
    if (assetId != null) request.assetId = assetId;
    if (fromDate != null) request.from = fromDate;
    if (toDate != null) request.to = toDate;

    final response = await source.getFunds(request);

    if (response == null) return Right([]);
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body?.funds ?? []);
  }

  @override
  Future<
      Either<ErrorResponseBody,
          List<ExplorerLinksResponse_ExplorerLinkModel>>> getExplorerLinks({
    @required String assetId,
    @required String transactionHash,
  }) async {
    final request = ExplorerLinksRequest()
      ..assetId = assetId
      ..transactionHash = transactionHash;

    final response = await source.getExplorerLinks(request);

    if (response == null) return Right([]);
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body?.links ?? []);
  }
}
