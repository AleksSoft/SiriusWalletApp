import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  static LoginController get con => Get.find();
  final _storage = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  login() async {
    await Future.delayed(Duration(milliseconds: 500)).then((value) {
      Get.back();
      _storage.write(
        AppStorageKeys.token,
        '9459110ef8e94498b87807d00a9c947014e1c77192fc4b28aed5cd2ecf99f2e2',
      );
    });
  }
}
