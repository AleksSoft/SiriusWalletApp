import 'package:antares_wallet/controllers/dev_settings/dev_settings_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DevSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DevSettingsController>(() => DevSettingsController(
          storage: GetStorage(),
          apiService: Get.find(),
        ));
  }
}
