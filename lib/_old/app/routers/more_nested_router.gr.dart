// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:antares_wallet/ui/views/more/more_page.dart';
import 'package:antares_wallet/ui/views/more/settings_view.dart';
import 'package:antares_wallet/ui/views/more/profile_view.dart';
import 'package:antares_wallet/ui/views/more/support_view.dart';

abstract class Routes {
  static const moreRoute = '/';
  static const moreSettingsRoute = '/more-settings-route';
  static const moreProfileRoute = '/more-profile-route';
  static const moreSupportRoute = '/more-support-route';
  static const all = {
    moreRoute,
    moreSettingsRoute,
    moreProfileRoute,
    moreSupportRoute,
  };
}

class MoreNestedRouter extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<MoreNestedRouter>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.moreRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => MoreView(),
          settings: settings,
        );
      case Routes.moreSettingsRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SettingsView(),
          settings: settings,
        );
      case Routes.moreProfileRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => ProfileView(),
          settings: settings,
        );
      case Routes.moreSupportRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SupportView(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
