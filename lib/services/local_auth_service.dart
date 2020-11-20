import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/repositories/session_repository.dart';
import 'package:antares_wallet/ui/pages/local_auth/local_auth_page.dart';
import 'package:antares_wallet/ui/pages/start/start_page.dart';
import 'package:cross_local_storage/cross_local_storage.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthService {
  final _auth = LocalAuthentication();

  final _storage = Get.find<LocalStorageInterface>();

  Future<bool> checkBiometrics() async {
    try {
      List<BiometricType> availableBiometrics =
          await _auth.getAvailableBiometrics();
      if (availableBiometrics.isNotEmpty) {
        await Future.delayed(Duration(milliseconds: 300));
        return await _auth.authenticateWithBiometrics(
          localizedReason: 'Authenticate to access',
          useErrorDialogs: true,
          stickyAuth: true,
        );
      } else {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }

  /// verifyPin and check update
  Future<bool> verifyPin({bool logOutOnError = false}) async {
    var pinCorrect = (await Get.toNamed(LocalAuthPage.route)) ?? false;
    if (pinCorrect) {
      String pin = _storage.getString(AppStorageKeys.pinCode);
      String token = _storage.getString(AppStorageKeys.token);
      bool pinChecked = await SessionRepository.checkPin(
        sessionId: token,
        pin: pin,
      );
      if (!pinChecked && logOutOnError) {
        _storage.clear().whenComplete(() => Get.offAllNamed(StartPage.route));
      }
      return pinChecked;
    }
    return pinCorrect;
  }
}
