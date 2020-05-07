import 'package:get_it/get_it.dart';

import 'business/services/blockchain/blockchain_service.dart';
import 'business/services/key_store_services.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => KeyStoreService());
  locator.registerLazySingleton(() => BlockchainService());
}
