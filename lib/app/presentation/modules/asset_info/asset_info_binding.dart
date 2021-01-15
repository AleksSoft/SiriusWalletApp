import 'package:get/get.dart';

import 'asset_info_controller.dart';

class AssetInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AssetInfoController());
  }
}
