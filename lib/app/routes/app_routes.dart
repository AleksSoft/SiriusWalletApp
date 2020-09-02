import 'package:antares_wallet/bindings/asset_info_binding.dart';
import 'package:antares_wallet/bindings/disclaimers_binding.dart';
import 'package:antares_wallet/bindings/local_auth_binding.dart';
import 'package:antares_wallet/bindings/order_details_binding.dart';
import 'package:antares_wallet/bindings/register_binding.dart';
import 'package:antares_wallet/bindings/root_binding.dart';
import 'package:antares_wallet/bindings/start_binding.dart';
import 'package:antares_wallet/bindings/support_binding.dart';
import 'package:antares_wallet/bindings/trading_binding.dart';
import 'package:antares_wallet/bindings/upgrade_account_quest_binding.dart';
import 'package:antares_wallet/ui/pages/asset_info/asset_info_page.dart';
import 'package:antares_wallet/ui/pages/disclaimer/disclaimer_page.dart';
import 'package:antares_wallet/ui/pages/exchange/watchlists/edit/edit_watchlist_page.dart';
import 'package:antares_wallet/ui/pages/exchange/watchlists/watchlists_page.dart';
import 'package:antares_wallet/ui/pages/local_auth/local_auth_page.dart';
import 'package:antares_wallet/ui/pages/login/login_page.dart';
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
import 'package:antares_wallet/ui/pages/register/register_page.dart';
import 'package:antares_wallet/ui/pages/root/root_page.dart';
import 'package:antares_wallet/ui/pages/select_asset/select_asset_page.dart';
import 'package:antares_wallet/ui/pages/start/start_page.dart';
import 'package:antares_wallet/ui/pages/trading/trading_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: StartPage.route,
      page: () => StartPage(),
      binding: StartBinding(),
    ),
    GetPage(
      name: LocalAuthPage.route,
      page: () => LocalAuthPage(),
      binding: LocalAuthBinding(),
      fullscreenDialog: true,
      transition: Transition.downToUp,
    ),
    GetPage(
      name: DisclaimersPage.route,
      page: () => DisclaimersPage(),
      binding: DisclaimersBinding(),
      fullscreenDialog: true,
      transition: Transition.downToUp,
    ),
    GetPage(
      name: LoginPage.route,
      page: () => LoginPage(),
    ),
    GetPage(
      name: RegisterPage.route,
      page: () => RegisterPage(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: RootPage.route,
      page: () => RootPage(),
      binding: RootPageBinding(),
    ),
    GetPage(
      name: SettingsPage.route,
      page: () => SettingsPage(),
    ),
    GetPage(
      name: ProfilePage.route,
      page: () => ProfilePage(),
    ),
    GetPage(
      name: SupportPage.route,
      page: () => SupportPage(),
      binding: SupportBinding(),
    ),
    GetPage(
      name: UpgradeAccountMainPage.route,
      page: () => UpgradeAccountMainPage(),
      fullscreenDialog: true,
      transition: Transition.downToUp,
    ),
    GetPage(
      name: UpgradeAccountAddress.route,
      page: () => UpgradeAccountAddress(),
    ),
    GetPage(
      name: UpgradeAccountChooseDocPage.route,
      page: () => UpgradeAccountChooseDocPage(),
    ),
    GetPage(
      name: UpgradeAccountDocPage.route,
      page: () => UpgradeAccountDocPage(),
    ),
    GetPage(
      name: UpgradeAccountQuestPage.route,
      page: () => UpgradeAccountQuestPage(),
      binding: UpgradeAccountQuestBinding(),
    ),
    GetPage(
      name: UpgradeAccountResultPage.route,
      page: () => UpgradeAccountResultPage(),
    ),
    GetPage(
      name: SelectAssetPage.route,
      page: () => SelectAssetPage(),
    ),
    GetPage(
      name: BackUpConfirmKeyPage.route,
      page: () => BackUpConfirmKeyPage(),
    ),
    GetPage(
      name: BackUpCopyKeyPage.route,
      page: () => BackUpCopyKeyPage(),
    ),
    GetPage(
      name: AssetInfoPage.route,
      page: () => AssetInfoPage(),
      binding: AssetInfoBinding(),
    ),
    GetPage(
      name: TradingPage.route,
      page: () => TradingPage(),
      binding: TradingBinding(),
    ),
    GetPage(
      name: OrderDetailsPage.route,
      page: () => OrderDetailsPage(),
      binding: OrderDetailsBinding(),
    ),
    GetPage(
      name: TransactionDetailsPage.route,
      page: () => TransactionDetailsPage(),
    ),
    GetPage(
      name: WatchlistsPage.route,
      page: () => WatchlistsPage(),
      fullscreenDialog: true,
      transition: Transition.downToUp,
    ),
    GetPage(
      name: EditWatchlistPage.route,
      page: () => EditWatchlistPage(),
    ),
  ];
}
