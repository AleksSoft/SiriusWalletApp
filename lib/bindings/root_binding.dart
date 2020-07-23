import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/services/repositories/portfolio_history_repository.dart';
import 'package:antares_wallet/controllers/prices_controller.dart';
import 'package:antares_wallet/controllers/watchlists_controller.dart';
import 'package:antares_wallet/controllers/orders_controller.dart';
import 'package:get/get.dart';

class RootPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApiService>(() => ApiService());
    Get.lazyPut<MockApiService>(() => MockApiService());

    Get.put<PortfolioHistoryRepository>(PortfolioHistoryRepository());

    Get.put<PricesController>(PricesController());
    Get.put<AssetsController>(AssetsController());
    Get.put<OrdersController>(OrdersController());
    Get.put<MarketsController>(MarketsController());
    Get.put<WatchlistsController>(WatchlistsController());
  }
}
