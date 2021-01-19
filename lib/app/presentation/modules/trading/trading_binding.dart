import 'package:get/get.dart';

import 'trading_controller.dart';

class TradingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TradingController(
      tradingRepo: Get.find(),
      marketsRepo: Get.find(),
      apiService: Get.find(),
    ));
  }
}
