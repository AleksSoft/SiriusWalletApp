import 'package:get/get.dart';

import 'trading_controller.dart';

class TradingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TradingController(
      apiService: Get.find(),
    ));
  }
}
