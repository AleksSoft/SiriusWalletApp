import 'package:antares_wallet/app/core/error/safe_call_handler.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/app/data/services/api/api_service.dart';
import 'package:meta/meta.dart';

abstract class ISettingsDataSource {
  Future<AppSettingsResponse> getAppSettings();
}

class SettingsDataSource with SafeCallHandler implements ISettingsDataSource {
  SettingsDataSource({@required this.api});
  final ApiService api;

  @override
  Future<AppSettingsResponse> getAppSettings() => safeCall(
        () => api.clientSecure.getAppSettings(Empty()),
        method: 'getAppSettings',
      );
}
