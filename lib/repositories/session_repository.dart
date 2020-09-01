import 'dart:async';

import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/utils/error_handler.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class SessionRepository {
  static final _api = Get.find<ApiService>();

  static Future<List<Country>> getCountryPhoneCodes() async {
    final response = await ErrorHandler.safeCall(
      () => _api.client.getCountryPhoneCodes(Empty()),
    );
    return response?.result?.countriesList ?? List();
  }

  static Future<bool> prolongateSession() async {
    try {
      await _api.clientSecure.prolongateSession(Empty());
      return true;
    } catch (e) {
      return false;
    }
  }

  static Future<bool> isSessionExpired({@required String sessionId}) async {
    final response = await ErrorHandler.safeCall(
      () => _api.client.isSessionExpired(
        CheckSessionRequest()..sessionId = sessionId,
      ),
    );
    return response?.expired ?? true;
  }

  /// LOGIN ENDPOINTS

  static Future<LoginResponse_LoginPayload> login({
    @required String email,
    @required String password,
    @required String publicKey,
  }) async {
    final response = await ErrorHandler.safeCall(
      () => _api.client.login(
        LoginRequest()
          ..email = email
          ..password = password
          ..publicKey = publicKey,
      ),
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
      return false;
    }
  }

  static Future<bool> varifyLoginSms({
    @required String sessionId,
    @required String code,
  }) async {
    final response = await ErrorHandler.safeCall(
      () => _api.client.verifyLoginSms(
        VerifyLoginSmsRequest()
          ..sessionId = sessionId
          ..code = code,
      ),
    );
    return response?.result?.passed ?? false;
  }

  static Future<bool> checkPin({
    @required String sessionId,
    @required String pin,
  }) async {
    final response = await ErrorHandler.safeCall(
      () => _api.client.checkPin(
        CheckPinRequest()
          ..sessionId = sessionId
          ..pin = pin,
      ),
    );
    return response?.result?.passed ?? false;
  }

  /// REGISTRATION ENDPOINTS

  static Future<String> sendVerificationEmail({
    @required String email,
  }) async {
    final response = await ErrorHandler.safeCall(
      () => _api.client.sendVerificationEmail(
        VerificationEmailRequest()..email = email,
      ),
    );
    return response?.result?.token;
  }

  static Future<bool> verifyEmail({
    @required String email,
    @required String code,
    @required String token,
  }) async {
    final response = await ErrorHandler.safeCall(
      () => _api.client.verifyEmail(
        VerifyEmailRequest()
          ..email = email
          ..code = code
          ..token = token,
      ),
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
      return false;
    }
  }

  static Future<bool> verifyPhone({
    @required String phone,
    @required String code,
    @required String token,
  }) async {
    final response = await ErrorHandler.safeCall(
      () => _api.client.verifyPhone(
        VerifyPhoneRequest()
          ..phone = phone
          ..code = code
          ..token = token,
      ),
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
    final response = await ErrorHandler.safeCall(
      () => _api.client.register(request),
    );
    return response?.result;
  }
}
