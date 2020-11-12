import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/ui/pages/start/start_page.dart';
import 'package:cross_local_storage/cross_local_storage.dart';
import 'package:get/get.dart';
import 'package:share/share.dart';

class MoreController extends GetxController {
  static MoreController get con => Get.find();

  final _storage = Get.find<LocalStorageInterface>();

  void signOut() {
    Get.defaultDialog(
      title: 'logout'.tr,
      middleText: 'Are you sure to logout?',
      buttonColor: AppColors.dark,
      confirmTextColor: AppColors.primary,
      onConfirm: () {
        _storage.clear().whenComplete(
              () => Get.offAllNamed(StartPage.route),
            );
      },
    );
  }

  void shareToken() =>
      Share.share(_storage.getString(AppStorageKeys.token) ?? '');
}
