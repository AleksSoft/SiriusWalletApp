import 'package:antares_wallet/controllers/disclaimers_controler.dart';
import 'package:get/get.dart';

class DisclaimersBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<DisclaimersController>(DisclaimersController());
  }
}
