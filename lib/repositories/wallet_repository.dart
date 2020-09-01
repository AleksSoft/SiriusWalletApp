import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/utils/error_handler.dart';
import 'package:get/get.dart';

class WalletRepository {
  static final _api = Get.find<ApiService>();

  static Future<SwiftCredentialsResponse_SwiftCredentials> getSwiftCredentials(
      String assetId) async {
    final response = await ErrorHandler.safeCall(
      _api.clientSecure.getSwiftCredentials(
        SwiftCredentialsRequest()..assetId = assetId,
      ),
    );
    return response?.result ?? SwiftCredentialsResponse_SwiftCredentials();
  }
}
