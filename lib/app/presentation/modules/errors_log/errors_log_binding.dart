import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'errors_log_controller.dart';

class ErrorsLogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ErrorsLogController>(() => ErrorsLogController(
          storage: GetStorage(),
        ));
  }
}
