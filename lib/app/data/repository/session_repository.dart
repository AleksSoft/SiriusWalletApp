import 'dart:async';

import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/core/utils/app_log.dart';
import 'package:antares_wallet/app/data/data_sources/session_data_source.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/common.pb.dart';
import 'package:antares_wallet/app/domain/repositories/session_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:meta/meta.dart';

class SessionRepository implements ISessionRepository {
  final ISessionDataSource source;
  final FlutterSecureStorage storage;
  SessionRepository({@required this.source, @required this.storage});

  @override
  Future<Either<ErrorResponseBody, bool>> checkPin({
    @required String pin,
  }) async {
    final sessionId = await getSessionId();
    final request = CheckPinRequest()
      ..sessionId = sessionId
      ..pin = pin;

    final response = await source.checkPin(request);

    if (response == null) return Right(false);
    return response.hasError()
        ? Left(response.error)
        : Right(response.body?.passed ?? false);
  }

  @override
  Future<Either<ErrorResponseBody, CountryPhoneCodesResponse_Body>>
      getCountryPhoneCodes() async {
    final response = await source.getCountryPhoneCodes();

    if (response == null) return Right(response.body);
    return response.hasError() ? Left(response.error) : Right(response.body);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> isSessionExpired() async {
    final request = CheckSessionRequest()..sessionId = await getSessionId();

    final response = await source.isSessionExpired(request);

    if (response == null) return Right(false);
    return response.hasError()
        ? Left(response.error)
        : Right(response.body?.expired ?? false);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> prolongateSession() async {
    final response = await source.prolongateSession();

    if (response == null) return Right(false);
    return response.hasError() ? Left(response.error) : Right(true);
  }

  @override
  Future<Either<ErrorResponseBody, LoginResponse_Body>> login({
    @required String email,
    @required String password,
    @required String publicKey,
  }) async {
    final request = LoginRequest()
      ..email = email
      ..password = password
      ..publicKey = publicKey;

    final response = await source.login(request);

    if (response == null) return Right(null);
    return response.hasError() ? Left(response.error) : Right(response.body);
  }

  @override
  Future<void> logout() async {
    try {
      final sessionId = await getSessionId();
      if (sessionId != null && !sessionId.isBlank) await source.logout();
    } catch (e) {
      AppLog.logger.e(e.toString());
    }
    await storage.deleteAll();
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
    final request = RegisterRequest()
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
    final response = await source.register(request);

    if (response == null) return Right(null);

    if (response.hasError()) {
      await logout();
      return Left(response.error);
    }

    await setSessionId(response.body.sessionId);

    return Right(response.body);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> sendLoginSms({
    @required String sessionId,
  }) async {
    final request = LoginSmsRequest()..sessionId = sessionId;

    final response = await source.sendLoginSms(request);

    if (response == null) Right(false);
    return response.hasError() ? Left(response.error) : Right(true);
  }

  @override
  Future<Either<ErrorResponseBody, String>> sendVerificationEmail({
    @required String email,
  }) async {
    final request = VerificationEmailRequest()..email = email;

    final response = await source.sendVerificationEmail(request);

    if (response == null) Right(null);
    return response.hasError()
        ? Left(response.error)
        : Right(response.body?.token);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> sendVerificationSms({
    @required String phone,
    @required String token,
  }) async {
    final request = VerificationSmsRequest()
      ..phone = phone
      ..token = token;

    final response = await source.sendVerificationSms(request);

    if (response == null) Right(false);
    return response.hasError() ? Left(response.error) : Right(true);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> verifyEmail({
    @required String email,
    @required String code,
    @required String token,
  }) async {
    final request = VerifyEmailRequest()
      ..email = email
      ..code = code
      ..token = token;

    final response = await source.verifyEmail(request);

    if (response == null) Right(false);
    return response.hasError()
        ? Left(response.error)
        : Right(response.body?.passed ?? false);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> verifyLoginSms({
    @required String sessionId,
    @required String code,
  }) async {
    final request = VerifyLoginSmsRequest()
      ..sessionId = sessionId
      ..code = code;

    final response = await source.verifyLoginSms(request);

    if (response == null) return Right(false);
    if (response.hasError()) {
      return Left(response.error);
    } else {
      bool passed = response.body?.passed ?? false;
      if (passed) await setSessionId(sessionId);
      return Right(passed);
    }
  }

  @override
  Future<Either<ErrorResponseBody, bool>> verifyPhone({
    @required String phone,
    @required String code,
    @required String token,
  }) async {
    final request = VerifyPhoneRequest()
      ..phone = phone
      ..code = code
      ..token = token;

    final response = await source.verifyPhone(request);

    if (response == null) return Right(false);
    return response.hasError()
        ? Left(response.error)
        : Right(response.body?.passed ?? false);
  }

  @override
  Future<String> getSessionId() async =>
      await storage.read(key: AppStorageKeys.token);

  @override
  Future<void> setSessionId(String s) async {
    await storage.write(key: AppStorageKeys.token, value: s);
    await updateApiSession();
  }

  @override
  Future<void> updateApiSession({String url}) async =>
      await source.updateApiSession(url: url);
}
