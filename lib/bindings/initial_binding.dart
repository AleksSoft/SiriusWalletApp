import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/services/local_auth_service.dart';
import 'package:antares_wallet/services/utils/dialog_manager.dart';
import 'package:logger/logger.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Logger>(() => Logger(printer: PrettyPrinter()), fenix: true);

    Get.put<ApiService>(ApiService());
    Get.put<LocalAuthService>(LocalAuthService());
    Get.put<DialogManager>(DialogManager());
  }
}
