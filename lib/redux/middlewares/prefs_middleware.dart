import 'dart:async';
import 'dart:convert';

import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirius/model/app_state.dart';
import 'package:sirius/model/blockchain_wallet.dart';
import 'package:sirius/redux/actions/actions.dart';

const String ITEMS_KEY = "ITEMS_KEY";

class PrefsMiddleware extends MiddlewareClass<AppState> {
  final SharedPreferences preferences;

  PrefsMiddleware(this.preferences);

  @override
  Future<void> call(Store<AppState> store, action, NextDispatcher next) async {
    if (action is AddWalletAction || action is RemoveWalletAction) {
      await _saveItemsToPrefs(store.state.wallets);
    }

    if (action is FetchWalletsAction) {
      await _loadItemsFromPrefs(store);
    }

    next(action);
  }

  Future _saveItemsToPrefs(List<BlockchainWallet> items) async {
    var itemsString = json.encode(items);
    await preferences.setString(ITEMS_KEY, itemsString);
  }

  Future _loadItemsFromPrefs(Store<AppState> store) async {
    var stateString = preferences.getString(ITEMS_KEY);
    if (stateString == null) return;
    final items = (json.decode(stateString) as List)
        ?.map((i) => BlockchainWallet.fromJson(i as Map<String, dynamic>))
        ?.toList();
    store.dispatch(WalletsLoadedAction(items));
  }
}
