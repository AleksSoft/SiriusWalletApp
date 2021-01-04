import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class DisclaimersRepository {
  static final _api = Get.find<ApiService>();

  static Future<List<AssetDisclaimer>> getAssetDisclaimers() async {
    final response = await ErrorHandler.safeCall<AssetDisclaimersResponse>(
      () => _api.clientSecure.getAssetDisclaimers(Empty()),
      method: 'getAssetDisclaimers',
    );
    return response?.result?.disclaimers ?? [];
  }

  static Future<bool> approveAssetDisclaimer({
    @required String disclaimerId,
  }) async {
    final response = await ErrorHandler.safeCall<EmptyResponse>(
      () => _api.clientSecure.approveAssetDisclaimer(
        AssetDisclaimerRequest()..disclaimerId = disclaimerId,
      ),
      method: 'approveAssetDisclaimer',
    );
    return response != null;
  }

  static Future<bool> declineAssetDisclaimer({
    @required String disclaimerId,
  }) async {
    final response = await ErrorHandler.safeCall<EmptyResponse>(
      () => _api.clientSecure.declineAssetDisclaimer(
        AssetDisclaimerRequest()..disclaimerId = disclaimerId,
      ),
      method: 'declineAssetDisclaimer',
    );
    return response != null;
  }
}
