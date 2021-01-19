import 'package:antares_wallet/app/core/error/error_handler.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/app/data/services/api/api_service.dart';
import 'package:meta/meta.dart';

abstract class ISessionDataSource {
  Future<CountryPhoneCodesResponse> getCountryPhoneCodes();
  Future<EmptyResponse> prolongateSession();
  Future<CheckSessionResponse> isSessionExpired(CheckSessionRequest r);
  Future<CheckPinResponse> checkPin(CheckPinRequest r);
  Future<void> updateApiSession({String url});

  Future<LoginResponse> login(LoginRequest request);
  Future<EmptyResponse> sendLoginSms(LoginSmsRequest request);
  Future<VerifyLoginSmsResponse> verifyLoginSms(VerifyLoginSmsRequest request);
  Future<EmptyResponse> logout();

  Future<RegisterResponse> register(RegisterRequest r);
  Future<VerificationEmailResponse> sendVerificationEmail(
      VerificationEmailRequest r);
  Future<VerifyResponse> verifyEmail(VerifyEmailRequest r);
  Future<EmptyResponse> sendVerificationSms(VerificationSmsRequest r);
  Future<VerifyResponse> verifyPhone(VerifyPhoneRequest r);
}

class SessionDataSource with ErrorHandler implements ISessionDataSource {
  SessionDataSource({@required this.api});
  final ApiService api;

  @override
  Future<CheckPinResponse> checkPin(CheckPinRequest r) => safeCall(
        () => api.client.checkPin(r),
        method: 'checkPin',
      );

  @override
  Future<CountryPhoneCodesResponse> getCountryPhoneCodes() => safeCall(
        () => api.client.getCountryPhoneCodes(Empty()),
        method: 'getCountryPhoneCodes',
      );

  @override
  Future<CheckSessionResponse> isSessionExpired(CheckSessionRequest r) =>
      safeCall(
        () => api.client.isSessionExpired(r),
        method: 'isSessionExpired',
      );

  @override
  Future<EmptyResponse> prolongateSession() => safeCall(
        () => api.clientSecure.prolongateSession(Empty()),
        method: 'prolongateSession',
      );

  @override
  Future<LoginResponse> login(LoginRequest r) => safeCall(
        () => api.client.login(r),
        method: 'login',
      );

  @override
  Future<EmptyResponse> sendLoginSms(LoginSmsRequest r) => safeCall(
        () => api.client.sendLoginSms(r),
        method: 'sendLoginSms',
      );

  @override
  Future<VerifyLoginSmsResponse> verifyLoginSms(VerifyLoginSmsRequest r) =>
      safeCall(
        () => api.client.verifyLoginSms(r),
        method: 'verifyLoginSms',
      );

  @override
  Future<EmptyResponse> logout() => safeCall(
        () => api.clientSecure.logout(Empty()),
        method: 'logout',
      );

  @override
  Future<RegisterResponse> register(RegisterRequest r) => safeCall(
        () => api.client.register(r),
        method: 'register',
      );

  @override
  Future<VerificationEmailResponse> sendVerificationEmail(
          VerificationEmailRequest r) =>
      safeCall(
        () => api.client.sendVerificationEmail(r),
        method: 'sendVerificationEmail',
      );

  @override
  Future<EmptyResponse> sendVerificationSms(VerificationSmsRequest r) =>
      safeCall(
        () => api.client.sendVerificationSms(r),
        method: 'sendVerificationSms',
      );

  @override
  Future<VerifyResponse> verifyEmail(VerifyEmailRequest r) => safeCall(
        () => api.client.verifyEmail(r),
        method: 'verifyEmail',
      );

  @override
  Future<VerifyResponse> verifyPhone(VerifyPhoneRequest r) => safeCall(
        () => api.client.verifyPhone(r),
        method: 'verifyPhone',
      );

  @override
  Future<void> updateApiSession({String url}) => api.update(url: url);
}
