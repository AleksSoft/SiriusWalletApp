import 'package:antares_wallet/app/data/provider/local_auth_provider.dart';
import 'package:antares_wallet/app/data/repository/local_auth_repository.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'local_auth_controller.dart';

class LocalAuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ILocalAuthProvider>(() => LocalAuthProvider());
    Get.lazyPut<ILocalAuthRepository>(
        () => LocalAuthRepository(provider: Get.find()));
    Get.lazyPut(() =>
        LocalAuthController(repository: Get.find(), storage: GetStorage()));
  }
}
