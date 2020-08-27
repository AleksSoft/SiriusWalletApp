import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/repositories/disclaimers_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/disclaimer/disclaimer_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class DisclaimersController extends GetxController {
  static DisclaimersController get con => Get.find();

  final pageController = PageController();

  final _disclaimers = List<AssetDisclaimer>().obs;
  List<AssetDisclaimer> get disclaimers => this._disclaimers.value;
  set disclaimers(List<AssetDisclaimer> value) =>
      this._disclaimers.value = value;

  final _loading = false.obs;
  bool get loading => this._loading.value;
  set loading(bool value) => this._loading.value = value;

  Future<void> initPage(Future future) async {
    Get.to(
      DisclaimerPage(),
      fullscreenDialog: true,
      transition: Transition.downToUp,
    );
    loading = true;
    disclaimers = await DisclaimersRepository.getAssetDisclaimers();
    loading = false;
  }

  Future<void> decline() async {
    loading = true;
    await DisclaimersRepository.declineAssetDisclaimer(
      disclaimerId: disclaimers[pageController.page.toInt()].id,
    );
    Get.back();
    loading = false;
  }

  Future<void> approve() async {
    loading = true;
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
    loading = false;
  }

  _approveAgainOrSubmit() {
    int nextPage = pageController.page.toInt() + 1;
    if (nextPage >= disclaimers.length) {
      Get.back();
    } else {
      pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInCubic,
      );
    }
  }
}
