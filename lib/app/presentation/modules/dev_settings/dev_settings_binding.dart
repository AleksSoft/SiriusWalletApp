import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'dev_settings_controller.dart';

class DevSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DevSettingsController>(() => DevSettingsController(
          storage: GetStorage(),
          apiService: Get.find(),
        ));
  }
}
