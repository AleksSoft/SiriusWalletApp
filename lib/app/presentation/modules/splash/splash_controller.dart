import 'package:antares_wallet/app/data/services/session_service.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class SplashController extends GetxController {
  static SplashController get con => Get.find();

  static final int splashDelaySeconds = 1;

  final SessionService sessionService;
  SplashController({@required this.sessionService});

  @override
  void onReady() {
    checkPINAndStartApp();
    super.onReady();
  }

  Future<void> checkPINAndStartApp() async {
    await Future.delayed(Duration(seconds: splashDelaySeconds));
    bool result = await sessionService.verifySessionPIN(logOutOnError: true);
    Get.offNamed(result ? Routes.ROOT : Routes.START);
  }
}
