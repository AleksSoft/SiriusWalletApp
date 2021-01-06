import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/ui/pages/select_asset/select_asset_controller.dart';
import 'package:antares_wallet/ui/pages/select_asset/select_asset_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:package_info/package_info.dart';

class SettingsController extends GetxController {
  static SettingsController get con => Get.find();

  final _storage = GetStorage();

  List<String> _confirmKeyWords = [];

  List<String> _confirmKeyVariants = [];

  Asset get baseAsset => Get.find<AssetsController>().baseAsset;

  List<String> get confirmKeyWords => _confirmKeyWords;

  List<String> get confirmKeyVariants => _confirmKeyVariants;

  bool _signOrders = false;
  bool get signOrders => this._signOrders;

  bool _loading = false;
  bool get loading => this._loading;
  set loading(bool value) {
    if (this._loading != value) {
      this._loading = value;
      update();
    }
  }

  @override
  void onInit() {
    _signOrders = _storage.read(AppStorageKeys.signOrders) ?? false;
    super.onInit();
  }

  bool get wordsMatch {
    // final words = _repository.settings.privateKey.split(' ');
    // return const ListEquality().equals(
    //   words.sublist(0, _confirmKeyWords.length),
    //   _confirmKeyWords,
    // );
    return true;
  }

  bool get phraseComplete => wordsMatch && _confirmKeyWords.length == 12;

  Future<void> updateBaseAsset() async {
    loading = true;
    final asset = await Get.toNamed(
      SelectAssetPage.route,
      arguments: SelectAssetArgs(
        title: 'select_asset'.tr,
        selectedAsset: baseAsset,
        onlyBase: true,
      ),
    );
    await Get.find<AssetsController>().setBaseAsset(asset.id);
    loading = false;
  }

  void refreshConfirmKeyVariants() {
    // _confirmKeyWords.clear();
    // _confirmKeyVariants = _repository.settings.privateKey.split(' ')
    //   ..addAll(_repository.randMnemonicList())
    //   ..shuffle();
  }

  void updateConfirmKeyWords(List<String> updatedWords) {
    // _confirmKeyWords = updatedWords;
    // update();
    // if (!wordsMatch) {
    //   Future.delayed(Duration(milliseconds: 300)).whenComplete(() {
    //     refreshConfirmKeyVariants();
    //     update();
    //   });
    // }
  }

  void backupPrivateKey() {
    // Get.toNamed(BackUpCopyKeyPage.route);
  }

  Future<void> showAbout() async {
    PackageInfo info = await PackageInfo.fromPlatform();

    showAboutDialog(
      context: Get.overlayContext,
      applicationIcon: Image.asset(
        'assets/images/lykke_logo.png',
        height: AppSizes.extraLarge,
        width: AppSizes.extraLarge,
      ),
      applicationName: 'app_title'.tr,
      applicationVersion: info.version,
      applicationLegalese: 'copyright'.tr,
    );
  }

  bool toggleSignOrderWithPin(bool value) {
    if (_signOrders != value) {
      _storage.write(AppStorageKeys.signOrders, value);
      _signOrders = value;
      update();
    }
    return _signOrders;
  }
}
