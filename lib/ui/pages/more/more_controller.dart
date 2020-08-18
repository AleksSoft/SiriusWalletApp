import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/ui/pages/start/start_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MoreController extends GetxController {
  static MoreController get con => Get.find();

  signOut() {
    Get.defaultDialog(
      title: 'logout'.tr,
      middleText: 'Are you sure to logout?',
      buttonColor: AppColors.dark,
      confirmTextColor: AppColors.primary,
      onConfirm: () {
        GetStorage().erase().whenComplete(
              () => Get.offAllNamed(StartPage.route),
            );
      },
    );
  }
}
