import 'dart:async';

import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/common.pb.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

abstract class ISessionRepository {
  Future<Either<ErrorResponseBody, CountryPhoneCodesResponse_Body>>
      getCountryPhoneCodes();
  Future<Either<ErrorResponseBody, bool>> prolongateSession();
  Future<Either<ErrorResponseBody, bool>> isSessionExpired();
  Future<Either<ErrorResponseBody, bool>> checkPin({
    @required String pin,
  });

  Future<Either<ErrorResponseBody, LoginResponse_Body>> login({
    @required String email,
    @required String password,
    @required String publicKey,
  });
  Future<Either<ErrorResponseBody, bool>> sendLoginSms({
    @required String sessionId,
  });
  Future<Either<ErrorResponseBody, bool>> verifyLoginSms({
    @required String sessionId,
    @required String code,
  });
  Future<void> logout();

  Future<Either<ErrorResponseBody, String>> sendVerificationEmail({
    @required String email,
  });
  Future<Either<ErrorResponseBody, bool>> verifyEmail({
    @required String email,
    @required String code,
    @required String token,
  });
  Future<Either<ErrorResponseBody, bool>> sendVerificationSms({
    @required String phone,
    @required String token,
  });
  Future<Either<ErrorResponseBody, bool>> verifyPhone({
    @required String phone,
    @required String code,
    @required String token,
  });
  Future<Either<ErrorResponseBody, RegisterResponse_Body>> register({
    @required String fullName,
    @required String email,
    @required String phone,
    @required String password,
    @required String hint,
    @required String countryIso3Code,
    @required String affiliateCode,
    @required String pin,
    @required String token,
    @required String publicKey,
  });

  String getSessionId();
  Future<void> saveSessionId(String token);
  Future<void> updateApiSession({String url});
}
