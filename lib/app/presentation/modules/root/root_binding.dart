import 'package:antares_wallet/app/data/data_sources/assets_data_source.dart';
import 'package:antares_wallet/app/data/data_sources/markets_data_source.dart';
import 'package:antares_wallet/app/data/data_sources/portfolio_data_source.dart';
import 'package:antares_wallet/app/data/data_sources/profile_data_source.dart';
import 'package:antares_wallet/app/data/data_sources/settings_data_source.dart';
import 'package:antares_wallet/app/data/data_sources/trading_data_source.dart';
import 'package:antares_wallet/app/data/data_sources/wallet_data_source.dart';
import 'package:antares_wallet/app/data/data_sources/watchlist_data_source.dart';
import 'package:antares_wallet/app/data/repository/assets_repository.dart';
import 'package:antares_wallet/app/data/repository/markets_repository.dart';
import 'package:antares_wallet/app/data/repository/portfolio_repository.dart';
import 'package:antares_wallet/app/data/repository/profile_repository.dart';
import 'package:antares_wallet/app/data/repository/settings_repository.dart';
import 'package:antares_wallet/app/data/repository/trading_repository.dart';
import 'package:antares_wallet/app/data/repository/wallet_repository.dart';
import 'package:antares_wallet/app/data/repository/watchist_repository.dart';
import 'package:antares_wallet/app/domain/repositories/assets_repository.dart';
import 'package:antares_wallet/app/domain/repositories/markets_repository.dart';
import 'package:antares_wallet/app/domain/repositories/portfolio_repository.dart';
import 'package:antares_wallet/app/domain/repositories/profile_repository.dart';
import 'package:antares_wallet/app/domain/repositories/settings_repository.dart';
import 'package:antares_wallet/app/domain/repositories/trading_repository.dart';
import 'package:antares_wallet/app/domain/repositories/wallet_repository.dart';
import 'package:antares_wallet/app/domain/repositories/watchlist_repository.dart';
import 'package:antares_wallet/app/presentation/modules/deposit/deposit_controller.dart';
import 'package:antares_wallet/app/presentation/modules/home/home_controller.dart';
import 'package:antares_wallet/app/presentation/modules/markets/markets_controller.dart';
import 'package:antares_wallet/app/presentation/modules/markets/spot/watchlists/watchlists_controller.dart';
import 'package:antares_wallet/app/presentation/modules/more/more_controller.dart';
import 'package:antares_wallet/app/presentation/modules/orders/orders_controller.dart';
import 'package:antares_wallet/app/presentation/modules/portfolio/assets/assets_controller.dart';
import 'package:antares_wallet/app/presentation/modules/portfolio/portfolio_controller.dart';
import 'package:antares_wallet/app/presentation/modules/root/root_controller.dart';
import 'package:antares_wallet/app/presentation/modules/withdrawal/withdrawal_controller.dart';
import 'package:get/get.dart';

class RootPageBinding extends Bindings {
  @override
  void dependencies() {
    /// sources +
    Get.lazyPut<IProfileDataSource>(
      () => ProfileDataSource(api: Get.find()),
      fenix: true,
    );
    Get.lazyPut<IAssetsDataSource>(
      () => AssetsDataSource(api: Get.find()),
      fenix: true,
    );
    Get.lazyPut<IPortfolioDataSource>(
      () => PortfolioDataSource(api: Get.find()),
      fenix: true,
    );
    Get.lazyPut<ITradingDataSource>(
      () => TradingDataSource(api: Get.find()),
      fenix: true,
    );
    Get.lazyPut<IMarketsDataSource>(
      () => MarketsDataSource(api: Get.find()),
      fenix: true,
    );
    Get.lazyPut<IWatchlistDataSource>(
      () => WatchlistDataSource(api: Get.find()),
      fenix: true,
    );
    Get.lazyPut<IWalletDataSource>(
      () => WalletDataSource(api: Get.find()),
      fenix: true,
    );
    Get.lazyPut<ISettingsDataSource>(
      () => SettingsDataSource(api: Get.find()),
      fenix: true,
    );
    // sources -

    /// repositories +
    Get.lazyPut<IProfileRepository>(
      () => ProfileRepository(source: Get.find()),
      fenix: true,
    );
    Get.lazyPut<IAssetsRepository>(
      () => AssetsRepository(source: Get.find()),
      fenix: true,
    );
    Get.lazyPut<IPortfolioRepository>(
      () => PortfolioRepository(source: Get.find()),
      fenix: true,
    );
    Get.lazyPut<ITradingRepository>(
      () => TradingRepository(source: Get.find()),
      fenix: true,
    );
    Get.lazyPut<IMarketsRepository>(
      () => MarketsRepository(source: Get.find()),
      fenix: true,
    );
    Get.lazyPut<IWatchlistRepository>(
      () => WatchlistRepository(storage: Get.find(), source: Get.find()),
      fenix: true,
    );
    Get.lazyPut<IWalletRepository>(
      () => WalletRepository(source: Get.find()),
      fenix: true,
    );
    Get.lazyPut<ISettingsRepository>(
      () => SettingsRepository(source: Get.find()),
      fenix: true,
    );
    // repositories -

    /// controllers +
    Get.put(AssetsController(
      repository: Get.find(),
    ));
    Get.put(PortfolioController(
      portfolioRepo: Get.find(),
      assetsCon: Get.find(),
    ));
    Get.put(OrdersController(
      tradingRepo: Get.find(),
      assetsCon: Get.find(),
    ));
    Get.put(MarketsController(
      api: Get.find(),
      assetsCon: Get.find(),
      marketsRepo: Get.find(),
      watchlistRepo: Get.find(),
    ));
    Get.put(WatchListsController(
      marketsCon: Get.find(),
      watchlistRepo: Get.find(),
    ));
    Get.put(MoreController(
      sessionService: Get.find(),
      appConfig: Get.find(),
    ));
    Get.put(RootController(
      assetsCon: Get.find(),
      marketsCon: Get.find(),
      ordersCon: Get.find(),
      portfolioCon: Get.find(),
      pushService: Get.find(),
      sessionRepo: Get.find(),
    ));
    Get.put(WithdrawalController(
      portfolioCon: Get.find(),
      sessionRepo: Get.find(),
      walletRepo: Get.find(),
    ));
    Get.put(DepositController(
      rootCon: Get.find(),
      assetsCon: Get.find(),
      walletRepo: Get.find(),
      profileRepo: Get.find(),
      settingsRepo: Get.find(),
    ));
    Get.put(HomeController(
      assetsCon: Get.find(),
      marketsCon: Get.find(),
      portfolioCon: Get.find(),
      withdrawalCon: Get.find(),
      depositCon: Get.find(),
      rootCon: Get.find(),
    ));
    // controllers -
  }
}
