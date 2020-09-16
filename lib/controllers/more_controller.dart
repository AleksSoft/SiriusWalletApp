import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/ui/pages/start/start_page.dart';
import 'package:cross_local_storage/cross_local_storage.dart';
import 'package:get/get.dart';

class MoreController extends GetxController {
  static MoreController get con => Get.find();

  signOut() {
    Get.defaultDialog(
      title: 'logout'.tr,
      middleText: 'Are you sure to logout?',
      buttonColor: AppColors.dark,
      confirmTextColor: AppColors.primary,
      onConfirm: () {
        Get.find<LocalStorageInterface>().clear().whenComplete(
              () => Get.offAllNamed(StartPage.route),
            );
      },
    );
  }
}
