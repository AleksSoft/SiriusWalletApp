import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/repositories/session_repository.dart';
import 'package:antares_wallet/ui/pages/local_auth/local_auth_page.dart';
import 'package:antares_wallet/ui/pages/start/start_page.dart';
import 'package:cross_local_storage/cross_local_storage.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthService {
  static Future<bool> authenticate() async {
    final _auth = LocalAuthentication();
    try {
      if (await canCheckBiometrics) {
        await Future.delayed(Duration(milliseconds: 300));
        return await _auth.authenticateWithBiometrics(
          localizedReason: 'Please authenticate to continue',
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

  static Future<bool> get canCheckBiometrics async =>
      await LocalAuthentication().canCheckBiometrics;

  /// verifyPin and check update
  Future<bool> verifyPin({bool logOutOnError = false}) async {
    final LocalStorageInterface _storage = Get.find<LocalStorageInterface>();
    bool checkLocalAuth = await LocalAuthService.canCheckBiometrics;
    var pinCorrect = await Get.to(
      LocalAuthPage(checkLocalAuth: checkLocalAuth),
    );
    if (pinCorrect ?? false) {
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
