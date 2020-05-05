import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sirius/model/app_state.dart';
import 'package:sirius/model/blockchain_wallet.dart';
import 'package:sirius/redux/actions/actions.dart';
import 'package:sirius/redux/middlewares/prefs_middleware.dart';

import 'mocks.dart';

void main() {
  StoreMock store;
  SharedPreferencesMock sharedPreferences;
  PrefsMiddleware middleware;

  setUp(() {
    store = StoreMock();
    sharedPreferences = SharedPreferencesMock();
    middleware = PrefsMiddleware(sharedPreferences);
  });

  test(
      'WHEN add cart item action is called '
      'THEN string is saved to preferences', () async {
    when(store.state).thenReturn(AppState.empty());

    final cartItem = BlockchainWallet('Test', false);
    final action = AddWalletAction(cartItem);

    await middleware.call(store, action, (_) {});

    verify(sharedPreferences.setString(any, any));
  });

  test(
      'WHEN fetch cart items action is called '
      'THEN string are loaded from preferences', () async {
    when(sharedPreferences.getString(any)).thenReturn("{}");

    final action = FetchWalletsAction();

    await middleware.call(store, action, (_) {});

    verify(sharedPreferences.getString(any));
    verify(store.dispatch(isInstanceOf<WalletsLoadedAction>()));
  });
}
