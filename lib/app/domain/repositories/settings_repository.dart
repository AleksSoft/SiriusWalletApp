import 'dart:async';

import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/common.pb.dart';
import 'package:dartz/dartz.dart';

abstract class ISettingsRepository {
  Future<Either<ErrorResponseBody, AppSettingsResponse_Body>> getAppSettings();
}
