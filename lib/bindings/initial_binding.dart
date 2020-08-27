import 'package:antares_wallet/controllers/disclaimers_controler.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/services/local_auth_service.dart';
import 'package:antares_wallet/utils/dialog_manager.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MockApiService>(MockApiService());

    Get.put<ApiService>(ApiService());
    Get.put<LocalAuthService>(LocalAuthService());
    Get.put<DialogManager>(DialogManager());
    Get.put<DisclaimersController>(DisclaimersController());
  }
}
