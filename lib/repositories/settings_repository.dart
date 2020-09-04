import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/utils/error_handler.dart';
import 'package:get/get.dart';

class SettingsRepository {
  static final _api = Get.find<ApiService>();

  static Future<AppSettingsResponse_AppSettingsData> getAppSettings() async {
    final response = await ErrorHandler.safeCall(
      () => _api.clientSecure.getAppSettings(Empty()),
      method: 'getAppSettings',
    );
    return response?.result ?? AppSettingsResponse_AppSettingsData();
  }
}
