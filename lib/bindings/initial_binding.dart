import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/ui/pages/login/login_controller.dart';
import 'package:get/get.dart';

class StartBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ApiService>(ApiService());
    Get.lazyPut<MockApiService>(() => MockApiService());
    Get.put<LoginController>(LoginController());
  }
}
