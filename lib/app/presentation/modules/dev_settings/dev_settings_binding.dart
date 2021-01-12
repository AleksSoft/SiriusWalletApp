import 'package:get/get.dart';

import 'dev_settings_controller.dart';

class DevSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DevSettingsController>(() => DevSettingsController(
          apiService: Get.find(),
        ));
  }
}
