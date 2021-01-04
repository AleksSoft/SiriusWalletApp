import 'package:antares_wallet/app/data/provider/assets_provider.dart';
import 'package:antares_wallet/app/data/repository/assets_repository.dart';
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

class RootPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController(), fenix: true);

    Get.lazyPut<IAssetsProvider>(() => AssetsProvider(api: Get.find()));
    Get.lazyPut<IAssetsRepository>(
        () => AssetsRepository(provider: Get.find()));
    Get.lazyPut(() => AssetsController(repository: Get.find()));

    Get.put<PortfolioController>(PortfolioController());
    Get.put<OrdersController>(OrdersController());
    Get.put<MarketsController>(MarketsController());
    Get.put<WatchlistsController>(WatchlistsController());
    Get.put<WithdrawalController>(WithdrawalController());
    Get.put<DepositController>(DepositController());

    Get.put<AppController>(AppController());
  }
}
