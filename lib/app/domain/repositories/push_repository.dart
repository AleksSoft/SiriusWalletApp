import 'package:antares_wallet/app/data/grpc/common.pb.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

abstract class IPushRepository {
  Future<Either<ErrorResponseBody, bool>> getPushSettings();
  Future<Either<ErrorResponseBody, bool>> setPushSettings({
    @required bool enabled,
  });
  Future<Either<ErrorResponseBody, bool>> registerPushNotifications({
    @required String fcmToken,
  });
  String getPushToken();
  Future<void> setPushToken(String token);
}
