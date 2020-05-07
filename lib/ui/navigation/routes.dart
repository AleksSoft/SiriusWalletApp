import 'package:flutter/material.dart';
import 'package:sirius/ui/views/pages/portfolio_page.dart';

class Routes {
  Routes._();

  static const root = '/';
  static const home = '/home';
  static const portfolio = '/portfolio';
  static const exchange = '/exchange';
  static const orders = '/orders';
  static const more = '/more';

  static MaterialPageRoute generateRoute(RouteSettings routeSettings) {
    return MaterialPageRoute(
      settings: routeSettings,
      builder: (context) =>
          _buildPage(routeSettings.name, routeSettings.arguments),
    );
  }

  static Widget _buildPage(String name, Object arguments) {
    switch (name) {
      case portfolio:
        return PortfolioPage();
      default:
        return Scaffold(appBar: AppBar(title: Text(name)));
    }
  }
}
