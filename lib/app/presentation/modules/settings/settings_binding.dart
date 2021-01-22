import 'package:get/get.dart';

import 'settings_controller.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SettingsController(
      assetsCon: Get.find(),
      pushRepo: Get.find(),
      storage: Get.find(),
    ));
  }
}
