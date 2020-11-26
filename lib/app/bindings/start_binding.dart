import 'package:antares_wallet/controllers/login_controller.dart';
import 'package:get/get.dart';

class StartBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginController>(LoginController());
  }
}
