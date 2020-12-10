import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/utils/utils.dart';
import 'package:antares_wallet/controllers/app_controller.dart';
import 'package:antares_wallet/repositories/profile_repository.dart';
import 'package:antares_wallet/repositories/settings_repository.dart';
import 'package:antares_wallet/repositories/wallet_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/banking/deposit/blockchain_deposit_page.dart';
import 'package:antares_wallet/ui/pages/banking/deposit/card_deposit_page.dart';
import 'package:antares_wallet/ui/pages/banking/deposit/card_deposit_web_page.dart';
import 'package:antares_wallet/ui/pages/banking/deposit/swift_deposit_page.dart';
import 'package:antares_wallet/ui/pages/more/profile/upgrade/upgrade_account_main.dart';
import 'package:antares_wallet/ui/widgets/asset_list_tile.dart';
import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_page/search_page.dart';
import 'package:share/share.dart';

import 'assets_controller.dart';

enum DepositMode { swift, card, blockchain }

class DepositController extends GetxController {
  static DepositController get con => Get.find();

  final _assetsCon = AssetsController.con;

  var assetSwiftCreds = SwiftCredentialsResponse_SwiftCredentials();
  var depositCryptoAddress =
      CryptoDepositAddressResponse_CryptoDepositAddress();

  Asset selectedAsset = Asset();

  DepositMode _mode;

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    if (_loading != value) {
      _loading = value;
      update();
    }
  }

  String _amountValue = '';
  String get amountValue => _amountValue;
  set amountValue(String value) {
    if (_amountValue != value) {
      _amountValue = value;
      update();
    }
  }

  String get amountWithFee {
    double amount = double.tryParse(amountValue) ?? 0;
    return Formatter.currency(
      amount == 0 ? amountValue : (amount + fee).toString(),
      prefix: selectedAsset?.displayId,
      fractionDigits: selectedAsset?.accuracy,
    );
  }

  double fee = 0.0;

  void initialize(Asset asset, DepositMode mode) {
    selectedAsset = asset;
    _mode = mode;
    _clearAllFields();
    _initWithMode();
  }

  Future<void> getSwiftCredentials() async {
    loading = true;
    var result = await WalletRepository.getSwiftCredentials(
      selectedAsset?.id,
    );
    if (result == null) {
      _showSnackbar('Error loading data', true);
    } else {
      assetSwiftCreds = result;
    }
    loading = false;
  }

  Future<void> getCardsFee() async {
    loading = true;
    var settings = await SettingsRepository.getAppSettings();
    fee = settings?.feeSettings?.bankCardsFeeSizePercentage ?? 0.0;
    loading = false;
  }

  Future<void> getCryptoDepositAddress() async {
    loading = true;
    if (await tierValid()) {
      depositCryptoAddress = await WalletRepository.getCryptoDepositAddress(
        selectedAsset?.id,
      );
      Get.defaultDialog(
        title: 'Attention!',
        middleText:
            'Please make sure that destination address and the tag are correct. If details are incorrect, funds will be lost.',
        buttonColor: AppColors.dark,
        confirmTextColor: AppColors.primary,
        onConfirm: () {
          Get.back();
        },
      );
    } else {
      AppController.con.pageIndexObs.value = 4;
      Get.offNamed(UpgradeAccountMainPage.route);
    }
    loading = false;
  }

  Future<bool> tierValid() async {
    var tierObj = await ProfileRepository.getTierInfo();
    return !tierObj.currentTier.tier.isNullOrBlank &&
        tierObj.currentTier.tier != 'Beginner';
  }

  Future<void> sendBankTransferRequest() async {
    loading = true;
    final response = await WalletRepository.sendBankTransferRequest(
      assetId: selectedAsset?.id,
      balanceChange: double.tryParse(amountValue ?? '0') ?? 0.0,
    );
    loading = false;
    if (response ?? false) {
      _showSnackbar('Email sent', false);
    } else {
      _showSnackbar('Failure performing request', true);
    }
  }

  Future<void> proceedCardDeposit() async {
    var cardPaymentUrl = await WalletRepository.getBankCardPaymentUrl(
      amount: amountValue,
      assetId: selectedAsset.id,
    );
    if (cardPaymentUrl != null) {
      Get.off(CardDepositWebPage(cardPaymentUrl?.url));
    } else {
      _showSnackbar('Failure performing request', true);
    }
  }

  void search() => showSearch(
        context: Get.context,
        delegate: SearchPage<Asset>(
          showItemsOnEmpty: true,
          items: _assetsCon.assetList
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
            onTap: () {
              if (asset.cardDeposit &&
                  !asset.swiftDeposit &&
                  !asset.blockchainDeposit) {
                Get.back(closeOverlays: true);
                initialize(asset, DepositMode.card);
              } else if (!asset.cardDeposit &&
                  asset.swiftDeposit &&
                  !asset.blockchainDeposit) {
                Get.back(closeOverlays: true);
                initialize(asset, DepositMode.swift);
              } else if (!asset.cardDeposit &&
                  !asset.swiftDeposit &&
                  asset.blockchainDeposit) {
                Get.back(closeOverlays: true);
                initialize(asset, DepositMode.blockchain);
              } else {
                selectDialog(asset);
              }
            },
          ),
        ),
      );

  void selectDialog(Asset asset) => Get.defaultDialog(
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

  void copy(String value) =>
      ClipboardManager.copyToClipBoard(value).then((result) {
        Get.rawSnackbar(message: 'msg_copied'.tr);
      });

  void shareBlockchain() async {
    final RenderBox box = Get.context.findRenderObject();
    String forSharing = depositCryptoAddress?.address;
    if (!forSharing.isNullOrBlank) {
      await Share.share(
        forSharing,
        subject: forSharing,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
      );
    }
  }

  Future<void> _initWithMode() async {
    switch (_mode) {
      case DepositMode.swift:
        Get.to(SwiftDepositPage());
        await getSwiftCredentials();
        break;
      case DepositMode.card:
        // var cardPaymentDetails = await WalletRepository.getBankCardPaymentDetails();
        Get.to(CardDepositPage());
        await getCardsFee();
        break;
      case DepositMode.blockchain:
        Get.to(BlockchainDepositPage());
        await getCryptoDepositAddress();
        break;
      default:
        break;
    }
  }

  void _clearAllFields() {
    assetSwiftCreds = SwiftCredentialsResponse_SwiftCredentials();
    depositCryptoAddress = CryptoDepositAddressResponse_CryptoDepositAddress();
    fee = 0.0;
    _amountValue = '';
  }

  _showSnackbar(String message, bool isError, {String title}) => Get.snackbar(
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
