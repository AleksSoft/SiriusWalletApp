import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/data_sources/local_auth_data_source.dart';
import 'package:antares_wallet/app/domain/repositories/local_auth_repository.dart';
import 'package:antares_wallet/common/common.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:get_storage/get_storage.dart';
import 'package:local_auth/local_auth.dart';
import 'package:meta/meta.dart';

class LocalAuthRepository implements ILocalAuthRepository {
  final ILocalAuthDataSource source;
  final GetStorage storage;
  LocalAuthRepository({@required this.source, @required this.storage});

  @override
  Future<bool> authenticate(String reason) async {
    try {
      await Future.delayed(Duration(milliseconds: 300));
      return source.authenticate(reason);
    } catch (e) {
      AppLog.logger.e(e);
      return false;
    }
  }

  @override
  Future<bool> isBiometricsAvailable() => source.isBiometricsAvailable();

  @override
  Future<LocalAuthType> getLocalAuthType() async {
    bool available = await isBiometricsAvailable();
    List<BiometricType> types = await source.getAvailableTypes();
    if (available && GetPlatform.isMobile) {
      if (types.contains(BiometricType.face)) {
        return LocalAuthType.face;
      } else if (types.contains(BiometricType.fingerprint)) {
        return LocalAuthType.fingerprint;
      }
    }
    return LocalAuthType.none;
  }

  @override
  Future<void> savePIN(String pin) =>
      storage.write(AppStorageKeys.pinCode, pin);

  @override
  String getPIN() => storage.read<String>(AppStorageKeys.pinCode);
}
