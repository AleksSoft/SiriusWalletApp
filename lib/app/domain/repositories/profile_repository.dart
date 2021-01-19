import 'dart:async';

import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/common.pb.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

abstract class IProfileRepository {
  Future<Either<ErrorResponseBody, TierInfoPayload>> getTierInfo();
  Future<Either<ErrorResponseBody, PersonalData>> getPersonalData();
  Future<Either<ErrorResponseBody, Map<String, KycDocument>>> getKycDocuments();
  Future<Either<ErrorResponseBody, bool>> setAddress({
    @required String address,
  });
  Future<Either<ErrorResponseBody, bool>> setZip({
    @required String zip,
  });
  Future<Either<ErrorResponseBody, bool>> uploadKycFile({
    @required String documentType,
    @required String filename,
    @required List<int> file,
  });
  Future<Either<ErrorResponseBody, List<QuestionnaireResponse_Question>>>
      getQuestionnaire();
  Future<Either<ErrorResponseBody, bool>> saveQuestionnaire({
    @required List<AnswersRequest_Choice> answers,
  });
  Future<Either<ErrorResponseBody, bool>> submitProfile({
    @required TierUpgrade tier,
  });
}
