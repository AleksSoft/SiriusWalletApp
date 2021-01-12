import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/repository/disclaimers_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class DisclaimersController extends GetxController {
  static DisclaimersController get con => Get.find();

  final pageController = PageController();

  final disclaimers = <AssetDisclaimer>[].obs;

  final loading = false.obs;

  @override
  void onReady() {
    loading(true);
    DisclaimersRepository.getAssetDisclaimers()
        .then(disclaimers)
        .whenComplete(() => loading(false));
    super.onReady();
  }

  @override
  void onClose() {
    loading(false);
    super.onClose();
  }

  Future<void> decline() async {
    loading(true);
    await DisclaimersRepository.declineAssetDisclaimer(
      disclaimerId: disclaimers[pageController.page.toInt()].id,
    );
    loading(false);
    Get.back(result: false);
  }

  Future<void> approve() async {
    loading(true);
    if (await DisclaimersRepository.approveAssetDisclaimer(
      disclaimerId: disclaimers[pageController.page.toInt()].id,
    )) {
      _approveAgainOrSubmit();
    } else {
      Get.snackbar(
        null,
        'Disclaimer approve failed',
        colorText: AppColors.primary,
        backgroundColor: AppColors.red,
      );
    }
    loading(false);
  }

  _approveAgainOrSubmit() {
    int nextPage = pageController.page.toInt() + 1;
    if (nextPage >= disclaimers.length) {
      Get.back(result: true);
    } else {
      pageController.animateToPage(
        nextPage,
        duration: Get.defaultTransitionDuration,
        curve: Curves.easeInCubic,
      );
    }
  }
}
