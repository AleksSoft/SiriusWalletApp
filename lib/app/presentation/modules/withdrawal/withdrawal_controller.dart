import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/repository/wallet_repository.dart';
import 'package:antares_wallet/app/domain/repositories/session_repository.dart';
import 'package:antares_wallet/app/presentation/modules/portfolio/assets/assets_controller.dart';
import 'package:antares_wallet/app/presentation/modules/portfolio/portfolio_controller.dart';
import 'package:antares_wallet/app/presentation/widgets/asset_list_tile.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_page/search_page.dart';

import 'result_withdrawal_page.dart';

class WithdrawalController extends GetxController {
  static WithdrawalController get con => Get.find();

  final ISessionRepository sessionRepo;
  final PortfolioController portfolioCon;
  WithdrawalController({
    @required this.sessionRepo,
    @required this.portfolioCon,
  });

  final addressObs = ''.obs;
  final extAddressObs = ''.obs;

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

  var withdrawalCryptoInfo = WithdrawalCryptoInfoResponse_Body();

  Asset selectedAsset = Asset();

  Balance selectedAssetBalance = Balance();

  WithdrawalMode _mode;

  double fee = 0.0;

  bool isAddressValid = true;
  bool isExtAddressValid = true;

  String _countryCode = '';

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    if (_loading != value) {
      _loading = value;
      update();
    }
  }

  String get amountWithFeeFormatted => Formatter.currency(
        (amountWithFee - fee) == 0
            ? amountController.text
            : amountWithFee.toString(),
        prefix: selectedAsset?.displayId,
        fractionDigits: selectedAsset?.accuracy ?? 2,
      );

  double get amountWithFee =>
      (double.tryParse(amountController.text) ?? 0) + fee;

  double get availableBalance =>
      double.tryParse(selectedAssetBalance.available) ?? 0.0;

  bool get isAmountWithFeeAvailable => availableBalance >= amountWithFee;

  bool get proceedAllowed {
    bool isAmountZero = (double.tryParse(amountController.text) ?? 0) == 0;
    bool addressEmpty = addressController.text.isNullOrBlank;
    if (_mode == WithdrawalMode.blockchain) {
      bool checkExt = withdrawalCryptoInfo.addressExtensionMandatory
          ? isExtAddressValid
          : true;
      return !isAmountZero &&
          !addressEmpty &&
          isAmountWithFeeAvailable &&
          isAddressValid &&
          checkExt;
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

  @override
  void onInit() {
    debounce(
      addressObs,
      (_) => validateAddress(),
      time: const Duration(milliseconds: 500),
    );
    debounce(
      extAddressObs,
      (_) => validateExtAddress(),
      time: const Duration(milliseconds: 500),
    );
    super.onInit();
  }

  Future<void> getWithdrawalCryptoInfo() async =>
      withdrawalCryptoInfo = await WalletRepository.getWithdrawalCryptoInfo(
        selectedAsset?.id,
      );

  Future<void> getWithdrawalSwiftInfo() async {
    var info = await WalletRepository.getSwiftCashoutInfo();
    swiftController.text = info.bic;
    bankController.text = info.bankName;
    ibanController.text = info.accNumber;
    addressController.text = info.accHolderAddress;
    cityController.text = info.accHolderCity;
    zipController.text = info.accHolderZipCode;
  }

  Future<void> getAssetBalance() async {
    if (portfolioCon.balances.isEmpty) {
      await portfolioCon.getBalances();
    }
    selectedAssetBalance =
        portfolioCon.assetBalance(selectedAsset?.id) ?? Balance();
  }

  Future<void> getCountry() async {
    if (_countryCode.isNullOrBlank) {
      final response = await sessionRepo.getCountryPhoneCodes();
      response.fold(
        (error) => AppLog.loggerNoStack.i(error.toProto3Json()),
        (result) => _countryCode = result.current,
      );
    }
  }

  Future<void> validateAddress() async {
    isAddressValid = await WalletRepository.isCryptoAddressValid(
      assetId: selectedAsset?.id,
      address: addressController.text,
    );
    update();
  }

  Future<void> validateExtAddress() async {
    isExtAddressValid = await WalletRepository.isCryptoAddressValid(
      assetId: selectedAsset?.id,
      addressExtension: extController.text,
    );
    update();
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
    var result = await WalletRepository.swiftCashout(
      accHolderAddress: this.addressController.text,
      accHolderCity: this.cityController.text,
      accHolderCountry: this._countryCode,
      accHolderZipCode: this.zipController.text,
      accName: this.fullNameController.text,
      accNumber: this.ibanController.text,
      amount: this.amountController.text,
      asset: this.selectedAsset.id,
      bankName: this.bankController.text,
      bic: this.swiftController.text,
    );
    String transferId = result?.transferId;
    Get.off(
      ResultWithdrawalPage(success: !transferId.isNullOrBlank),
      fullscreenDialog: true,
    );
    loading = false;
  }

  okResult() => Get.until((route) => route.isFirst);

  void checkSwiftCashoutFee() {
    if (this.swiftController.text.length >= 8) {
      String countryCode = this.swiftController.text.substring(4, 6);
      WalletRepository.getSwiftCashoutFee(
        assetId: this.selectedAsset.id,
        countryCode: countryCode,
      ).then((value) {
        this.fee = double.tryParse(value?.size ?? '0.0') ?? 0.0;
        update();
      });
    }
  }

  tryAgainResult() {
    Get.until((route) => route.isFirst);
    _initialize(selectedAsset, _mode, false);
  }

  search() => showSearch(
        context: Get.context,
        delegate: SearchPage<Asset>(
          showItemsOnEmpty: true,
          items: AssetsController.con.assetList
              .where((a) => a.swiftWithdrawal || a.blockchainWithdrawal)
              .toList(),
          searchLabel: 'select_asset'.tr,
          filter: (asset) => [
            asset.name,
            asset.displayId,
          ],
          builder: (asset) => AssetListTile(
            asset,
            onTap: () => tryWithdraw(asset),
          ),
        ),
      );

  void tryWithdraw(Asset asset, {bool closeOverlays = true}) {
    if (asset.swiftWithdrawal && asset.blockchainWithdrawal) {
      _selectDialog(asset, closeOverlays);
    } else if (asset.swiftWithdrawal) {
      _initialize(asset, WithdrawalMode.swift, closeOverlays);
    } else if (asset.blockchainWithdrawal) {
      _initialize(asset, WithdrawalMode.blockchain, closeOverlays);
    }
  }

  void _initialize(Asset asset, WithdrawalMode mode, bool closeOverlays) {
    if (closeOverlays) Get.back(closeOverlays: true);
    selectedAsset = asset;
    _mode = mode;
    _clearAllFields();
    _initWithMode();
  }

  Future<void> _initWithMode() async {
    switch (_mode) {
      case WithdrawalMode.swift:
        Get.toNamed(Routes.WITHDRAW_SWIFT);
        loading = true;
        await getAssetBalance();
        await getCountry();
        await getWithdrawalSwiftInfo();
        loading = false;
        break;
      case WithdrawalMode.blockchain:
        Get.toNamed(Routes.WITHDRAW_BLOCKCHAIN);
        loading = true;
        await getAssetBalance();
        await getWithdrawalCryptoInfo();
        loading = false;
        break;
      default:
        break;
    }
  }

  void _selectDialog(Asset asset, bool closeOverlays) => Get.defaultDialog(
        title: 'Deposit',
        radius: AppSizes.small,
        content: Container(
          child: Column(
            children: [
              Visibility(
                visible: asset.swiftWithdrawal,
                child: ListTile(
                  title: Text('Bank transfer'),
                  onTap: () => _initialize(
                    asset,
                    WithdrawalMode.swift,
                    closeOverlays,
                  ),
                ),
              ),
              Visibility(
                visible: asset.blockchainWithdrawal,
                child: ListTile(
                  title: Text('Blockchain'),
                  onTap: () => _initialize(
                    asset,
                    WithdrawalMode.blockchain,
                    closeOverlays,
                  ),
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