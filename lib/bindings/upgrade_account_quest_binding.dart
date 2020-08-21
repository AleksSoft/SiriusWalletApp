import 'package:antares_wallet/ui/pages/more/profile/upgrade/quest/update_account_quest_controller.dart';
import 'package:get/get.dart';

class UpgradeAccountQuestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpgradeAccountQuestController>(
        () => UpgradeAccountQuestController());
  }
}
