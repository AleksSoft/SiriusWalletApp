import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/widgets/asset_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_page/search_page.dart';

import 'assets_controller.dart';

enum WithdrawalMode { swift, blockchain }

class WithdrawalController extends GetxController {
  static WithdrawalController get con => Get.find();

  Asset selectedAsset = Asset();

  WithdrawalMode _mode;

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    if (_loading != value) {
      _loading = value;
      update();
    }
  }

  search() => showSearch(
        context: Get.context,
        delegate: SearchPage<Asset>(
          showItemsOnEmpty: true,
          items: AssetsController.con.assetList
              .where((a) => a.swiftWithdrawal || a.crosschainWithdrawal)
              .toList(),
          searchLabel: 'select_asset'.tr,
          filter: (asset) => [
            asset.name,
            asset.displayId,
          ],
          builder: (asset) => AssetListTile(
            asset,
            onTap: () {
              if (asset.swiftWithdrawal && asset.crosschainWithdrawal) {
                _selectDialog(asset);
              } else if (asset.swiftWithdrawal) {
                Get.back(closeOverlays: true);
                _initialize(asset, WithdrawalMode.swift);
              } else if (asset.crosschainWithdrawal) {
                Get.back(closeOverlays: true);
                _initialize(asset, WithdrawalMode.blockchain);
              }
            },
          ),
        ),
      );

  void _initialize(Asset asset, WithdrawalMode mode) {
    selectedAsset = asset;
    _mode = mode;
    _clearAllFields();
    _initWithMode();
  }

  Future<void> _initWithMode() async {
    switch (_mode) {
      case WithdrawalMode.swift:
        // Get.to(SwiftDepositPage());
        // await getSwiftCredentials();
        break;
      case WithdrawalMode.blockchain:
        // Get.to(BlockchainDepositPage());
        // await getCryptoDepositAddress();
        break;
      default:
        break;
    }
  }

  void _selectDialog(Asset asset) => Get.defaultDialog(
        title: 'Deposit',
        radius: AppSizes.small,
        content: Container(
          child: Column(
            children: [
              Visibility(
                visible: asset.swiftWithdrawal,
                child: ListTile(
                  title: Text('Bank transfer'),
                  onTap: () {
                    Get.back(closeOverlays: true);
                    _initialize(asset, WithdrawalMode.swift);
                  },
                ),
              ),
              Visibility(
                visible: asset.crosschainWithdrawal,
                child: ListTile(
                  title: Text('Blockchain'),
                  onTap: () {
                    Get.back(closeOverlays: true);
                    _initialize(asset, WithdrawalMode.blockchain);
                  },
                ),
              ),
            ],
          ),
        ),
      );

  void _clearAllFields() {}
}
