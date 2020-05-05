import 'package:flutter_test/flutter_test.dart';
import 'package:sirius/model/app_state.dart';
import 'package:sirius/model/blockchain_wallet.dart';
import 'package:sirius/redux/actions/actions.dart';
import 'package:sirius/redux/reducers/app_state_reducer.dart';

void main() {
  test(
      'WHEN app state is empty '
      'AND add item action is called '
      'THEN app state has one item list ', () {
    final oldState = AppState.empty();
    final action = AddWalletAction(BlockchainWallet('Test', false));
    final expectedState = AppState(wallets: [BlockchainWallet('Test', false)]);

    final actualState = appReducer(oldState, action);

    expect(actualState, expectedState);
  });

  test(
      'WHEN app state has one item '
      'AND remove item action is called '
      'THEN app state has zero items ', () {
    final oldState = AppState(wallets: [BlockchainWallet('Test', false)]);
    final action = RemoveWalletAction(BlockchainWallet('Test', false));
    final expectedState = AppState.empty();

    final actualState = appReducer(oldState, action);

    expect(actualState, expectedState);
  });
}
