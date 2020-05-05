import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_dev_tools/flutter_redux_dev_tools.dart';
import 'package:redux/redux.dart';
import 'package:redux_dev_tools/redux_dev_tools.dart';
import 'package:sirius/add_item/add_item_dialog.dart';
import 'package:sirius/list/wallet_list.dart';
import 'package:sirius/model/app_state.dart';
import 'package:sirius/redux/actions/actions.dart';

import 'app_localizations.dart';

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
          backgroundColor: Colors.black26,
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
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.account_balance_wallet),
        title: Text('SiriusWallet'),
      ),
      body: WalletList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openAddItemDialog(context),
        child: Icon(Icons.add),
      ),
      endDrawer: Container(
        width: 240.0,
        color: Colors.white,
        child: ReduxDevTools(store),
      ),
    );
  }

  void _openAddItemDialog(BuildContext context) {
    showDialog(context: context, builder: (context) => AddWalletDialog());
  }
}
