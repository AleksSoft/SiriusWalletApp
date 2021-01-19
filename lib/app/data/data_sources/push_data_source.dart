import 'package:antares_wallet/app/core/error/error_handler.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/app/data/services/api/api_service.dart';
import 'package:meta/meta.dart';

abstract class IPushDataSource {
  Future<PushSettingsResponse> getPushSettings();
  Future<EmptyResponse> setPushSettings(PushSettingsRequest r);
  Future<EmptyResponse> registerPushNotifications(RegisterPushRequest r);
}

class PushDataSource with ErrorHandler implements IPushDataSource {
  PushDataSource({@required this.api});
  final ApiService api;

  @override
  Future<PushSettingsResponse> getPushSettings() => safeCall(
        () => api.clientSecure.getPushSettings(Empty()),
        method: 'getPushSettings',
      );

  @override
  Future<EmptyResponse> setPushSettings(PushSettingsRequest r) => safeCall(
        () => api.clientSecure.setPushSettings(r),
        method: 'setPushSettings',
      );

  @override
  Future<EmptyResponse> registerPushNotifications(RegisterPushRequest r) =>
      safeCall(
        () => api.clientSecure.registerPushNotifications(r),
        method: 'registerPushNotifications',
      );
}
