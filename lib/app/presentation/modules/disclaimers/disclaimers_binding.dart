import 'package:antares_wallet/app/data/data_sources/disclaimers_data_source.dart';
import 'package:antares_wallet/app/data/repository/disclaimers_repository.dart';
import 'package:antares_wallet/app/domain/repositories/disclaimers_repository.dart';
import 'package:get/get.dart';

import 'disclaimers_controller.dart';

class DisclaimersBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<IDisclaimersDataSource>(
      DisclaimersDataSource(api: Get.find()),
    );
    Get.put<IDisclaimersRepository>(
      DisclaimersRepository(source: Get.find()),
    );
    Get.put(DisclaimersController(disclaimersRepo: Get.find()));
  }
}
