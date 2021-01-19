import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/services/session_service.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreController extends GetxController {
  static MoreController get con => Get.find();

  final AppConfig appConfig;
  final SessionService sessionService;
  MoreController({@required this.appConfig, @required this.sessionService});

  bool get isDevSettingsVisible => !appConfig.isProd;

  void openSettings() => Get.toNamed(Routes.SETTINGS);

  void openProfile() => Get.toNamed(Routes.PROFILE);

  void openSupport() => Get.toNamed(Routes.SUPPORT);

  void launchTAC() => launch('https://lykke.com/terms-and-conditions/');

  void signOut() => Get.defaultDialog(
        title: 'logout'.tr,
        middleText: 'Are you sure to logout?',
        buttonColor: AppColors.dark,
        confirmTextColor: AppColors.primary,
        onConfirm: () => sessionService.completeLogout(),
      );

  void openDevSettings() => Get.toNamed(Routes.DEV_SETTINGS);
}
