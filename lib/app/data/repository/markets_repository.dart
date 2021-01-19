import 'package:antares_wallet/app/data/data_sources/markets_data_source.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/common.pb.dart';
import 'package:antares_wallet/app/domain/repositories/markets_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

class MarketsRepository implements IMarketsRepository {
  MarketsRepository({@required this.source});
  final IMarketsDataSource source;

  @override
  Future<Either<ErrorResponseBody, List<MarketsResponse_MarketModel>>>
      getMarkets({String assetPairId}) async {
    final request = MarketsRequest();
    if (assetPairId != null) request.assetPairId = assetPairId;

    final response = await source.getMarkets(request);

    if (response == null) return Right([]);
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body?.markets ?? []);
  }
}
