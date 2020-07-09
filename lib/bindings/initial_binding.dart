import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/services/repositories/asset_repository.dart';
import 'package:antares_wallet/services/repositories/order_repository.dart';
import 'package:antares_wallet/services/repositories/portfolio_history_repository.dart';
import 'package:get/get.dart';

class InitialPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AssetRepository>(() => AssetRepository());
    Get.lazyPut<OrderRepository>(() => OrderRepository());
    Get.lazyPut<MockApiService>(() => MockApiService());
    Get.lazyPut<PortfolioHistoryRepository>(() => PortfolioHistoryRepository());
  }
}
