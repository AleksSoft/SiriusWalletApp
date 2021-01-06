import 'package:antares_wallet/controllers/upgrade_account_quest_controller.dart';
import 'package:get/get.dart';

class UpgradeAccountQuestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpgradeAccountQuestController>(
        () => UpgradeAccountQuestController());
  }
}
