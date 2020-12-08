import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/utils/dialog_manager.dart';
import 'package:antares_wallet/controllers/local_auth_controller.dart';
import 'package:antares_wallet/services/local_auth_service.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class InitialBinding extends Bindings {
  final AppConfig appConfig;
  InitialBinding(this.appConfig);

  @override
  void dependencies() async {
    Get.lazyPut<Logger>(() => Logger(printer: PrettyPrinter()), fenix: true);

    Get.put<AppConfig>(appConfig);
    Get.put<LocalAuthService>(LocalAuthService());
    Get.put<DialogManager>(DialogManager());

    Get.put<LocalAuthController>(LocalAuthController());
  }
}
