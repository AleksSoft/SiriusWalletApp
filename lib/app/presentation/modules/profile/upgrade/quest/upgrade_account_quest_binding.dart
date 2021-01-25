import 'package:get/get.dart';

import 'upgrade_account_quest_controller.dart';

class UpgradeAccountQuestBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(UpgradeAccountQuestController(
      profileRepo: Get.find(),
      profileCon: Get.find(),
    ));
  }
}
