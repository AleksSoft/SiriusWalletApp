import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/widgets/asset_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_page/search_page.dart';

class HomeController extends GetxController {
  static HomeController get con => Get.find();

  bool hidden = false;

  toggleHidden() {
    hidden = !hidden;
    update();
  }

  deposit() => showSearch(
        context: Get.overlayContext,
        delegate: SearchPage<Asset>(
          showItemsOnEmpty: true,
          items: AssetsController.con.assetList
              .where((a) => a.cardDeposit || a.swiftDeposit)
              .toList(),
          searchLabel: 'select_asset'.tr,
          filter: (Asset asset) => [
            asset.name,
            asset.displayId,
          ],
          builder: (asset) => AssetListTile(
            asset,
            onTap: () {
              Get.defaultDialog(
                title: 'Deposit',
                content: Container(
                  child: Column(
                    children: [
                      Visibility(
                        visible: asset.swiftDeposit,
                        child: ListTile(
                          title: Text('Bank transfer'),
                          onTap: () => Get.back(),
                        ),
                      ),
                      Visibility(
                        visible: asset.cardDeposit,
                        child: ListTile(
                          title: Text('Credit card'),
                          onTap: () => Get.back(),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      );

  withdraw() => showSearch(
        context: Get.overlayContext,
        delegate: SearchPage<Asset>(
          showItemsOnEmpty: true,
          items: AssetsController.con.assetList,
          searchLabel: 'select_asset'.tr,
          filter: (asset) => [
            asset.name,
            asset.displayId,
          ],
          builder: (asset) => AssetListTile(asset),
        ),
      );
}
