import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/repository/session_repository.dart';
import 'package:antares_wallet/app/modules/local_auth/local_auth_controller.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:meta/meta.dart';

class SessionService extends GetxService {
  final GetStorage storage;
  SessionService({@required this.storage});

  Future<bool> verifySessionPIN({bool logOutOnError = false}) async {
    var pinCorrect = await Get.toNamed(
      Routes.LOCAL_AUTH,
      arguments: PinMode.check,
    );
    if (pinCorrect ?? false) {
      String pin = storage.read(AppStorageKeys.pinCode);
      String token = storage.read(AppStorageKeys.token);
      bool pinChecked = await SessionRepository.checkPin(
        sessionId: token,
        pin: pin,
      );
      if (!pinChecked && logOutOnError) {
        storage.erase().whenComplete(() => Get.offAllNamed(Routes.START));
      }
      return pinChecked;
    }
    return pinCorrect;
  }
}
