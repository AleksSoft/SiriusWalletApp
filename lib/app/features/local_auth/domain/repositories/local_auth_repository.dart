enum LocalAuthType { face, fingerprint, none }

abstract class ILocalAuthRepository {
  Future<bool> authenticate(String reason);
  Future<bool> isBiometricsAvailable();
  Future<LocalAuthType> getLocalAuthType();
}
