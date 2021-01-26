import 'package:antares_wallet/app/core/common/common.dart';
import 'package:antares_wallet/app/core/routes/app_pages.dart';
import 'package:antares_wallet/app/data/data_sources/app_storage.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/domain/entities/select_asset_args.dart';
import 'package:antares_wallet/app/domain/repositories/push_repository.dart';
import 'package:antares_wallet/app/presentation/modules/portfolio/assets/assets_controller.dart';
import 'package:antares_wallet/app/presentation/modules/settings/widgets/choose_language_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info/package_info.dart';

class SettingsController extends GetxController {
  static SettingsController get con => Get.find();

  final AssetsController assetsCon;
  final IPushRepository pushRepo;
  final IAppStorage storage;
  SettingsController({
    @required this.assetsCon,
    @required this.pushRepo,
    @required this.storage,
  });

  final signOrders = false.obs;
  final isPushEnabled = false.obs;
  final loading = false.obs;

  @override
  void onInit() async {
    final isSignOrders = await storage.getBool(AppStorageKeys.signOrders);
    signOrders(isSignOrders);
    ever(signOrders, (value) async {
      await storage.setBool(AppStorageKeys.signOrders, value);
    });

    getPushSettings();

    super.onInit();
  }

  Asset get baseAsset => assetsCon.baseAsset;

  Map<String, Map<String, String>> get translations => Get.translations;

  Future<void> getPushSettings() async {
    loading(true);
    final response = await pushRepo.getPushSettings();
    response.fold(
      (error) {
        isPushEnabled(false);
        Get.snackbar(
          'Push settings loading failed: ${error.code}',
          error.message,
          colorText: AppColors.primary,
          backgroundColor: AppColors.red,
          snackPosition: SnackPosition.TOP,
        );
        loading(false);
      },
      (result) {
        isPushEnabled(result ?? false);
        loading(false);
      },
    );
  }

  Future<void> setPushSettings(bool enabled) async {
    final response = await pushRepo.setPushSettings(enabled: enabled);
    response.fold(
      (error) {
        isPushEnabled(false);
        Get.snackbar(
          'Push settings update failed: ${error.code}',
          error.message,
          colorText: AppColors.primary,
          backgroundColor: AppColors.red,
          snackPosition: SnackPosition.TOP,
        );
      },
      (result) {
        bool isSign = result ?? false;
        isPushEnabled(isSign);
        Get.snackbar(
          'Success!',
          'Push settings ${isSign ? 'enabled' : 'disabled'}',
          snackPosition: SnackPosition.TOP,
        );
      },
    );
  }

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

  void selectLanguage() => Get.bottomSheet(ChooseLanguageView());

  void updateLocale(String langCode) {
    if (Get.locale != Locale(langCode)) {
      Get.updateLocale(Locale(langCode));
    }
  }

  void togglePushEnabled(bool value) {
    if (isPushEnabled.value != value) {
      isPushEnabled(value);
      setPushSettings(value);
    }
  }
}
