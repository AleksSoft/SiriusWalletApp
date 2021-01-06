import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:antares_wallet/common/common.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:meta/meta.dart';

class SplashController extends GetxController {
  static SplashController get con => Get.find();

  SplashController({@required this.storage});
  final GetStorage storage;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(
      Duration(seconds: 1),
      () => this.storage.hasData(AppStorageKeys.token)
          ? Get.offNamed(Routes.ROOT)
          : Get.offNamed(Routes.START),
    );
  }
}
