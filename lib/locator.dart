import 'package:antares_wallet/business/managers/profile_manager.dart';
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

  // blockchain
  locator.registerLazySingleton(() => BlockchainService());
}
