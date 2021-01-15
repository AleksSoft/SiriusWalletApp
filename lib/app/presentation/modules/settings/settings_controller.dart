import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/domain/entities/select_asset_args.dart';
import 'package:antares_wallet/app/presentation/modules/settings/widgets/choose_language_view.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:package_info/package_info.dart';

class SettingsController extends GetxController {
  static SettingsController get con => Get.find();

  final AssetsController assetsCon;
  SettingsController({@required this.assetsCon});

  final _signOrdersBox = false.val(AppStorageKeys.signOrders);

  final _signOrdersObs = false.obs;
  final loading = false.obs;
  @override
  void onInit() {
    _signOrdersObs.value = _signOrdersBox.val;
    super.onInit();
  }

  Asset get baseAsset => assetsCon.baseAsset;

  bool get signOrders => _signOrdersObs.value;

  Map<String, Map<String, String>> get translations => Get.translations;

  void updateBaseAsset() {
    loading(true);
    Get.toNamed(
      Routes.SELECT_ASSET,
      arguments: SelectAssetArgs(
        title: 'select_asset'.tr,
        selectedAsset: baseAsset,
        onlyBase: true,
      ),
    ).then((asset) => assetsCon.setBaseAsset(asset.id).whenComplete(
          () => loading(false),
        ));
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

  bool toggleSignOrderWithPin(bool value) =>
      _signOrdersBox.val = _signOrdersObs.value = value;

  void selectLanguage() => Get.bottomSheet(ChooseLanguageView());

  void updateLocale(String langCode) {
    if (Get.locale != Locale(langCode)) {
      Get.updateLocale(Locale(langCode));
    }
  }
}
