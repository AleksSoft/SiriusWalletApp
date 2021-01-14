import 'package:antares_wallet/app/presentation/modules/support/support_controller.dart';
import 'package:get/get.dart';

class SupportBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SupportController());
  }
}
