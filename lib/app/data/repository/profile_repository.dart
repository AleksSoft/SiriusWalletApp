import 'package:antares_wallet/app/common/app_enums.dart';
import 'package:antares_wallet/app/data/data_sources/profile_data_source.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/common.pb.dart';
import 'package:antares_wallet/app/domain/repositories/profile_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class ProfileRepository implements IProfileRepository {
  ProfileRepository({@required this.source});
  final IProfileDataSource source;

  @override
  Future<Either<ErrorResponseBody, TierInfoPayload>> getTierInfo() async {
    final response = await source.getTierInfo();

    if (response == null) return Right(TierInfoPayload());
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body ?? TierInfoPayload());
  }

  @override
  Future<Either<ErrorResponseBody, PersonalData>> getPersonalData() async {
    final response = await source.getPersonalData();

    if (response == null) return Right(PersonalData());
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body ?? PersonalData());
  }

  @override
  Future<Either<ErrorResponseBody, Map<String, KycDocument>>>
      getKycDocuments() async {
    final response = await source.getKycDocuments();

    if (response == null) return Right(Map<String, KycDocument>());
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body?.result ?? Map<String, KycDocument>());
  }

  @override
  Future<Either<ErrorResponseBody, bool>> setAddress({
    @required String address,
  }) async {
    final request = SetAddressRequest()..address = address;

    final response = await source.setAddress(request);

    if (response == null) return Right(false);
    return response.hasError() ? Left(response.error) : Right(true);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> setZip({@required String zip}) async {
    final request = SetZipRequest()..zip = zip;

    final response = await source.setZip(request);

    if (response == null) return Right(false);
    return response.hasError() ? Left(response.error) : Right(true);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> uploadKycFile({
    @required DocType docType,
    @required List<int> file,
    bool isFront,
  }) async {
    String documentType;
    String fileType;
    String fileName;
    switch (docType) {
      case DocType.drivingLicense:
        documentType = 'ProofOfFunds';
        fileName = 'DrivingLicenseFront';
        if (isFront) {
          fileType = 'BackSide';
          fileName = 'DrivingLicenseBack';
        }
        break;
      case DocType.nationalId:
        documentType = 'IdCard';
        fileName = 'IdCardFront';
        if (isFront) {
          fileType = 'BackSide';
          fileName = 'IdCardBack';
        }
        break;
      case DocType.passport:
        documentType = 'Passport';
        fileName = 'Passport';
        break;
      case DocType.selfie:
        documentType = 'Selfie';
        fileName = 'Selfie';
        break;
      case DocType.proofOfAddress:
        documentType = 'ProofOfAddress';
        fileName = 'ProofOfAddress';
        break;
      case DocType.proofOfFunds:
        documentType = 'ProofOfFunds';
        fileName = 'ProofOfFunds';
        break;
      default:
        break;
    }

    final request = KycFileRequest()
      ..documentType = documentType
      ..filename = fileName
      ..file = file;
    if (fileType != null && fileType.isNotEmpty) request.fileType = fileType;

    final response = await source.uploadKycFile(request);

    if (response == null) return Right(false);
    return response.hasError() ? Left(response.error) : Right(true);
  }

  @override
  Future<Either<ErrorResponseBody, List<QuestionnaireResponse_Question>>>
      getQuestionnaire() async {
    final response = await source.getQuestionnaire();

    if (response == null) return Right([]);
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body?.questionnaire ?? []);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> saveQuestionnaire({
    @required List<AnswersRequest_Choice> answers,
  }) async {
    final request = AnswersRequest()..answers.addAll(answers);

    final response = await source.saveQuestionnaire(request);

    if (response == null) return Right(false);
    return response.hasError() ? Left(response.error) : Right(true);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> submitProfile({
    @required TierUpgrade tier,
  }) async {
    final request = SubmitProfileRequest()..tier = tier;

    final response = await source.submitProfile(request);

    if (response == null) return Right(false);
    return response.hasError() ? Left(response.error) : Right(true);
  }
}
