import 'package:antares_wallet/app/common/app_enums.dart';
import 'package:get/get.dart';

import 'upgrade_account_doc_controller.dart';

class UpgradeAccountDocBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(UpgradeAccountDocController(
      profileCon: Get.find(),
      docType: Get.arguments as DocType,
    ));
  }
}
