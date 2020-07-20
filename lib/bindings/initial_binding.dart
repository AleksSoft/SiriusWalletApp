import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/services/repositories/asset_repository.dart';
import 'package:antares_wallet/services/repositories/order_repository.dart';
import 'package:antares_wallet/services/repositories/portfolio_history_repository.dart';
import 'package:antares_wallet/services/repositories/price_repository.dart';
import 'package:antares_wallet/services/repositories/watch_lists_repository.dart';
import 'package:antares_wallet/ui/pages/orders/orders_controller.dart';
import 'package:get/get.dart';

class InitialPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MockApiService>(() => MockApiService());

    Get.put<AssetRepository>(AssetRepository());
    Get.put<WatchListsRepository>(WatchListsRepository());
    Get.put<OrderRepository>(OrderRepository());
    Get.put<PortfolioHistoryRepository>(PortfolioHistoryRepository());
    Get.put<PriceRepository>(PriceRepository());

    Get.lazyPut<OrdersController>(() => OrdersController());
  }
}
