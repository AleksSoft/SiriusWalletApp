import 'package:antares_wallet/app/core/error/error_handler.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/app/data/services/api/api_service.dart';
import 'package:meta/meta.dart';

abstract class IProfileDataSource {
  Future<TierInfoResponse> getTierInfo();
  Future<PersonalDataResponse> getPersonalData();
  Future<KycDocumentsResponse> getKycDocuments();
  Future<EmptyResponse> setAddress(SetAddressRequest r);
  Future<EmptyResponse> setZip(SetZipRequest r);
  Future<EmptyResponse> uploadKycFile(KycFileRequest r);
  Future<QuestionnaireResponse> getQuestionnaire();
  Future<EmptyResponse> saveQuestionnaire(AnswersRequest r);
  Future<EmptyResponse> submitProfile(SubmitProfileRequest r);
}

class ProfileDataSource with ErrorHandler implements IProfileDataSource {
  ProfileDataSource({@required this.api});
  final ApiService api;

  @override
  Future<AssetDisclaimersResponse> getAssetDisclaimers() => safeCall(
        () => api.clientSecure.getAssetDisclaimers(Empty()),
        method: 'getAssetDisclaimers',
      );

  @override
  Future<TierInfoResponse> getTierInfo() => safeCall(
        () => api.clientSecure.getTierInfo(Empty()),
        method: 'getTierInfo',
      );

  @override
  Future<PersonalDataResponse> getPersonalData() => safeCall(
        () => api.clientSecure.getPersonalData(Empty()),
        method: 'getPersonalData',
      );

  @override
  Future<KycDocumentsResponse> getKycDocuments() => safeCall(
        () => api.clientSecure.getKycDocuments(Empty()),
        method: 'getKycDocuments',
      );

  @override
  Future<EmptyResponse> setAddress(SetAddressRequest r) => safeCall(
        () => api.clientSecure.setAddress(r),
        method: 'setAddress',
      );

  @override
  Future<EmptyResponse> setZip(SetZipRequest r) => safeCall(
        () => api.clientSecure.setZip(r),
        method: 'setZip',
      );

  @override
  Future<EmptyResponse> uploadKycFile(KycFileRequest r) => safeCall(
        () => api.clientSecure.uploadKycFile(r),
        method: 'uploadKycFile',
      );

  @override
  Future<QuestionnaireResponse> getQuestionnaire() => safeCall(
        () => api.clientSecure.getQuestionnaire(Empty()),
        method: 'getQuestionnaire',
      );

  @override
  Future<EmptyResponse> saveQuestionnaire(AnswersRequest r) => safeCall(
        () => api.clientSecure.saveQuestionnaire(r),
        method: 'saveQuestionnaire',
      );

  @override
  Future<EmptyResponse> submitProfile(SubmitProfileRequest r) => safeCall(
        () => api.clientSecure.submitProfile(r),
        method: 'submitProfile',
      );
}
