import 'package:antares_wallet/app/core/common/common.dart';
import 'package:antares_wallet/app/core/error/app_error_handler.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/domain/repositories/disclaimers_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class DisclaimersController extends GetxController with AppErrorHandler {
  static DisclaimersController get con => Get.find();

  final IDisclaimersRepository disclaimersRepo;
  DisclaimersController({@required this.disclaimersRepo});

  final pageController = PageController();

  final disclaimers = <AssetDisclaimer>[].obs;

  final loading = false.obs;

  @override
  void onReady() {
    loading(true);
    disclaimersRepo
        .getAssetDisclaimers()
        .then((response) => response.fold(
              defaultError,
              (result) => disclaimers.assignAll(result),
            ))
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
    await disclaimersRepo.declineAssetDisclaimer(
      disclaimerId: disclaimers[pageController.page.toInt()].id,
    );
    loading(false);
    Get.back(result: false);
  }

  Future<void> approve() async {
    loading(true);

    disclaimersRepo
        .approveAssetDisclaimer(
          disclaimerId: disclaimers[pageController.page.toInt()].id,
        )
        .then((response) => response.fold(
              defaultError,
              (result) {
                if (result) {
                  _approveAgainOrSubmit();
                } else {
                  Get.snackbar(
                    null,
                    'Disclaimer approve failed',
                    colorText: AppColors.primary,
                    backgroundColor: AppColors.red,
                  );
                }
              },
            ))
        .whenComplete(() => loading(false));
  }

  void _approveAgainOrSubmit() {
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
