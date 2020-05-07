import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_dev_tools/redux_dev_tools.dart';
import 'package:sirius/containers/tab_selector.dart';
import 'package:sirius/model/app_state.dart';
import 'package:sirius/presentation/portfolio/portfolio_screen.dart';
import 'package:sirius/redux/actions/actions.dart';

import 'app_localizations.dart';
import 'containers/active_tab.dart';
import 'containers/home_screen.dart';
import 'model/app_tab.dart';

class SiriusApp extends StatelessWidget {
  final Store<AppState> store;

  SiriusApp(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Lykke Wallet',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
          accentColor: CupertinoColors.activeBlue,
          backgroundColor: CupertinoColors.lightBackgroundGray,
        ),
        supportedLocales: [
          Locale('en', 'US'),
          Locale('ru', 'RU'),
        ],
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
        home: StoreBuilder<AppState>(
          onInit: (store) => store.dispatch(FetchWalletsAction()),
          builder: (context, store) => MainView(store),
        ),
      ),
    );
  }
}

class MainView extends StatelessWidget {
  final DevToolsStore<AppState> store;

  MainView(this.store);

  @override
  Widget build(BuildContext context) {
    return ActiveTab(builder: (context, activeTab) {
      return Scaffold(
        body: _buildBody(activeTab),
        bottomNavigationBar: TabSelector(),
      );
    });
  }

  Widget _buildBody(AppTab tab) {
    switch (tab) {
      case AppTab.home:
        return HomeScreen();
      case AppTab.portfolio:
        return PortfolioScreen();
      case AppTab.exchange:
      case AppTab.orders:
      case AppTab.more:
      default:
        return Scaffold(appBar: AppBar(title: Text(EnumToString.parse(tab))));
    }
  }
}
