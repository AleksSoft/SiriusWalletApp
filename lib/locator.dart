import 'package:get_it/get_it.dart';
import 'package:sirius/core/repositories/address_repository.dart';
import 'package:sirius/ui/navigation/navigation.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // services.start
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  // services.end

  // repository.start
  locator.registerLazySingleton(() => AddressRepository());
  // repository.end
}
