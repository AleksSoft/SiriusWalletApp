import 'package:antares_wallet/app/data/data_sources/local_auth_data_source.dart';
import 'package:antares_wallet/app/data/repository/local_auth_repository.dart';
import 'package:antares_wallet/app/domain/repositories/local_auth_repository.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'local_auth_controller.dart';

class LocalAuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ILocalAuthDataSource>(() => LocalAuthDataSource());
    Get.lazyPut<ILocalAuthRepository>(() => LocalAuthRepository(
          storage: GetStorage(),
          source: Get.find(),
        ));
    Get.lazyPut<LocalAuthController>(() => LocalAuthController(
          sessionRepo: Get.find(),
          localAuthRepo: Get.find(),
        ));
  }
}
