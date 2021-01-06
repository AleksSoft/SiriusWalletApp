import 'package:antares_wallet/ui/pages/register/register_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController(
          storage: GetStorage(),
          apiService: Get.find(),
        ));
  }
}
