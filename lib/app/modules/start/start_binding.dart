import 'package:antares_wallet/app/modules/start/start_controller.dart';
import 'package:get/get.dart';

class StartBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StartController>(() => StartController());
  }
}
