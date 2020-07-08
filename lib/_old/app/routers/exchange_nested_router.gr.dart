// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:antares_wallet/ui/views/exchange/exchange_view.dart';

abstract class Routes {
  static const exchangeRoute = '/';
  static const all = {
    exchangeRoute,
  };
}

class ExchangeNestedRouter extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<ExchangeNestedRouter>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.exchangeRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => ExchangeView(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
