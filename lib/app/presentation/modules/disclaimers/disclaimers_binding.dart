import 'package:get/get.dart';

import 'disclaimers_controller.dart';

class DisclaimersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DisclaimersController>(() => DisclaimersController());
  }
}
