import 'package:antares_wallet/business/managers/profile_manager.dart';
import 'package:antares_wallet/business/view_models/more/profile_view_model.dart';
import 'package:antares_wallet/business/view_models/orders/orders_history_view_model.dart';
import 'package:antares_wallet/business/view_models/orders/orders_opened_view_model.dart';
import 'package:antares_wallet/business/view_models/portfolio/portfolio_assets_view_model.dart';
import 'package:antares_wallet/business/view_models/portfolio/portfolio_history_view_model.dart';
import 'package:get_it/get_it.dart';

import 'blockchain/blockchain_service.dart';
import 'business/services/api/mock_api.dart';
import 'business/services/key_store_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // services
  locator.registerLazySingleton(() => KeyStoreService());
  locator.registerLazySingleton(() => MockApiService());

  // repositories
  locator.registerLazySingleton(() => ProfileRepository());

  // models
  locator.registerLazySingleton(() => ProfileViewModel());
  locator.registerLazySingleton(() => OrdersHistoryViewModel());
  locator.registerLazySingleton(() => OrdersOpenedViewModel());
  locator.registerLazySingleton(() => PortfolioAssetsViewModel());
  locator.registerLazySingleton(() => PortfolioHistoryViewModel());

  // blockchain
  locator.registerLazySingleton(() => BlockchainService());
}
