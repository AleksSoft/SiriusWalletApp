import 'package:antares_wallet/ui/pages/asset_info/asset_info_controller.dart';
import 'package:get/get.dart';

class AssetInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AssetInfoController>(AssetInfoController());
  }
}