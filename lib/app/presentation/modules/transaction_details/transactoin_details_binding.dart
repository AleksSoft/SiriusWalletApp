import 'package:get/get.dart';

import 'transaction_details_controller.dart';

class TransactionDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TransactionDetailsController(portfolioRepo: Get.find()));
  }
}