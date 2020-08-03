import 'package:antares_wallet/bindings/initial_binding.dart';
import 'package:antares_wallet/bindings/order_details_binding.dart';
import 'package:antares_wallet/bindings/root_binding.dart';
import 'package:antares_wallet/bindings/profile_binding.dart';
import 'package:antares_wallet/bindings/settings_binding.dart';
import 'package:antares_wallet/bindings/support_binding.dart';
import 'package:antares_wallet/bindings/trading_binding.dart';
import 'package:antares_wallet/ui/pages/asset_info/asset_info_page.dart';
import 'package:antares_wallet/ui/pages/exchange/watchlists/edit/edit_watchlist_page.dart';
import 'package:antares_wallet/ui/pages/exchange/watchlists/watchlists_page.dart';
import 'package:antares_wallet/ui/pages/initial/initial_page.dart';
import 'package:antares_wallet/ui/pages/login/login_page.dart';
import 'package:antares_wallet/ui/pages/more/profile/profile_page.dart';
import 'package:antares_wallet/ui/pages/more/profile/upgrade/upgrade_account_choose_doc.dart';
import 'package:antares_wallet/ui/pages/more/profile/upgrade/upgrade_account_doc.dart';
import 'package:antares_wallet/ui/pages/more/profile/upgrade/upgrade_account_main.dart';
import 'package:antares_wallet/ui/pages/more/profile/upgrade/upgrade_account_quest.dart';
import 'package:antares_wallet/ui/pages/more/profile/upgrade/upgrade_account_result.dart';
import 'package:antares_wallet/ui/pages/more/settings/backup/backup_confirm_key_page.dart';
import 'package:antares_wallet/ui/pages/more/settings/backup/backup_copy_key_page.dart';
import 'package:antares_wallet/ui/pages/more/settings/settings_page.dart';
import 'package:antares_wallet/ui/pages/more/support/support_page.dart';
import 'package:antares_wallet/ui/pages/orders/order_details/order_details_page.dart';
import 'package:antares_wallet/ui/pages/portfolio/transaction_details/transaction_details_page.dart';
import 'package:antares_wallet/ui/pages/root/root_page.dart';
import 'package:antares_wallet/ui/pages/select_asset/select_asset_page.dart';
import 'package:antares_wallet/ui/pages/trading/trading_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: InitialPage.route,
      page: () => InitialPage(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: LoginPage.route,
      page: () => LoginPage(),
    ),
    GetPage(
      name: RootPage.route,
      page: () => RootPage(),
      binding: RootPageBinding(),
    ),
    GetPage(
      name: SettingsPage.route,
      page: () => SettingsPage(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: ProfilePage.route,
      page: () => ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: SupportPage.route,
      page: () => SupportPage(),
      binding: SupportBinding(),
    ),
    GetPage(
      name: UpgradeAccountMainPage.route,
      page: () => UpgradeAccountMainPage(),
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
    ),
    GetPage(
      name: EditWatchlistPage.route,
      page: () => EditWatchlistPage(),
    ),
  ];
}
