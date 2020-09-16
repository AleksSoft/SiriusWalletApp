import 'package:antares_wallet/controllers/local_auth_controller.dart';
import 'package:get/get.dart';

class LocalAuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LocalAuthController>(LocalAuthController());
  }
}
