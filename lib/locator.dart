import 'package:get_it/get_it.dart';

import 'blockchain/blockchain_service.dart';
import 'business/managers/profile_manager.dart';
import 'business/services/api/mock_api.dart';
import 'business/services/key_store_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => KeyStoreService());

  locator.registerLazySingleton(() => MockApi());

  locator.registerLazySingleton(() => ProfileManager());

  // blockchain
  locator.registerLazySingleton(() => BlockchainService());
}
