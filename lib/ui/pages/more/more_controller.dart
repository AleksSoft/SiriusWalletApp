import 'package:antares_wallet/ui/pages/initial/initial_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MoreController extends GetxController {
  static MoreController get con => Get.find();
  final _storage = GetStorage();

  signOut() {
    Get.defaultDialog(
      title: 'logout'.tr,
      middleText: 'Are you shure to log out>?',
      onConfirm: () {
        _storage.erase();
        Get.offAllNamed(InitialPage.route);
      },
    );
  }
}
