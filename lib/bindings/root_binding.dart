import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/controllers/portfolio_controller.dart';
import 'package:antares_wallet/services/repositories/portfolio_history_repository.dart';
import 'package:antares_wallet/controllers/watchlists_controller.dart';
import 'package:antares_wallet/controllers/orders_controller.dart';
import 'package:antares_wallet/ui/pages/root/root_controller.dart';
import 'package:get/get.dart';

class RootPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<PortfolioHistoryRepository>(PortfolioHistoryRepository());
    Get.put<RootController>(RootController());
    Get.put<AssetsController>(AssetsController());
    Get.put<PortfolioController>(PortfolioController());
    Get.put<OrdersController>(OrdersController());
    Get.put<MarketsController>(MarketsController());
    Get.put<WatchlistsController>(WatchlistsController());
  }
}
