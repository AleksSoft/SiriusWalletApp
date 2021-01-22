import 'package:get/get.dart';

import 'errors_log_controller.dart';

class ErrorsLogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ErrorsLogController>(() => ErrorsLogController(
          storage: Get.find(),
        ));
  }
}
