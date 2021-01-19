import 'package:antares_wallet/app/data/data_sources/disclaimers_data_source.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/common.pb.dart';
import 'package:antares_wallet/app/domain/repositories/disclaimers_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class DisclaimersRepository implements IDisclaimersRepository {
  DisclaimersRepository({@required this.source});
  final IDisclaimersDataSource source;

  @override
  Future<Either<ErrorResponseBody, List<AssetDisclaimer>>>
      getAssetDisclaimers() async {
    final response = await source.getAssetDisclaimers();

    if (response == null) return Right([]);
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body?.disclaimers ?? []);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> approveAssetDisclaimer({
    @required String disclaimerId,
  }) async {
    final request = AssetDisclaimerRequest()..disclaimerId = disclaimerId;
    final response = await source.approveAssetDisclaimer(request);

    if (response == null) return Right(false);
    return response.hasError() ? Left(response.error) : Right(true);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> declineAssetDisclaimer({
    @required String disclaimerId,
  }) async {
    final request = AssetDisclaimerRequest()..disclaimerId = disclaimerId;
    final response = await source.declineAssetDisclaimer(request);

    if (response == null) return Right(false);
    return response.hasError() ? Left(response.error) : Right(true);
  }
}
