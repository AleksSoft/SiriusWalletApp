import 'package:antares_wallet/controllers/login_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController(
          storage: GetStorage(),
          apiService: Get.find(),
        ));
  }
}
