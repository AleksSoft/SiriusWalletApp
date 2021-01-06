import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/app/services/api/api_service.dart';
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

class SessionDataSource implements ISessionDataSource {
  SessionDataSource({@required this.api});
  final ApiService api;

  @override
  Future<CheckPinResponse> checkPin(CheckPinRequest r) =>
      api.client.checkPin(r);

  @override
  Future<CountryPhoneCodesResponse> getCountryPhoneCodes() =>
      api.client.getCountryPhoneCodes(Empty());

  @override
  Future<CheckSessionResponse> isSessionExpired(CheckSessionRequest r) =>
      api.client.isSessionExpired(r);

  @override
  Future<EmptyResponse> prolongateSession() =>
      api.clientSecure.prolongateSession(Empty());

  @override
  Future<LoginResponse> login(LoginRequest r) => api.client.login(r);

  @override
  Future<EmptyResponse> sendLoginSms(LoginSmsRequest r) =>
      api.client.sendLoginSms(r);

  @override
  Future<VerifyLoginSmsResponse> verifyLoginSms(VerifyLoginSmsRequest r) =>
      api.client.verifyLoginSms(r);

  @override
  Future<EmptyResponse> logout() => api.clientSecure.logout(Empty());

  @override
  Future<RegisterResponse> register(RegisterRequest r) =>
      api.client.register(r);

  @override
  Future<VerificationEmailResponse> sendVerificationEmail(
          VerificationEmailRequest r) =>
      api.client.sendVerificationEmail(r);

  @override
  Future<EmptyResponse> sendVerificationSms(VerificationSmsRequest r) =>
      api.client.sendVerificationSms(r);

  @override
  Future<VerifyResponse> verifyEmail(VerifyEmailRequest r) =>
      api.client.verifyEmail(r);

  @override
  Future<VerifyResponse> verifyPhone(VerifyPhoneRequest r) =>
      api.client.verifyPhone(r);

  @override
  Future<void> updateApiSession({String url}) => api.update(url: url);
}
