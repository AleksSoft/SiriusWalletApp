import 'package:antares_wallet/ui/pages/trading/trading_controller.dart';
import 'package:get/get.dart';

class TradingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<TradingController>(TradingController());
  }
}
