import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/app/data/services/api/api_service.dart';
import 'package:meta/meta.dart';

abstract class IPushDataSource {
  Future<PushSettingsResponse> getPushSettings();
  Future<EmptyResponse> setPushSettings(PushSettingsRequest r);
  Future<EmptyResponse> registerPushNotifications(RegisterPushRequest r);
}

class PushDataSource implements IPushDataSource {
  PushDataSource({@required this.api});
  final ApiService api;

  @override
  Future<PushSettingsResponse> getPushSettings() =>
      api.clientSecure.getPushSettings(Empty());

  @override
  Future<EmptyResponse> setPushSettings(PushSettingsRequest r) =>
      api.clientSecure.setPushSettings(r);

  @override
  Future<EmptyResponse> registerPushNotifications(RegisterPushRequest r) =>
      api.clientSecure.registerPushNotifications(r);
}
