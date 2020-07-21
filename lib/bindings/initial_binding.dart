import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/services/repositories/portfolio_history_repository.dart';
import 'package:antares_wallet/services/repositories/price_repository.dart';
import 'package:antares_wallet/ui/pages/exchange/watchlists/watchlists_controller.dart';
import 'package:antares_wallet/ui/pages/orders/orders_controller.dart';
import 'package:get/get.dart';

class InitialPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MockApiService>(() => MockApiService());

    Get.put<PortfolioHistoryRepository>(PortfolioHistoryRepository());
    Get.put<PriceRepository>(PriceRepository());

    Get.put<AssetsController>(AssetsController());
    Get.put<OrdersController>(OrdersController());
    Get.put<WatchlistsController>(WatchlistsController());
  }
}
