import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/services/local_auth_service.dart';
import 'package:antares_wallet/ui/pages/local_auth/local_auth_controller.dart';
import 'package:antares_wallet/ui/pages/login/login_controller.dart';
import 'package:get/get.dart';

class StartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MockApiService>(() => MockApiService());

    Get.put<ApiService>(ApiService());
    Get.put<LocalAuthService>(LocalAuthService());
    Get.put<LocalAuthController>(LocalAuthController());
    Get.put<LoginController>(LoginController());
  }
}
