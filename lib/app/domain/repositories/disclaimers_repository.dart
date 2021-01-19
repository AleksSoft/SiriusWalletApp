import 'dart:async';

import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/common.pb.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

abstract class IDisclaimersRepository {
  Future<Either<ErrorResponseBody, List<AssetDisclaimer>>>
      getAssetDisclaimers();
  Future<Either<ErrorResponseBody, bool>> approveAssetDisclaimer({
    @required String disclaimerId,
  });
  Future<Either<ErrorResponseBody, bool>> declineAssetDisclaimer({
    @required String disclaimerId,
  });
}
