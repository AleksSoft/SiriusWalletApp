import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/service/session_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';

class InitialBinding extends Bindings {
  final AppConfig appConfig;
  InitialBinding(this.appConfig);

  @override
  void dependencies() async {
    Get.lazyPut<Logger>(() => Logger(printer: PrettyPrinter()), fenix: true);

    Get.put<AppConfig>(appConfig);
    Get.put<SessionService>(SessionService(storage: GetStorage()));
    Get.put<DialogManager>(DialogManager());
  }
}
