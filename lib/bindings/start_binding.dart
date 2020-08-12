import 'package:antares_wallet/ui/pages/login/login_controller.dart';
import 'package:get/get.dart';

class StartBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginController>(LoginController());
  }
}
