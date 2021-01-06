import 'package:antares_wallet/app/data/data_sources/assets_data_source.dart';
import 'package:antares_wallet/app/data/repository/assets_repository.dart';
import 'package:antares_wallet/app/domain/repositories/assets_repository.dart';
import 'package:antares_wallet/controllers/app_controller.dart';
import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/controllers/deposit_controller.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/controllers/orders_controller.dart';
import 'package:antares_wallet/controllers/portfolio_controller.dart';
import 'package:antares_wallet/controllers/profile_controller.dart';
import 'package:antares_wallet/controllers/watchlists_controller.dart';
import 'package:antares_wallet/controllers/withdrawal_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RootPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());

    Get.lazyPut<IAssetsDataSource>(() => AssetsDataSource(
          api: Get.find(),
        ));
    Get.lazyPut<IAssetsRepository>(() => AssetsRepository(
          source: Get.find(),
        ));
    Get.put(AssetsController(
      repository: Get.find(),
    ));

    Get.put(PortfolioController(
      assetsCon: Get.find(),
    ));

    Get.put(OrdersController(
      assetsCon: Get.find(),
    ));

    Get.put(MarketsController(
      api: Get.find(),
      storage: GetStorage(),
      assetsCon: Get.find(),
    ));

    Get.put(WatchlistsController(
      storage: GetStorage(),
      marketsCon: Get.find(),
    ));

    Get.put(WithdrawalController(
      portfolioCon: Get.find(),
      sessionRepo: Get.find(),
    ));

    Get.put(DepositController(
      assetsCon: Get.find(),
    ));

    Get.put(AppController(
      assetsCon: Get.find(),
      sessionRepo: Get.find(),
      marketsCon: Get.find(),
      ordersCon: Get.find(),
      portfolioCon: Get.find(),
      sessionService: Get.find(),
    ));
  }
}
