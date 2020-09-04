import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/controllers/portfolio_controller.dart';
import 'package:antares_wallet/repositories/session_repository.dart';
import 'package:antares_wallet/repositories/wallet_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/banking/withdrawal/blockchain_withdrawal_page.dart';
import 'package:antares_wallet/ui/pages/banking/withdrawal/result_withdrawal_page.dart';
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
  final wiredAmountController = TextEditingController();
  final addressController = TextEditingController();
  final extController = TextEditingController();
  final swiftController = TextEditingController();
  final bankController = TextEditingController();
  final ibanController = TextEditingController();
  final fullNameController = TextEditingController();
  final cityController = TextEditingController();
  final zipController = TextEditingController();

  var withdrawalCryptoInfo =
      WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo();

  Asset selectedAsset = Asset();

  Balance selectedAssetBalance = Balance();

  WithdrawalMode _mode;

  String _countryCode = '';

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
    bool isAmountZero = (double.tryParse(amountController.text) ?? 0) == 0;
    bool addressEmpty = addressController.text.isNullOrBlank;
    if (_mode == WithdrawalMode.blockchain) {
      return !isAmountZero && !addressEmpty;
    } else {
      bool swiftEmpty = swiftController.text.isNullOrBlank;
      bool bankEmpty = bankController.text.isNullOrBlank;
      bool ibanEmpty = ibanController.text.isNullOrBlank;
      bool fullNameEmpty = fullNameController.text.isNullOrBlank;
      bool cityEmpty = cityController.text.isNullOrBlank;
      bool zipEmpty = zipController.text.isNullOrBlank;
      return !isAmountZero &&
          !addressEmpty &&
          !swiftEmpty &&
          !bankEmpty &&
          !ibanEmpty &&
          !fullNameEmpty &&
          !cityEmpty &&
          !zipEmpty;
    }
  }

  Future<void> getWithdrawalCryptoInfo() async {
    withdrawalCryptoInfo = await WalletRepository.getWithdrawalCryptoInfo(
      selectedAsset?.id,
    );
    print('----WithdrawalCryptoInfo ${withdrawalCryptoInfo.toProto3Json()}');
  }

  Future<void> getAssetBalance() async {
    if (_portfolioCon.balances.isEmpty) {
      await _portfolioCon.getBalances();
    }
    selectedAssetBalance =
        _portfolioCon.assetBalance(selectedAsset?.id) ?? Balance();
  }

  Future<void> getCountry() async {
    if (_countryCode.isNullOrBlank) {
      _countryCode = (await SessionRepository.getCountryPhoneCodes()).current;
    }
  }

  Future<void> getSwiftFee() async {
    String feeSize = (await WalletRepository.getSwiftCashoutFee(
      assetId: selectedAsset?.id,
      countryCode: _countryCode,
    ))
        .size;
    fee = double.tryParse(feeSize ?? '0') ?? 0.0;
  }

  Future<void> confirmCryptoWithdrawal() async {
    loading = true;
    bool success = await WalletRepository.cryptoCashout(
      assetId: selectedAsset?.id,
      volume: amountController.text,
      destinationAddress: addressController.text,
      destinationAddressExtension:
          withdrawalCryptoInfo.addressExtensionMandatory
              ? extController.text
              : '',
    );
    Get.off(ResultWithdrawalPage(success: success), fullscreenDialog: true);
    loading = false;
  }

  Future<void> confirmSwiftWithdrawal() async {
    loading = true;
    loading = false;
  }

  okResult() => Get.until((route) => route.isFirst);

  tryAgainResult() {
    Get.until((route) => route.isFirst);
    _initialize(selectedAsset, _mode);
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
        loading = true;
        await getAssetBalance();
        await getCountry();
        await getSwiftFee();
        await getAssetBalance();
        loading = false;
        break;
      case WithdrawalMode.blockchain:
        Get.to(BlockchainWithdrawalPage());
        loading = true;
        await getAssetBalance();
        await getWithdrawalCryptoInfo();
        loading = false;
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
    wiredAmountController?.clear();
    addressController?.clear();
    extController?.clear();
    bankController?.clear();
    cityController?.clear();
    fullNameController?.clear();
    ibanController?.clear();
    swiftController?.clear();
    zipController?.clear();
    fee = 0.0;
    _countryCode = '';
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
