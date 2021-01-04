import 'package:antares_wallet/app/features/start/presentation/start_controller.dart';
import 'package:get/get.dart';

class StartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StartController>(() => StartController(appConfig: Get.find()));
  }
}
