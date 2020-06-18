// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:antares_wallet/services/blockchain_service.dart';
import 'package:antares_wallet/services/repositories/asset_repository.dart';
import 'package:antares_wallet/services/third_party_services_module.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:antares_wallet/services/api/grpc_client_singleton.dart';
import 'package:antares_wallet/services/isalive_service.dart';
import 'package:antares_wallet/services/key_store_service.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/services/repositories/portfolio_history_repository.dart';
import 'package:antares_wallet/services/repositories/profile_repository.dart';
import 'package:antares_wallet/services/repositories/settings_repository.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final thirdPartyServicesModule = _$ThirdPartyServicesModule();
  g.registerLazySingleton<AssetRepository>(() => AssetRepository());
  g.registerLazySingleton<BlockchainService>(() => BlockchainService());
  g.registerLazySingleton<DialogService>(
      () => thirdPartyServicesModule.dialogService);
  g.registerLazySingleton<GrpcSingleton>(() => GrpcSingleton());
  g.registerLazySingleton<IsAliveService>(() => IsAliveService());
  g.registerLazySingleton<KeyStoreService>(() => KeyStoreService());
  g.registerLazySingleton<MockApiService>(() => MockApiService());
  g.registerLazySingleton<NavigationService>(
      () => thirdPartyServicesModule.navigationService);
  g.registerLazySingleton<PortfolioHistoryRepository>(
      () => PortfolioHistoryRepository());
  g.registerLazySingleton<ProfileRepository>(() => ProfileRepository());
  g.registerLazySingleton<SettingsRepository>(() => SettingsRepository());
  g.registerLazySingleton<SnackbarService>(
      () => thirdPartyServicesModule.snackbarService);
}

class _$ThirdPartyServicesModule extends ThirdPartyServicesModule {
  @override
  DialogService get dialogService => DialogService();
  @override
  NavigationService get navigationService => NavigationService();
  @override
  SnackbarService get snackbarService => SnackbarService();
}
