import 'package:antares_wallet/ui/pages/start/start_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MoreController extends GetxController {
  static MoreController get con => Get.find();

  signOut() {
    Get.defaultDialog(
      title: 'logout'.tr,
      middleText: 'Are you shure to logout?',
      onConfirm: () {
        GetStorage().erase().then(
              (value) => Get.offAllNamed(StartPage.route),
            );
      },
    );
  }
}
