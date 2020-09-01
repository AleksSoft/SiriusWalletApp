import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/repositories/wallet_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/deposit/deposit_card_info_page.dart';
import 'package:antares_wallet/ui/widgets/asset_list_tile.dart';
import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_page/search_page.dart';

import 'assets_controller.dart';

enum DepositMode { swift, card, blockchain }

class DepositController extends GetxController {
  static DepositController get con => Get.find();

  var assetSwiftCreds = SwiftCredentialsResponse_SwiftCredentials();

  Asset selectedAsset = Asset();

  DepositMode _mode;

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
    update();
  }

  String _swiftAmountValue = '';
  String get swiftAmountValue => _swiftAmountValue;
  set swiftAmountValue(String value) {
    _swiftAmountValue = value;
    update();
  }

  void initialize(Asset asset, DepositMode mode) {
    selectedAsset = asset;
    _swiftAmountValue = '';
    _mode = mode;
    _initWithMode().then((value) => update());
  }

  Future<void> getSwiftCredentials() async {
    loading = true;
    assetSwiftCreds =
        await WalletRepository.getSwiftCredentials(selectedAsset?.id);
    loading = false;
  }

  Future<void> sendBankTransferRequest() async {
    loading = true;
    final response = await WalletRepository.sendBankTransferRequest(
      assetId: selectedAsset?.id,
      balanceChange: double.tryParse(swiftAmountValue ?? '0') ?? 0.0,
    );
    loading = false;
    if (response ?? false) {
      _showScnackbar('Email sent', AppColors.primary);
    } else {
      _showScnackbar('Failure performing request', AppColors.red);
    }
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
                  onTap: () {
                    Get.back(closeOverlays: true);
                    initialize(asset, DepositMode.swift);
                  },
                ),
              ),
              Visibility(
                visible: asset.cardDeposit,
                child: ListTile(
                  title: Text('Credit card'),
                  onTap: () {
                    Get.back(closeOverlays: true);
                    initialize(asset, DepositMode.card);
                  },
                ),
              ),
              Visibility(
                visible: asset.blockchainDeposit,
                child: ListTile(
                  title: Text('Blockchain'),
                  onTap: () {
                    Get.back(closeOverlays: true);
                    initialize(asset, DepositMode.blockchain);
                  },
                ),
              ),
            ],
          ),
        ),
      );

  copy(String value) => ClipboardManager.copyToClipBoard(value).then((result) {
        Get.rawSnackbar(message: 'msg_copied'.tr);
      });

  Future<void> _initWithMode() async {
    switch (_mode) {
      case DepositMode.swift:
        Get.to(DepositCardInfoPage());
        await getSwiftCredentials();
        break;
      default:
        break;
    }
  }

  _showScnackbar(String message, Color color, {String title}) => Get.snackbar(
        title,
        message ?? '',
        colorText: AppColors.dark,
        backgroundColor: color,
        snackPosition: SnackPosition.BOTTOM,
        boxShadows: [
          BoxShadow(
            color: AppColors.secondary.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
        margin: const EdgeInsets.only(
          left: AppSizes.large,
          right: AppSizes.large,
          bottom: AppSizes.extraLarge * 3,
        ),
      );
}
