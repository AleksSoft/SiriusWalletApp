import 'package:antares_wallet/ui/views/exchange/exchange_page.dart';
import 'package:antares_wallet/ui/views/home/home_page.dart';
import 'package:antares_wallet/ui/views/more/more_page.dart';
import 'package:antares_wallet/ui/views/more/profile_view.dart';
import 'package:antares_wallet/ui/views/more/settings_view.dart';
import 'package:antares_wallet/ui/views/more/support_view.dart';
import 'package:antares_wallet/ui/views/more/upgrade/upgrade_account_choose_doc.dart';
import 'package:antares_wallet/ui/views/more/upgrade/upgrade_account_doc.dart';
import 'package:antares_wallet/ui/views/more/upgrade/upgrade_account_main.dart';
import 'package:antares_wallet/ui/views/more/upgrade/upgrade_account_quest.dart';
import 'package:antares_wallet/ui/views/more/upgrade/upgrade_account_result.dart';
import 'package:antares_wallet/ui/views/orders/orders_page.dart';
import 'package:antares_wallet/ui/views/portfolio/portfolio_page.dart';
import 'package:antares_wallet/ui/views/select_asset_view.dart';
import 'package:antares_wallet/ui/views/transaction_details_view.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  static const root = '/';
  static const home = '/home';
  static const selectAsset = '/selectAsset';
  static const historyDetails = '/historyDetails';
  static const portfolio = '/portfolio';
  static const exchange = '/exchange';
  static const orders = '/orders';
  static const more = '/more';
  static const settings = '/settings';
  static const support = '/support';
  static const profile = '/profile';

  //upgrade account flow
  static const upAccMain = '/upAccMain';
  static const upAccChooseDoc = '/upAccChooseDoc';
  static const upAccDoc = '/upAccDoc';
  static const upAccQuest = '/upAccQuest';
  static const upAccResult = '/upAccResult';

  static MaterialPageRoute generateRoute(RouteSettings routeSettings) {
    return MaterialPageRoute(
      settings: routeSettings,
      fullscreenDialog: routeSettings.name == upAccMain,
      builder: (context) =>
          _buildPage(routeSettings.name, routeSettings.arguments),
    );
  }

  static Widget _buildPage(String name, Object arguments) {
    switch (name) {
      case home:
        return HomePage();
      case selectAsset:
        return SelectAssetView();
      case historyDetails:
        return TransactionDetailsView();
      case portfolio:
        return PortfolioPage();
      case exchange:
        return ExchangePage();
      case orders:
        return OrdersPage();
      case more:
        return MorePage();
      case settings:
        return SettingsView();
      case support:
        return SupportView();
      case profile:
        return ProfileView();
      case upAccMain:
        return UpgradeAccountMainView();
      case upAccChooseDoc:
        return UpgradeAccountChooseDocView();
      case upAccDoc:
        return UpgradeAccountDocView();
      case upAccQuest:
        return UpgradeAccountQuestView();
      case upAccResult:
        return UpgradeAccountResult();
      default:
        return Scaffold(appBar: AppBar(title: Text(name)));
    }
  }
}
