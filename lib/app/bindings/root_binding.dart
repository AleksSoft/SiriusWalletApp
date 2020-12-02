import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/controllers/deposit_controller.dart';
import 'package:antares_wallet/controllers/investments_controller.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/controllers/orders_controller.dart';
import 'package:antares_wallet/controllers/portfolio_controller.dart';
import 'package:antares_wallet/controllers/profile_controller.dart';
import 'package:antares_wallet/controllers/watchlists_controller.dart';
import 'package:antares_wallet/controllers/withdrawal_controller.dart';
import 'package:antares_wallet/ui/pages/root/root_controller.dart';
import 'package:get/get.dart';

class RootPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController(), fenix: true);
    Get.put<RootController>(RootController());
    Get.put<AssetsController>(AssetsController());
    Get.put<PortfolioController>(PortfolioController());
    Get.put<OrdersController>(OrdersController());
    Get.put<MarketsController>(MarketsController());
    Get.put<InvestmentsController>(InvestmentsController());
    Get.put<WatchlistsController>(WatchlistsController());
    Get.put<WithdrawalController>(WithdrawalController());
    Get.put<DepositController>(DepositController());
  }
}
