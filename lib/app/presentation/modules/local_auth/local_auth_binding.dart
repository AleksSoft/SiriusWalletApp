import 'package:antares_wallet/app/common/app_enums.dart';
import 'package:get/get.dart';

import 'local_auth_controller.dart';

class LocalAuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocalAuthController>(() => LocalAuthController(
          sessionRepo: Get.find(),
          localAuthRepo: Get.find(),
          mode: Get.arguments as PinMode,
        ));
  }
}
