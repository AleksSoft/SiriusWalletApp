import 'package:antares_wallet/controllers/deposit_controller.dart';
import 'package:antares_wallet/controllers/withdrawal_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get con => Get.find();

  bool hidden = false;

  toggleHidden() {
    hidden = !hidden;
    update();
  }

  deposit() => DepositController.con.search();

  withdraw() => WithdrawalController.con.search();
}
