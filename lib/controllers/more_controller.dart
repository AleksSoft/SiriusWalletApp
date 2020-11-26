import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/ui/pages/start/start_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:share/share.dart';

class MoreController extends GetxController {
  static MoreController get con => Get.find();

  final _storage = GetStorage();

  void signOut() {
    Get.defaultDialog(
      title: 'logout'.tr,
      middleText: 'Are you sure to logout?',
      buttonColor: AppColors.dark,
      confirmTextColor: AppColors.primary,
      onConfirm: () {
        _storage.erase().whenComplete(
              () => Get.offAllNamed(StartPage.route),
            );
      },
    );
  }

  void shareToken() => Share.share(_storage.read(AppStorageKeys.token) ?? '');
}
