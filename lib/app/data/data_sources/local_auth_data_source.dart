import 'package:local_auth/local_auth.dart';
import 'package:meta/meta.dart';

abstract class ILocalAuthDataSource {
  Future<bool> authenticate(String reason);
  Future<bool> isBiometricsAvailable();
  Future<List<BiometricType>> getAvailableTypes();
}

class LocalAuthDataSource implements ILocalAuthDataSource {
  final LocalAuthentication localAuth;
  LocalAuthDataSource({@required this.localAuth});

  @override
  Future<bool> authenticate(String reason) =>
      localAuth.authenticateWithBiometrics(
        localizedReason: reason,
        useErrorDialogs: true,
        stickyAuth: true,
      );

  @override
  Future<bool> isBiometricsAvailable() => localAuth.canCheckBiometrics;

  @override
  Future<List<BiometricType>> getAvailableTypes() =>
      localAuth.getAvailableBiometrics();
}
