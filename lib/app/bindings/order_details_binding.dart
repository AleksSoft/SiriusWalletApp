import 'package:antares_wallet/controllers/order_details_controller.dart';
import 'package:get/get.dart';

class OrderDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<OrderDetailsController>(OrderDetailsController());
  }
}
