import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/features/local_auth/data/datasources/local_auth_data_source.dart';
import 'package:antares_wallet/app/features/local_auth/domain/repositories/local_auth_repository.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:local_auth/local_auth.dart';
import 'package:meta/meta.dart';

class LocalAuthRepository implements ILocalAuthRepository {
  LocalAuthRepository({@required this.provider});
  final ILocalAuthDataSource provider;

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
