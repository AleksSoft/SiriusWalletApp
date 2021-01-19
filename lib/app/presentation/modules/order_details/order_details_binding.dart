import 'package:get/get.dart';

import 'order_details_controller.dart';

class OrderDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OrderDetailsController(
      tradingRepo: Get.find(),
      marketsCon: Get.find(),
      ordersCon: Get.find(),
      portfolioCon: Get.find(),
      apiService: Get.find(),
    ));
  }
}
