import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/ui/pages/login/login_controller.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginController>(LoginController());
    Get.put<ApiService>(ApiService());
  }
}
