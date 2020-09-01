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
      () => _api.clientSecure.getTierInfo(Empty()),
    );
    return response?.result ?? TierInfoPayload();
  }

  static Future<PersonalData> getPersonalData() async {
    final response = await ErrorHandler.safeCall(
      () => _api.clientSecure.getPersonalData(Empty()),
    );
    return response?.result ?? PersonalData();
  }

  static Future<Map<String, KycDocumentsResponse_KycDocument>>
      getKycDocuments() async {
    final response = await ErrorHandler.safeCall(
      () => _api.clientSecure.getKycDocuments(Empty()),
    );
    return response?.result ?? Map();
  }

  static Future<bool> setAddress({@required String address}) async {
    final response = await ErrorHandler.safeCall(
      () => _api.clientSecure.setAddress(
        SetAddressRequest()..address = address,
      ),
    );
    return response != null;
  }

  static Future<bool> setZip({@required String zip}) async {
    final response = await ErrorHandler.safeCall(
      () => _api.clientSecure.setZip(SetZipRequest()..zip = zip),
    );
    return response != null;
  }

  static Future<bool> uploadKycFile({
    @required String documentType,
    @required String filename,
    @required List<int> file,
  }) async {
    final response = await ErrorHandler.safeCall(
      () => _api.clientSecure.uploadKycFile(
        KycFileRequest()
          ..documentType = documentType
          ..filename = filename
          ..file = file,
      ),
    );
    return response != null;
  }

  static Future<List<QuestionnaireResponse_Question>> getQuestionnaire() async {
    final QuestionnaireResponse response = await ErrorHandler.safeCall(
      () => _api.clientSecure.getQuestionnaire(Empty()),
    );
    return response?.result?.questionnaire ?? [];
  }

  static Future<bool> saveQuestionnaire({
    @required List<AnswersRequest_Choice> answers,
  }) async {
    final response = await ErrorHandler.safeCall(
      () => _api.clientSecure.saveQuestionnaire(
        AnswersRequest()..answers.addAll(answers),
      ),
    );
    return response != null;
  }

  static Future<bool> submitProfile({
    @required TierUpgrade tier,
  }) async {
    final response = await ErrorHandler.safeCall(
      () => _api.clientSecure.submitProfile(
        SubmitProfileRequest()..tier = tier,
      ),
    );
    return response != null;
  }
}
