import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/utils/error_handler.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class DisclaimersRepository {
  static final _api = Get.find<ApiService>();

  static Future<List<AssetDisclaimer>> getAssetDisclaimers() async {
    final response = await ErrorHandler.safeCall(
      () => _api.clientSecure.getAssetDisclaimers(Empty()),
    );
    return response?.result?.disclaimers ?? List();
  }

  static Future<bool> approveAssetDisclaimer({
    @required String disclaimerId,
  }) async {
    final response = await ErrorHandler.safeCall(
      () => _api.clientSecure.approveAssetDisclaimer(
        AssetDisclaimerRequest()..disclaimerId = disclaimerId,
      ),
    );
    return response != null;
  }

  static Future<bool> declineAssetDisclaimer({
    @required String disclaimerId,
  }) async {
    final response = await ErrorHandler.safeCall(
      () => _api.clientSecure.declineAssetDisclaimer(
        AssetDisclaimerRequest()..disclaimerId = disclaimerId,
      ),
    );
    return response != null;
  }
}
