import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/utils/error_handler.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class ProfileRepository {
  static final _api = Get.find<ApiService>();

  static Future<TierInfoPayload> getTierInfo() async {
    final response = await ErrorHandler.safeCall(
      _api.clientSecure.getTierInfo(Empty()),
    );
    return response?.result ?? TierInfoPayload();
  }

  static Future<PersonalData> getPersonalData() async {
    final response = await ErrorHandler.safeCall(
      _api.clientSecure.getPersonalData(Empty()),
    );
    return response?.result ?? PersonalData();
  }

  static Future<Map<String, KycDocumentsResponse_KycDocument>>
      getKycDocuments() async {
    final response = await ErrorHandler.safeCall(
      _api.clientSecure.getKycDocuments(Empty()),
    );
    return response?.result ?? Map();
  }

  static Future<bool> setAddress({@required String address}) async {
    final response = await ErrorHandler.safeCall(
      _api.clientSecure.setAddress(SetAddressRequest()..address = address),
    );
    return response != null;
  }

  static Future<bool> setZip({
    @required String zip,
  }) async {
    final response = await ErrorHandler.safeCall(
      _api.clientSecure.setZip(SetZipRequest()..zip = zip),
    );
    return response != null;
  }
}
