// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:antares_wallet/ui/views/initial/initial_view.dart';
import 'package:antares_wallet/ui/views/login/login_view.dart';
import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/ui/views/select_asset/select_asset_view.dart';
import 'package:antares_wallet/ui/views/more/backup/backup_copy_key_view.dart';
import 'package:antares_wallet/ui/views/more/backup/backup_confirm_key_view.dart';
import 'package:antares_wallet/ui/views/more/upgrade/upgrade_account_main.dart';
import 'package:antares_wallet/ui/views/more/upgrade/upgrade_account_choose_doc.dart';
import 'package:antares_wallet/ui/views/more/upgrade/upgrade_account_doc.dart';
import 'package:antares_wallet/ui/views/more/upgrade/upgrade_account_quest.dart';
import 'package:antares_wallet/ui/views/more/upgrade/upgrade_account_result.dart';
import 'package:antares_wallet/ui/views/asset_info/asset_info_view.dart';
import 'package:antares_wallet/ui/views/portfolio/transaction_details_view.dart';
import 'package:antares_wallet/models/transaction_details.dart';
import 'package:antares_wallet/ui/views/pair_trading/pair_trading_view.dart';
import 'package:antares_wallet/models/asset_pair_data.dart';

abstract class Routes {
  static const initialViewRoute = '/';
  static const loginViewRoute = '/login-view-route';
  static const selectAssetRoute = '/select-asset-route';
  static const backUpCopyKeyRoute = '/back-up-copy-key-route';
  static const backUpConfirmKeyRoute = '/back-up-confirm-key-route';
  static const upgradeAccountMainRoute = '/upgrade-account-main-route';
  static const upgradeAccountChooseDocRoute =
      '/upgrade-account-choose-doc-route';
  static const upgradeAccountDocRoute = '/upgrade-account-doc-route';
  static const upgradeAccountQuestRoute = '/upgrade-account-quest-route';
  static const upgradeAccountResultRoute = '/upgrade-account-result-route';
  static const assetInfoRoute = '/asset-info-route';
  static const transactionDetailsRoute = '/transaction-details-route';
  static const pairTradingView = '/pair-trading-view';
  static const all = {
    initialViewRoute,
    loginViewRoute,
    selectAssetRoute,
    backUpCopyKeyRoute,
    backUpConfirmKeyRoute,
    upgradeAccountMainRoute,
    upgradeAccountChooseDocRoute,
    upgradeAccountDocRoute,
    upgradeAccountQuestRoute,
    upgradeAccountResultRoute,
    assetInfoRoute,
    transactionDetailsRoute,
    pairTradingView,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.initialViewRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => InitialView(),
          settings: settings,
        );
      case Routes.loginViewRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => LoginView(),
          settings: settings,
        );
      case Routes.selectAssetRoute:
        if (hasInvalidArgs<SelectAssetViewArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<SelectAssetViewArguments>(args);
        }
        final typedArgs = args as SelectAssetViewArguments;
        return MaterialPageRoute<AssetData>(
          builder: (context) => SelectAssetView(typedArgs.args),
          settings: settings,
        );
      case Routes.backUpCopyKeyRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => BackUpCopyKeyView(),
          settings: settings,
          fullscreenDialog: true,
        );
      case Routes.backUpConfirmKeyRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => BackUpConfirmKeyView(),
          settings: settings,
        );
      case Routes.upgradeAccountMainRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => UpgradeAccountMainView(),
          settings: settings,
          fullscreenDialog: true,
        );
      case Routes.upgradeAccountChooseDocRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => UpgradeAccountChooseDocView(),
          settings: settings,
        );
      case Routes.upgradeAccountDocRoute:
        if (hasInvalidArgs<UpgradeAccountDocViewArguments>(args,
            isRequired: true)) {
          return misTypedArgsRoute<UpgradeAccountDocViewArguments>(args);
        }
        final typedArgs = args as UpgradeAccountDocViewArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => UpgradeAccountDocView(typedArgs.docType),
          settings: settings,
        );
      case Routes.upgradeAccountQuestRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => UpgradeAccountQuestView(),
          settings: settings,
        );
      case Routes.upgradeAccountResultRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => UpgradeAccountResultView(),
          settings: settings,
        );
      case Routes.assetInfoRoute:
        if (hasInvalidArgs<AssetInfoViewArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<AssetInfoViewArguments>(args);
        }
        final typedArgs = args as AssetInfoViewArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              AssetInfoView(typedArgs.asset, key: typedArgs.key),
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
          fullscreenDialog: true,
        );
      case Routes.pairTradingView:
        if (hasInvalidArgs<PairTradingViewArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<PairTradingViewArguments>(args);
        }
        final typedArgs = args as PairTradingViewArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => PairTradingView(data: typedArgs.data),
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

//SelectAssetView arguments holder class
class SelectAssetViewArguments {
  final SelectAssetArgs args;
  SelectAssetViewArguments({@required this.args});
}

//UpgradeAccountDocView arguments holder class
class UpgradeAccountDocViewArguments {
  final DocType docType;
  UpgradeAccountDocViewArguments({@required this.docType});
}

//AssetInfoView arguments holder class
class AssetInfoViewArguments {
  final AssetData asset;
  final Key key;
  AssetInfoViewArguments({@required this.asset, this.key});
}

//TransactionDetailsView arguments holder class
class TransactionDetailsViewArguments {
  final TransactionDetails details;
  TransactionDetailsViewArguments({@required this.details});
}

//PairTradingView arguments holder class
class PairTradingViewArguments {
  final AssetPairData data;
  PairTradingViewArguments({@required this.data});
}
