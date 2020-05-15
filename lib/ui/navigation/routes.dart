import 'package:flutter/material.dart';
import 'package:sirius/ui/views/exchange/exchange_page.dart';
import 'package:sirius/ui/views/home/home_page.dart';
import 'package:sirius/ui/views/more/more_page.dart';
import 'package:sirius/ui/views/more/profile_view.dart';
import 'package:sirius/ui/views/more/settings_view.dart';
import 'package:sirius/ui/views/more/support_view.dart';
import 'package:sirius/ui/views/orders/orders_page.dart';
import 'package:sirius/ui/views/portfolio/portfolio_page.dart';

class Routes {
  Routes._();

  static const root = '/';
  static const home = '/home';
  static const portfolio = '/portfolio';
  static const exchange = '/exchange';
  static const orders = '/orders';
  static const more = '/more';
  static const settings = '/settings';
  static const support = '/support';
  static const profile = '/profile';

  static MaterialPageRoute generateRoute(RouteSettings routeSettings) {
    return MaterialPageRoute(
      settings: routeSettings,
      builder: (context) =>
          _buildPage(routeSettings.name, routeSettings.arguments),
    );
  }

  static Widget _buildPage(String name, Object arguments) {
    switch (name) {
      case home:
        return HomePage();
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
      default:
        return Scaffold(appBar: AppBar(title: Text(name)));
    }
  }
}
