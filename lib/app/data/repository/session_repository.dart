import 'dart:async';

import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class SessionRepository {
  static final _api = Get.find<ApiService>();

  static Future<CountryPhoneCodesResponse_CountryPhoneCodes>
      getCountryPhoneCodes() async {
    final response = await ErrorHandler.safeCall<CountryPhoneCodesResponse>(
      () => _api.client.getCountryPhoneCodes(Empty()),
      method: 'getCountryPhoneCodes',
    );
    return response?.result ?? CountryPhoneCodesResponse_CountryPhoneCodes();
  }

  static Future<bool> prolongateSession() async {
    try {
      await _api.clientSecure.prolongateSession(Empty());
      return true;
    } catch (e) {
      ErrorHandler.logError(
        code: '',
        message: e.message,
        method: 'prolongateSession',
      );
      return false;
    }
  }

  static Future<bool> isSessionExpired({@required String sessionId}) async {
    final response = await ErrorHandler.safeCall<CheckSessionResponse>(
      () => _api.client.isSessionExpired(
        CheckSessionRequest()..sessionId = sessionId,
      ),
      method: 'isSessionExpired',
    );
    return response?.expired ?? true;
  }

  /// LOGIN ENDPOINTS

  static Future<LoginResponse_LoginPayload> login({
    @required String email,
    @required String password,
    @required String publicKey,
  }) async {
    final response = await ErrorHandler.safeCall<LoginResponse>(
      () => _api.client.login(
        LoginRequest()
          ..email = email
          ..password = password
          ..publicKey = publicKey,
      ),
      method: 'login',
    );
    return response?.result;
  }

  static Future<bool> sendLoginSms({
    @required String sessionId,
  }) async {
    try {
      await _api.client.sendLoginSms(LoginSmsRequest()..sessionId = sessionId);
      return true;
    } catch (e) {
      ErrorHandler.logError(
        code: '',
        message: e.message,
        method: 'sendLoginSms',
      );
      return false;
    }
  }

  static Future<bool> varifyLoginSms({
    @required String sessionId,
    @required String code,
  }) async {
    final response = await ErrorHandler.safeCall<VerifyLoginSmsResponse>(
      () => _api.client.verifyLoginSms(
        VerifyLoginSmsRequest()
          ..sessionId = sessionId
          ..code = code,
      ),
      method: 'verifyLoginSms',
    );
    return response?.result?.passed ?? false;
  }

  static Future<bool> checkPin({
    @required String sessionId,
    @required String pin,
  }) async {
    final response = await ErrorHandler.safeCall<CheckPinResponse>(
      () => _api.client.checkPin(
        CheckPinRequest()
          ..sessionId = sessionId
          ..pin = pin,
      ),
      method: 'checkPin',
    );
    return response?.result?.passed ?? false;
  }

  /// REGISTRATION ENDPOINTS

  static Future<String> sendVerificationEmail({
    @required String email,
  }) async {
    final response = await ErrorHandler.safeCall<VerificationEmailResponse>(
      () => _api.client.sendVerificationEmail(
        VerificationEmailRequest()..email = email,
      ),
      method: 'sendVerificationEmail',
    );
    return response?.result?.token;
  }

  static Future<bool> verifyEmail({
    @required String email,
    @required String code,
    @required String token,
  }) async {
    final response = await ErrorHandler.safeCall<VerifyResponse>(
      () => _api.client.verifyEmail(
        VerifyEmailRequest()
          ..email = email
          ..code = code
          ..token = token,
      ),
      method: 'verifyEmail',
    );
    return response?.result?.passed ?? false;
  }

  static Future<bool> sendVerificationSms({
    @required String phone,
    @required String token,
  }) async {
    try {
      await _api.client.sendVerificationSms(
        VerificationSmsRequest()
          ..phone = phone
          ..token = token,
      );
      return true;
    } catch (e) {
      ErrorHandler.logError(
        code: '',
        message: e.message,
        method: 'sendVerificationSms',
      );
      return false;
    }
  }

  static Future<bool> verifyPhone({
    @required String phone,
    @required String code,
    @required String token,
  }) async {
    final response = await ErrorHandler.safeCall<VerifyResponse>(
      () => _api.client.verifyPhone(
        VerifyPhoneRequest()
          ..phone = phone
          ..code = code
          ..token = token,
      ),
      method: 'verifyPhone',
    );
    return response?.result?.passed ?? false;
  }

  static Future<RegisterResponse_RegisterPayload> register({
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
    final response = await ErrorHandler.safeCall<RegisterResponse>(
      () => _api.client.register(request),
      method: 'register',
    );
    return response?.result;
  }
}
