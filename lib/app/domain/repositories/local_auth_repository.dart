import 'package:antares_wallet/common/common.dart';

abstract class ILocalAuthRepository {
  Future<bool> authenticate(String reason);
  Future<bool> isBiometricsAvailable();
  Future<LocalAuthType> getLocalAuthType();
  Future<void> savePIN(String pin);
  String getPIN();
}
