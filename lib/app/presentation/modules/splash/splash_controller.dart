import 'package:antares_wallet/app/common/app_enums.dart';
import 'package:antares_wallet/app/domain/repositories/session_repository.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class SplashController extends GetxController {
  static SplashController get con => Get.find();

  static final int splashDelaySeconds = 1;

  final ISessionRepository sessionRepo;
  SplashController({@required this.sessionRepo});

  @override
  void onReady() {
    checkPINAndStartApp();
    super.onReady();
  }

  Future<void> checkPINAndStartApp() async {
    await Future.delayed(Duration(seconds: splashDelaySeconds));

    if (sessionRepo.getSessionId().isNullOrBlank) {
      _logout();
    } else {
      final result = await Get.toNamed(
        Routes.LOCAL_AUTH,
        arguments: PinMode.check_initial,
      );

      if (result ?? false)
        Get.offAndToNamed(Routes.ROOT);
      else
        _logout();
    }
  }

  void _logout() =>
      sessionRepo.logout().then((value) => Get.offAndToNamed(Routes.START));
}
