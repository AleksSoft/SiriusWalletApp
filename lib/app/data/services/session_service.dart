import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/domain/repositories/session_repository.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class SessionService extends GetxService {
  final ISessionRepository sessionRepo;
  SessionService({@required this.sessionRepo});

  Future<bool> verifySessionPIN({bool logOutOnError = false}) async {
    if (sessionRepo.getSessionId().isNullOrBlank) return false;

    final result = await Get.toNamed(
      Routes.LOCAL_AUTH,
      arguments: PinMode.check,
    );

    bool pinCorrect = result ?? false;
    if (!pinCorrect && logOutOnError) {
      await sessionRepo.logout();
      Get.offAllNamed(Routes.START);
    }

    return pinCorrect;
  }
}