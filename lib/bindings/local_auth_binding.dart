import 'package:antares_wallet/ui/pages/local_auth/local_auth_controller.dart';
import 'package:get/get.dart';

class LocalAuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LocalAuthController>(LocalAuthController());
  }
}
