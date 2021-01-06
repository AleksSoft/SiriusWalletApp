import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/app/services/api/api_service.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class ProfileRepository {
  static final _api = Get.find<ApiService>();

  static Future<TierInfoPayload> getTierInfo() async {
    final response = await ErrorHandler.safeCall<TierInfoResponse>(
      () => _api.clientSecure.getTierInfo(Empty()),
      method: 'getTierInfo',
    );
    return response?.body ?? TierInfoPayload();
  }

  static Future<PersonalData> getPersonalData() async {
    final response = await ErrorHandler.safeCall<PersonalDataResponse>(
      () => _api.clientSecure.getPersonalData(Empty()),
      method: 'getPersonalData',
    );
    return response?.body ?? PersonalData();
  }

  static Future<Map<String, KycDocument>> getKycDocuments() async {
    final response = await ErrorHandler.safeCall<KycDocumentsResponse>(
      () => _api.clientSecure.getKycDocuments(Empty()),
      method: 'getKycDocuments',
    );
    return response?.body?.result ?? Map<String, KycDocument>();
  }

  static Future<bool> setAddress({@required String address}) async {
    final response = await ErrorHandler.safeCall<EmptyResponse>(
      () => _api.clientSecure.setAddress(
        SetAddressRequest()..address = address,
      ),
      method: 'setAddress',
    );
    return response != null;
  }

  static Future<bool> setZip({@required String zip}) async {
    final response = await ErrorHandler.safeCall<EmptyResponse>(
      () => _api.clientSecure.setZip(SetZipRequest()..zip = zip),
      method: 'setZip',
    );
    return response != null;
  }

  static Future<bool> uploadKycFile({
    @required String documentType,
    @required String filename,
    @required List<int> file,
  }) async {
    final response = await ErrorHandler.safeCall<EmptyResponse>(
      () => _api.clientSecure.uploadKycFile(
        KycFileRequest()
          ..documentType = documentType
          ..filename = filename
          ..file = file,
      ),
      method: 'uploadKycFile',
    );
    return response != null;
  }

  static Future<List<QuestionnaireResponse_Question>> getQuestionnaire() async {
    final QuestionnaireResponse response =
        await ErrorHandler.safeCall<QuestionnaireResponse>(
      () => _api.clientSecure.getQuestionnaire(Empty()),
      method: 'getQuestionnaire',
    );
    return response?.body?.questionnaire ?? [];
  }

  static Future<bool> saveQuestionnaire({
    @required List<AnswersRequest_Choice> answers,
  }) async {
    final response = await ErrorHandler.safeCall<EmptyResponse>(
      () => _api.clientSecure.saveQuestionnaire(
        AnswersRequest()..answers.addAll(answers),
      ),
      method: 'saveQuestionnaire',
    );
    return response != null;
  }

  static Future<bool> submitProfile({
    @required TierUpgrade tier,
  }) async {
    final response = await ErrorHandler.safeCall<EmptyResponse>(
      () => _api.clientSecure.submitProfile(
        SubmitProfileRequest()..tier = tier,
      ),
      method: 'submitProfile',
    );
    return response != null;
  }
}
