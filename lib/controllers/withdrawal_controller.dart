import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/controllers/portfolio_controller.dart';
import 'package:antares_wallet/repositories/wallet_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/banking/withdrawal/blockchain_withdrawal_page.dart';
import 'package:antares_wallet/ui/pages/banking/withdrawal/swift_withdrawal_page.dart';
import 'package:antares_wallet/ui/widgets/asset_list_tile.dart';
import 'package:antares_wallet/utils/formatter.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_page/search_page.dart';

import 'assets_controller.dart';

enum WithdrawalMode { swift, blockchain }

class WithdrawalController extends GetxController {
  static WithdrawalController get con => Get.find();

  final _portfolioCon = PortfolioController.con;

  final amountController = TextEditingController();
  final addressController = TextEditingController();
  final extController = TextEditingController();

  var withdrawalCryptoInfo =
      WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo();

  Asset selectedAsset = Asset();

  Balance selectedAssetBalance = Balance();

  WithdrawalMode _mode;

  double fee = 0.0;

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    if (_loading != value) {
      _loading = value;
      update();
    }
  }

  String get amountWithFee {
    double amount = double.tryParse(amountController.text) ?? 0;
    return Formatter.currency(
      amount == 0 ? amountController.text : (amount + fee).toString(),
      symbol: selectedAsset?.displayId,
      maxDecimal: selectedAsset?.accuracy ?? 2,
    );
  }

  bool get proceedAllowed {
    if (_mode == WithdrawalMode.blockchain) {
      bool isAmountZero = (double.tryParse(amountController.text) ?? 0) == 0;
      bool addressEmpty = addressController.text.isNullOrBlank;
      return !isAmountZero && !addressEmpty;
    } else {
      return false;
    }
  }

  Future<void> getWithdrawalCryptoInfo() async {
    loading = true;
    withdrawalCryptoInfo = await WalletRepository.getWithdrawalCryptoInfo(
      selectedAsset?.id,
    );
    print('----WithdrawalCryptoInfo ${withdrawalCryptoInfo.toProto3Json()}');
    loading = false;
  }

  Future<void> getAssetBalance() async {
    loading = true;
    if (_portfolioCon.balances.isEmpty) {
      await _portfolioCon.getBalances();
      selectedAssetBalance =
          _portfolioCon.assetBalance(selectedAsset?.id) ?? Balance();
    }
    loading = false;
  }

  Future<void> confirmWithdrawal() async {
    loading = true;
    await WalletRepository.cryptoCashout(
      assetId: selectedAsset?.id,
      volume: amountController.text,
      destinationAddress: addressController.text,
      destinationAddressExtension:
          withdrawalCryptoInfo.addressExtensionMandatory
              ? extController.text
              : '',
    );
    loading = false;
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
        Get.to(SwiftWithdrawalPage());
        // await getSwiftCredentials();
        break;
      case WithdrawalMode.blockchain:
        Get.to(BlockchainWithdrawalPage());
        await getAssetBalance();
        await getWithdrawalCryptoInfo();
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

  void _clearAllFields() {
    withdrawalCryptoInfo?.clear();
    amountController?.clear();
    addressController?.clear();
    extController?.clear();
    _loading = false;
  }

  Future<String> getQrCodeValue() async {
    var result = await BarcodeScanner.scan();
    if (result.type == ResultType.Barcode) {
      return result.rawContent;
    } else {
      _showSnackbar('Scanning failed', false);
      return '';
    }
  }

  void _showSnackbar(String message, bool isError, {String title}) =>
      Get.snackbar(
        title,
        message ?? '',
        colorText: isError ? AppColors.primary : AppColors.dark,
        backgroundColor: isError ? AppColors.red : AppColors.primary,
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
