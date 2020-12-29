import 'package:local_auth/local_auth.dart';

abstract class ILocalAuthProvider {
  Future<bool> authenticate(String reason);
  Future<bool> isBiometricsAvailable();
  Future<List<BiometricType>> getAvailableTypes();
}

class LocalAuthProvider extends LocalAuthentication
    implements ILocalAuthProvider {
  @override
  Future<bool> authenticate(String reason) => authenticateWithBiometrics(
        localizedReason: reason,
        useErrorDialogs: true,
        stickyAuth: true,
      );

  @override
  Future<bool> isBiometricsAvailable() => canCheckBiometrics;

  @override
  Future<List<BiometricType>> getAvailableTypes() => getAvailableBiometrics();
}
