import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/bindings/initial_binding.dart';
import 'package:antares_wallet/bindings/profile_binding.dart';
import 'package:antares_wallet/bindings/settings_binding.dart';
import 'package:antares_wallet/bindings/support_binding.dart';
import 'package:antares_wallet/ui/pages/asset_info/asset_info_page.dart';
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
import 'package:antares_wallet/ui/pages/pair_trading/pair_trading_page.dart';
import 'package:antares_wallet/ui/pages/portfolio/transaction_details/transaction_details_page.dart';
import 'package:antares_wallet/ui/pages/root/root_page.dart';
import 'package:antares_wallet/ui/pages/select_asset/select_asset_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AppRoutes {
  static bool get _hasToken => GetStorage().hasData(AppStorageKeys.token);

  static final routes = [
    GetPage(
      name: InitialPage.route,
      page: () => _hasToken ? RootPage() : InitialPage(),
      binding: InitialPageBinding(),
    ),
    GetPage(
      name: LoginPage.route,
      page: () => LoginPage(),
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
      name: PairTradingPage.route,
      page: () => PairTradingPage(),
    ),
    GetPage(
      name: TransactionDetailsPage.route,
      page: () => TransactionDetailsPage(),
    ),
  ];
}
