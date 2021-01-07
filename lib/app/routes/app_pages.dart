import 'package:antares_wallet/app/presentation/modules/local_auth/local_auth_binding.dart';
import 'package:antares_wallet/app/presentation/modules/local_auth/local_auth_page.dart';
import 'package:antares_wallet/app/presentation/modules/login/login_binding.dart';
import 'package:antares_wallet/app/presentation/modules/login/login_page.dart';
import 'package:antares_wallet/app/presentation/modules/register/register_binding.dart';
import 'package:antares_wallet/app/presentation/modules/register/register_page.dart';
import 'package:antares_wallet/app/presentation/modules/root/root_binding.dart';
import 'package:antares_wallet/app/presentation/modules/root/root_page.dart';
import 'package:antares_wallet/app/presentation/modules/splash/splash_binding.dart';
import 'package:antares_wallet/app/presentation/modules/splash/splash_page.dart';
import 'package:antares_wallet/app/presentation/modules/start/start_binding.dart';
import 'package:antares_wallet/app/presentation/modules/start/start_page.dart';
import 'package:antares_wallet/bindings/asset_info_binding.dart';
import 'package:antares_wallet/bindings/dev_settings_binding.dart';
import 'package:antares_wallet/bindings/disclaimers_binding.dart';
import 'package:antares_wallet/bindings/order_details_binding.dart';
import 'package:antares_wallet/bindings/support_binding.dart';
import 'package:antares_wallet/bindings/trading_binding.dart';
import 'package:antares_wallet/bindings/upgrade_account_quest_binding.dart';
import 'package:antares_wallet/ui/pages/asset_info/asset_info_page.dart';
import 'package:antares_wallet/ui/pages/dev_settings/dev_settings_page.dart';
import 'package:antares_wallet/ui/pages/disclaimer/disclaimer_page.dart';
import 'package:antares_wallet/ui/pages/markets/spot/watchlists/edit/edit_watchlist_page.dart';
import 'package:antares_wallet/ui/pages/markets/spot/watchlists/watchlists_page.dart';
import 'package:antares_wallet/ui/pages/more/profile/profile_page.dart';
import 'package:antares_wallet/ui/pages/more/profile/upgrade/quest/upgrade_account_quest.dart';
import 'package:antares_wallet/ui/pages/more/profile/upgrade/upgrade_account_address.dart';
import 'package:antares_wallet/ui/pages/more/profile/upgrade/upgrade_account_choose_doc.dart';
import 'package:antares_wallet/ui/pages/more/profile/upgrade/upgrade_account_doc.dart';
import 'package:antares_wallet/ui/pages/more/profile/upgrade/upgrade_account_main.dart';
import 'package:antares_wallet/ui/pages/more/profile/upgrade/upgrade_account_result.dart';
import 'package:antares_wallet/ui/pages/more/settings/backup/backup_confirm_key_page.dart';
import 'package:antares_wallet/ui/pages/more/settings/backup/backup_copy_key_page.dart';
import 'package:antares_wallet/ui/pages/more/settings/settings_page.dart';
import 'package:antares_wallet/ui/pages/more/support/support_page.dart';
import 'package:antares_wallet/ui/pages/orders/order_details/order_details_page.dart';
import 'package:antares_wallet/ui/pages/portfolio/transaction_details/transaction_details_page.dart';
import 'package:antares_wallet/ui/pages/select_asset/select_asset_page.dart';
import 'package:antares_wallet/ui/pages/trading/trading_page.dart';
import 'package:get/get.dart';

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
    ),
    GetPage(
      name: Routes.BACK_UP_CONFIRM,
      page: () => BackUpConfirmKeyPage(),
    ),
    GetPage(
      name: Routes.BACK_UP_COPY,
      page: () => BackUpCopyKeyPage(),
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
      page: () => WatchlistsPage(),
      fullscreenDialog: true,
      transition: Transition.downToUp,
    ),
    GetPage(
      name: Routes.WATCH_LIST_EDIT,
      page: () => EditWatchlistPage(),
    ),
  ];
}
