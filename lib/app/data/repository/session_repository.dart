import 'dart:async';

import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/data_sources/session_data_source.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/common.pb.dart';
import 'package:antares_wallet/app/domain/repositories/session_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:get_storage/get_storage.dart';
import 'package:meta/meta.dart';

class SessionRepository implements ISessionRepository {
  final ISessionDataSource source;
  final GetStorage storage;
  SessionRepository({@required this.source, @required this.storage});

  @override
  Future<Either<ErrorResponseBody, bool>> checkPin({
    @required String pin,
  }) async {
    var request = CheckPinRequest()
      ..sessionId = getSessionId()
      ..pin = pin;
    var result = await source.checkPin(request);
    return result.hasError() ? Left(result.error) : Right(result.body.passed);
  }

  @override
  Future<Either<ErrorResponseBody, CountryPhoneCodesResponse_Body>>
      getCountryPhoneCodes() async {
    var result = await source.getCountryPhoneCodes();
    return result.hasError() ? Left(result.error) : Right(result.body);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> isSessionExpired() async {
    var request = CheckSessionRequest()..sessionId = getSessionId();
    var result = await source.isSessionExpired(request);
    return result.hasError() ? Left(result.error) : Right(result.body.expired);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> prolongateSession() async {
    var result = await source.prolongateSession();
    return result.hasError() ? Left(result.error) : Right(true);
  }

  @override
  Future<Either<ErrorResponseBody, LoginResponse_Body>> login({
    @required String email,
    @required String password,
    @required String publicKey,
  }) async {
    var request = LoginRequest()
      ..email = email
      ..password = password
      ..publicKey = publicKey;
    var result = await source.login(request);
    return result.hasError() ? Left(result.error) : Right(result.body);
  }

  @override
  Future<void> logout() async {
    try {
      if (!getSessionId().isNullOrBlank) await source.logout();
    } catch (e) {}
    await storage.erase();
  }

  @override
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
  }) async {
    var request = RegisterRequest()
      ..fullName = fullName
      ..email = email
      ..phone = phone
      ..password = password
      ..hint = hint
      ..countryIso3Code = countryIso3Code
      ..affiliateCode = affiliateCode
      ..pin = pin
      ..token = token
      ..publicKey = publicKey;
    var result = await source.register(request);

    if (result.hasError()) {
      await logout();
      return Left(result.error);
    }

    await saveSessionId(result.body.sessionId);

    return Right(result.body);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> sendLoginSms({
    @required String sessionId,
  }) async {
    var request = LoginSmsRequest()..sessionId = sessionId;
    var result = await source.sendLoginSms(request);
    return result.hasError() ? Left(result.error) : Right(true);
  }

  @override
  Future<Either<ErrorResponseBody, String>> sendVerificationEmail({
    @required String email,
  }) async {
    var request = VerificationEmailRequest()..email = email;
    var result = await source.sendVerificationEmail(request);
    return result.hasError() ? Left(result.error) : Right(result.body.token);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> sendVerificationSms({
    @required String phone,
    @required String token,
  }) async {
    var request = VerificationSmsRequest()
      ..phone = phone
      ..token = token;
    var result = await source.sendVerificationSms(request);
    return result.hasError() ? Left(result.error) : Right(true);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> verifyEmail({
    @required String email,
    @required String code,
    @required String token,
  }) async {
    var request = VerifyEmailRequest()
      ..email = email
      ..code = code
      ..token = token;
    var result = await source.verifyEmail(request);
    return result.hasError() ? Left(result.error) : Right(result.body.passed);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> verifyLoginSms({
    @required String sessionId,
    @required String code,
  }) async {
    var request = VerifyLoginSmsRequest()
      ..sessionId = sessionId
      ..code = code;
    var result = await source.verifyLoginSms(request);
    if (result.hasError()) {
      return Left(result.error);
    } else {
      bool passed = result.body?.passed ?? false;
      if (passed) saveSessionId(sessionId);
      return Right(passed);
    }
  }

  @override
  Future<Either<ErrorResponseBody, bool>> verifyPhone({
    @required String phone,
    @required String code,
    @required String token,
  }) async {
    var request = VerifyPhoneRequest()
      ..phone = phone
      ..code = code
      ..token = token;
    var result = await source.verifyPhone(request);
    return result.hasError() ? Left(result.error) : Right(result.body.passed);
  }

  @override
  String getSessionId() => storage.read(AppStorageKeys.token);

  @override
  Future<void> saveSessionId(String s) async {
    await storage.write(AppStorageKeys.token, s);
    await updateApiSession();
  }

  @override
  Future<void> updateApiSession({String url}) =>
      source.updateApiSession(url: url);
}
