import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/data_sources/session_data_source.dart';
import 'package:antares_wallet/app/data/repository/session_repository.dart';
import 'package:antares_wallet/app/data/service/session_service.dart';
import 'package:antares_wallet/app/domain/repositories/session_repository.dart';
import 'package:antares_wallet/common/common.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';

class InitialBinding extends Bindings {
  final AppConfig appConfig;
  InitialBinding(this.appConfig);

  @override
  void dependencies() async {
    Get.lazyPut<Logger>(
      () => Logger(printer: PrettyPrinter()),
      fenix: true,
    );
    Get.lazyPut<AppConfig>(
      () => appConfig,
      fenix: true,
    );
    Get.lazyPut<DialogManager>(
      () => DialogManager(),
      fenix: true,
    );

    Get.lazyPut<ISessionDataSource>(
      () => SessionDataSource(api: Get.find()),
    );
    Get.lazyPut<ISessionRepository>(
      () => SessionRepository(
        source: Get.find(),
        storage: GetStorage(),
      ),
      fenix: true,
    );
    Get.lazyPut<SessionService>(
      () => SessionService(repository: Get.find()),
      fenix: true,
    );
  }
}
