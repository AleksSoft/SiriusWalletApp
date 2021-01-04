import 'package:antares_wallet/app/features/local_auth/data/datasources/local_auth_data_source.dart';
import 'package:antares_wallet/app/features/local_auth/data/repositories/local_auth_repository.dart';
import 'package:antares_wallet/app/features/local_auth/domain/repositories/local_auth_repository.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'local_auth_controller.dart';

class LocalAuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ILocalAuthDataSource>(() => LocalAuthDataSource());
    Get.lazyPut<ILocalAuthRepository>(
        () => LocalAuthRepository(provider: Get.find()));
    Get.lazyPut(() =>
        LocalAuthController(repository: Get.find(), storage: GetStorage()));
  }
}
