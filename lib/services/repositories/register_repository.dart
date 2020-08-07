import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RegisterRepository {
  static final _api = Get.find<ApiService>();

  static Future<List<Country>> getCountryPhoneCodes() async {
    try {
      final response = await _api.client.getCountryPhoneCodes(Empty());
      return response.result.countriesList;
    } catch (e) {
      Get.defaultDialog(
        title: 'GetCountryPhoneCodes Error',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
      return List();
    }
  }

  static Future<String> sendVerificationEmail({
    @required String email,
  }) async {
    try {
      final response = await _api.client.sendVerificationEmail(
        VerificationEmailRequest()..email = email,
      );
      return response.result.token;
    } catch (e) {
      Get.defaultDialog(
        title: 'VerificationEmail Error',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
      return null;
    }
  }

  static Future<bool> verifyEmail({
    @required String email,
    @required String code,
    @required String token,
  }) async {
    try {
      final response = await _api.client.verifyEmail(
        VerifyEmailRequest()
          ..email = email
          ..code = code
          ..token = token,
      );
      return response.result.passed;
    } catch (e) {
      Get.defaultDialog(
        title: 'VerifyEmail Error',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
      return false;
    }
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
      Get.defaultDialog(
        title: 'SendVerificationSms Error',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
      return false;
    }
  }

  static Future<bool> verifyPhone({
    @required String phone,
    @required String code,
    @required String token,
  }) async {
    try {
      final response = await _api.client.verifyPhone(
        VerifyPhoneRequest()
          ..phone = phone
          ..code = code
          ..token = token,
      );
      return response.result.passed;
    } catch (e) {
      Get.defaultDialog(
        title: 'VerifyPhone Error',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
      return false;
    }
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
    try {
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
      print('Register request: ${request.toProto3Json()}');
      final response = await _api.client.register(request);
      print('Register response: ${response.toProto3Json()}');
      if (response.error.hasCode()) {
        Get.defaultDialog(
          title: response.error.code,
          middleText: response.error.message,
          onConfirm: () => Get.back(),
        );
        return null;
      }
      return response.result;
    } catch (e) {
      Get.defaultDialog(
        title: 'Register Error',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
      return null;
    }
  }
}
