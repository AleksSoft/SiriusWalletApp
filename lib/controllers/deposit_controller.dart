import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/repositories/wallet_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/widgets/asset_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_page/search_page.dart';

import 'assets_controller.dart';

class DepositController extends GetxController {
  static DepositController get con => Get.find();

  var assetSwiftCreds = SwiftCredentialsResponse_SwiftCredentials();

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
    update();
  }

  Future<void> getSwiftCredentials(String assetId) async {
    loading = true;
    assetSwiftCreds = await WalletRepository.getSwiftCredentials(assetId);
    loading = false;
  }

  search() => showSearch(
        context: Get.overlayContext,
        delegate: SearchPage<Asset>(
          showItemsOnEmpty: true,
          items: AssetsController.con.assetList
              .where(
                  (a) => a.cardDeposit || a.swiftDeposit || a.blockchainDeposit)
              .toList(),
          searchLabel: 'select_asset'.tr,
          filter: (Asset asset) => [
            asset.name,
            asset.displayId,
          ],
          builder: (asset) => AssetListTile(
            asset,
            onTap: () => selectDialog(asset),
          ),
        ),
      );

  selectDialog(Asset asset) => Get.defaultDialog(
        title: 'Deposit',
        radius: AppSizes.small,
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
              Visibility(
                visible: asset.blockchainDeposit,
                child: ListTile(
                  title: Text('Blockchain'),
                  onTap: () => Get.back(),
                ),
              ),
            ],
          ),
        ),
      );
}
