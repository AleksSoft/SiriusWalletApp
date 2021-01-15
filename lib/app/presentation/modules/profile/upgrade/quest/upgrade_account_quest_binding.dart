import 'package:get/get.dart';

import 'upgrade_account_quest_controller.dart';

class UpgradeAccountQuestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpgradeAccountQuestController>(
        () => UpgradeAccountQuestController());
  }
}
