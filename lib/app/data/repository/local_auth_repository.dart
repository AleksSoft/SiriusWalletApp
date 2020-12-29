import 'package:antares_wallet/app/data/provider/local_auth_provider.dart';
import 'package:antares_wallet/app/utils/app_log.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:local_auth/local_auth.dart';
import 'package:meta/meta.dart';

enum LocalAuthType { face, fingerprint, none }

abstract class ILocalAuthRepository {
  Future<bool> authenticate(String reason);
  Future<bool> isBiometricsAvailable();
  Future<LocalAuthType> getLocalAuthType();
}

class LocalAuthRepository implements ILocalAuthRepository {
  LocalAuthRepository({@required this.provider});
  final ILocalAuthProvider provider;

  @override
  Future<bool> authenticate(String reason) async {
    try {
      await Future.delayed(Duration(milliseconds: 300));
      return provider.authenticate(reason);
    } catch (e) {
      AppLog.logger.e(e);
      return false;
    }
  }

  @override
  Future<bool> isBiometricsAvailable() => provider.isBiometricsAvailable();

  @override
  Future<LocalAuthType> getLocalAuthType() async {
    bool available = await isBiometricsAvailable();
    List<BiometricType> types = await provider.getAvailableTypes();
    if (available && GetPlatform.isMobile) {
      if (types.contains(BiometricType.face)) {
        return LocalAuthType.face;
      } else if (types.contains(BiometricType.fingerprint)) {
        return LocalAuthType.fingerprint;
      }
    }
    return LocalAuthType.none;
  }
}
