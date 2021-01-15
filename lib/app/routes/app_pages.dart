import 'package:antares_wallet/app/presentation/modules/asset_info/asset_info_binding.dart';
import 'package:antares_wallet/app/presentation/modules/asset_info/asset_info_page.dart';
import 'package:antares_wallet/app/presentation/modules/candle_chart/candle_chart_page.dart';
import 'package:antares_wallet/app/presentation/modules/deposit/blockchain_deposit_page.dart';
import 'package:antares_wallet/app/presentation/modules/deposit/card_deposit_page.dart';
import 'package:antares_wallet/app/presentation/modules/deposit/swift_deposit_page.dart';
import 'package:antares_wallet/app/presentation/modules/dev_settings/dev_settings_binding.dart';
import 'package:antares_wallet/app/presentation/modules/dev_settings/dev_settings_page.dart';
import 'package:antares_wallet/app/presentation/modules/disclaimers/disclaimers_binding.dart';
import 'package:antares_wallet/app/presentation/modules/disclaimers/disclaimers_page.dart';
import 'package:antares_wallet/app/presentation/modules/errors_log/errors_log_binding.dart';
import 'package:antares_wallet/app/presentation/modules/errors_log/errors_log_page.dart';
import 'package:antares_wallet/app/presentation/modules/local_auth/local_auth_binding.dart';
import 'package:antares_wallet/app/presentation/modules/local_auth/local_auth_page.dart';
import 'package:antares_wallet/app/presentation/modules/login/login_binding.dart';
import 'package:antares_wallet/app/presentation/modules/login/login_page.dart';
import 'package:antares_wallet/app/presentation/modules/markets/spot/watchlists/edit/edit_watchlist_page.dart';
import 'package:antares_wallet/app/presentation/modules/markets/spot/watchlists/watchlists_page.dart';
import 'package:antares_wallet/app/presentation/modules/order_details/order_details_binding.dart';
import 'package:antares_wallet/app/presentation/modules/order_details/order_details_page.dart';
import 'package:antares_wallet/app/presentation/modules/orders/history/filters/orders_history_filters_view.dart';
import 'package:antares_wallet/app/presentation/modules/portfolio/history/filters/portfolio_history_filters_view.dart';
import 'package:antares_wallet/app/presentation/modules/profile/profile_page.dart';
import 'package:antares_wallet/app/presentation/modules/profile/upgrade/quest/upgrade_account_quest.dart';
import 'package:antares_wallet/app/presentation/modules/profile/upgrade/quest/upgrade_account_quest_binding.dart';
import 'package:antares_wallet/app/presentation/modules/profile/upgrade/upgrade_account_address.dart';
import 'package:antares_wallet/app/presentation/modules/profile/upgrade/upgrade_account_choose_doc.dart';
import 'package:antares_wallet/app/presentation/modules/profile/upgrade/upgrade_account_doc.dart';
import 'package:antares_wallet/app/presentation/modules/profile/upgrade/upgrade_account_main.dart';
import 'package:antares_wallet/app/presentation/modules/profile/upgrade/upgrade_account_result.dart';
import 'package:antares_wallet/app/presentation/modules/register/register_binding.dart';
import 'package:antares_wallet/app/presentation/modules/register/register_page.dart';
import 'package:antares_wallet/app/presentation/modules/register/widgets/register_result_page.dart';
import 'package:antares_wallet/app/presentation/modules/root/root_binding.dart';
import 'package:antares_wallet/app/presentation/modules/root/root_page.dart';
import 'package:antares_wallet/app/presentation/modules/select_asset/select_asset_binding.dart';
import 'package:antares_wallet/app/presentation/modules/select_asset/select_asset_page.dart';
import 'package:antares_wallet/app/presentation/modules/settings/settings_binding.dart';
import 'package:antares_wallet/app/presentation/modules/settings/settings_page.dart';
import 'package:antares_wallet/app/presentation/modules/splash/splash_binding.dart';
import 'package:antares_wallet/app/presentation/modules/splash/splash_page.dart';
import 'package:antares_wallet/app/presentation/modules/start/start_binding.dart';
import 'package:antares_wallet/app/presentation/modules/start/start_page.dart';
import 'package:antares_wallet/app/presentation/modules/support/support_binding.dart';
import 'package:antares_wallet/app/presentation/modules/support/support_page.dart';
import 'package:antares_wallet/app/presentation/modules/trading/trading_binding.dart';
import 'package:antares_wallet/app/presentation/modules/trading/trading_page.dart';
import 'package:antares_wallet/app/presentation/modules/transaction_details/transaction_details_page.dart';
import 'package:antares_wallet/app/presentation/modules/withdrawal/blockchain_withdrawal_details_page.dart';
import 'package:antares_wallet/app/presentation/modules/withdrawal/blockchain_withdrawal_page.dart';
import 'package:antares_wallet/app/presentation/modules/withdrawal/swift_withdrawal_page.dart';
import 'package:antares_wallet/app/presentation/modules/withdrawal/swift_withdrawal_result_page.dart';
import 'package:get/get.dart';
import 'package:logger_flutter/logger_flutter.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.START,
      page: () => StartPage(),
      binding: StartBinding(),
    ),
    GetPage(
      name: Routes.SAVED_ERRORS,
      page: () => ErrorsLogPage(),
      binding: ErrorsLogBinding(),
      fullscreenDialog: true,
    ),
    GetPage(
      name: Routes.LOG_CONSOLE,
      page: () => LogConsole(
        dark: Get.isPlatformDarkMode,
        showCloseButton: true,
      ),
      fullscreenDialog: true,
    ),
    GetPage(
      name: Routes.LOCAL_AUTH,
      page: () => LocalAuthPage(),
      binding: LocalAuthBinding(),
      fullscreenDialog: true,
    ),
    GetPage(
      name: Routes.DISCLAIMERS,
      page: () => DisclaimersPage(),
      binding: DisclaimersBinding(),
      fullscreenDialog: true,
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterPage(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: Routes.REGISTER_RESULT,
      page: () => RegisterResultPage(),
      transition: Transition.fade,
    ),
    GetPage(
      name: Routes.DEV_SETTINGS,
      page: () => DevSettingsPage(),
      binding: DevSettingsBinding(),
    ),
    GetPage(
      name: Routes.ROOT,
      page: () => RootPage(),
      binding: RootPageBinding(),
    ),
    GetPage(
      name: Routes.SETTINGS,
      page: () => SettingsPage(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => ProfilePage(),
    ),
    GetPage(
      name: Routes.SUPPORT,
      page: () => SupportPage(),
      binding: SupportBinding(),
    ),
    GetPage(
      name: Routes.UPGRADE_ACC_MAIN,
      page: () => UpgradeAccountMainPage(),
      fullscreenDialog: true,
      transition: Transition.downToUp,
    ),
    GetPage(
      name: Routes.UPGRADE_ACC_ADDRESS,
      page: () => UpgradeAccountAddress(),
    ),
    GetPage(
      name: Routes.UPGRADE_ACC_CHOOSE_DOC,
      page: () => UpgradeAccountChooseDocPage(),
    ),
    GetPage(
      name: Routes.UPGRADE_ACC_DOC,
      page: () => UpgradeAccountDocPage(),
    ),
    GetPage(
      name: Routes.UPGRADE_ACC_QUEST,
      page: () => UpgradeAccountQuestPage(),
      binding: UpgradeAccountQuestBinding(),
    ),
    GetPage(
      name: Routes.UPGRADE_ACC_RESULT,
      page: () => UpgradeAccountResultPage(),
    ),
    GetPage(
      name: Routes.SELECT_ASSET,
      page: () => SelectAssetPage(),
      binding: SelectAssetBinding(),
    ),
    GetPage(
      name: Routes.ASSET_INFO,
      page: () => AssetInfoPage(),
      binding: AssetInfoBinding(),
    ),
    GetPage(
      name: Routes.TRADING,
      page: () => TradingPage(),
      binding: TradingBinding(),
    ),
    GetPage(
      name: Routes.ORDER_DETAILS,
      page: () => OrderDetailsPage(),
      binding: OrderDetailsBinding(),
    ),
    GetPage(
      name: Routes.TRANSACTION_DETAILS,
      page: () => TransactionDetailsPage(),
    ),
    GetPage(
      name: Routes.WATCH_LISTS,
      page: () => WatchListsPage(),
      fullscreenDialog: true,
      transition: Transition.downToUp,
    ),
    GetPage(
      name: Routes.WATCH_LIST_EDIT,
      page: () => EditWatchlistPage(),
    ),
    GetPage(
      name: Routes.WITHDRAW_SWIFT,
      page: () => SwiftWithdrawalPage(),
    ),
    GetPage(
      name: Routes.WITHDRAW_SWIFT_RESULT,
      page: () => SwiftWithdrawalResultPage(),
    ),
    GetPage(
      name: Routes.WITHDRAW_BLOCKCHAIN,
      page: () => BlockchainWithdrawalPage(),
    ),
    GetPage(
      name: Routes.WITHDRAW_BLOCKCHAIN_DETAILS,
      page: () => BlockchainWithdrawalDetailsPage(),
    ),
    GetPage(
      name: Routes.DEPOSIT_SWIFT,
      page: () => SwiftDepositPage(),
    ),
    GetPage(
      name: Routes.DEPOSIT_CARD,
      page: () => CardDepositPage(),
    ),
    GetPage(
      name: Routes.DEPOSIT_BLOCKCHAIN,
      page: () => BlockchainDepositPage(),
    ),
    GetPage(
      name: Routes.ORDER_HISTORY_FILTER,
      page: () => OrdersHistoryFiltersView(),
      fullscreenDialog: true,
      transition: Transition.downToUp,
    ),
    GetPage(
      name: Routes.PORTFOLIO_HISTORY_FILTER,
      page: () => PortfolioHistoryFiltersView(),
      fullscreenDialog: true,
      transition: Transition.downToUp,
    ),
    GetPage(
      name: Routes.CANDLE_CHART,
      page: () => CandleChartPage(),
      transition: Transition.fade,
    ),
  ];
}
