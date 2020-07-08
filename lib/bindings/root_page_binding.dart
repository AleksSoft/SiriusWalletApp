import 'package:antares_wallet/ui/pages/initial/initial_controller.dart';
import 'package:get/get.dart';

class InitialPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(InitialController());
  }
}
