import 'package:antares_wallet/app/domain/entities/select_asset_args.dart';
import 'package:get/get.dart';

import 'select_asset_controller.dart';

class SelectAssetBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SelectAssetController(
      args: Get.arguments as SelectAssetArgs,
      assetsCon: Get.find(),
    ));
  }
}
