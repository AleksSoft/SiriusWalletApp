import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/data_sources/local_auth_data_source.dart';
import 'package:antares_wallet/app/data/data_sources/push_data_source.dart';
import 'package:antares_wallet/app/data/data_sources/session_data_source.dart';
import 'package:antares_wallet/app/data/repository/local_auth_repository.dart';
import 'package:antares_wallet/app/data/repository/session_repository.dart';
import 'package:antares_wallet/app/data/services/api/api_service.dart';
import 'package:antares_wallet/app/data/services/push_service.dart';
import 'package:antares_wallet/app/data/services/session_service.dart';
import 'package:antares_wallet/app/domain/repositories/local_auth_repository.dart';
import 'package:antares_wallet/app/domain/repositories/push_repository.dart';
import 'package:antares_wallet/app/domain/repositories/session_repository.dart';
import 'package:antares_wallet/app/presentation/modules/splash/splash_controller.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';

import 'app/data/repository/push_repository.dart';

class InitialBinding extends Bindings {
  final AppConfig appConfig;
  InitialBinding(this.appConfig);

  @override
  void dependencies() async {
    /// common +
    Get.lazyPut<Logger>(
      () => Logger(printer: PrettyPrinter()),
      fenix: true,
    );
    await Get.putAsync<ApiService>(
      () => ApiService().init(appConfig),
      permanent: true,
    );
    Get.lazyPut<AppConfig>(
      () => appConfig,
      fenix: true,
    );
    Get.lazyPut<DialogManager>(
      () => DialogManager(),
      fenix: true,
    );
    // common -

    /// session +
    Get.lazyPut<ISessionDataSource>(
      () => SessionDataSource(api: Get.find()),
      fenix: true,
    );
    Get.lazyPut<ISessionRepository>(
      () => SessionRepository(
        source: Get.find(),
        storage: GetStorage(),
      ),
      fenix: true,
    );
    Get.lazyPut<SessionService>(
      () => SessionService(sessionRepo: Get.find()),
      fenix: true,
    );
    // session -

    /// firebase push messages +
    Get.lazyPut<IPushDataSource>(
      () => PushDataSource(api: Get.find()),
      fenix: true,
    );
    Get.lazyPut<IPushRepository>(
      () => PushRepository(
        source: Get.find(),
        storage: GetStorage(),
      ),
      fenix: true,
    );
    Get.put(PushService(
      fcm: FirebaseMessaging(),
      pushRepo: Get.find(),
      sessionRepo: Get.find(),
    ));
    // firebase push messages -

    /// local auth +
    Get.lazyPut<ILocalAuthDataSource>(
      () => LocalAuthDataSource(),
      fenix: true,
    );
    Get.lazyPut<ILocalAuthRepository>(
      () => LocalAuthRepository(
        storage: GetStorage(),
        source: Get.find(),
      ),
      fenix: true,
    );
    // local auth -

    /// splash +
    Get.put(SplashController(sessionService: Get.find()));
    // splash -
  }
}
