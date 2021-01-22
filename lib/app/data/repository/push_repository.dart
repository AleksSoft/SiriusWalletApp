import 'package:antares_wallet/app/data/data_sources/push_data_source.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/common.pb.dart';
import 'package:antares_wallet/app/domain/repositories/push_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class PushRepository implements IPushRepository {
  final IPushDataSource source;
  final FlutterSecureStorage storage;
  PushRepository({@required this.source, @required this.storage});

  @override
  Future<Either<ErrorResponseBody, bool>> getPushSettings() async {
    final response = await source.getPushSettings();

    if (response == null) return Right(false);
    return response.hasError()
        ? Left(response.error)
        : Right(response.body?.enabled ?? false);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> setPushSettings({
    @required bool enabled,
  }) async {
    final request = PushSettingsRequest()..enabled = enabled;

    final response = await source.setPushSettings(request);

    if (response == null) return Right(false);
    return response.hasError() ? Left(response.error) : Right(enabled);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> registerPushNotifications({
    @required String fcmToken,
  }) async {
    if (!fcmToken.isNullOrBlank) {
      final request = RegisterPushRequest()..fcmToken = fcmToken;

      final response = await source.registerPushNotifications(request);

      if (response == null) return Right(false);
      return response.hasError() ? Left(response.error) : Right(true);
    } else {
      return Right(false);
    }
  }
}
