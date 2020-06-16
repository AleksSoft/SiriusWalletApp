// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:antares_wallet/ui/views/portfolio/portfolio_page.dart';
import 'package:antares_wallet/ui/views/portfolio/transaction_details_view.dart';
import 'package:antares_wallet/models/portfolio_history_item.dart';

abstract class Routes {
  static const portfolioRoute = '/';
  static const transactionDetailsRoute = '/transaction-details-route';
  static const all = {
    portfolioRoute,
    transactionDetailsRoute,
  };
}

class PortfolioNestedRouter extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<PortfolioNestedRouter>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.portfolioRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => PortfolioView(),
          settings: settings,
        );
      case Routes.transactionDetailsRoute:
        if (hasInvalidArgs<TransactionDetailsViewArguments>(args,
            isRequired: true)) {
          return misTypedArgsRoute<TransactionDetailsViewArguments>(args);
        }
        final typedArgs = args as TransactionDetailsViewArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => TransactionDetailsView(typedArgs.details),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//TransactionDetailsView arguments holder class
class TransactionDetailsViewArguments {
  final PortfolioHistoryItem details;
  TransactionDetailsViewArguments({@required this.details});
}
