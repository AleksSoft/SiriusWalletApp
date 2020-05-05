import 'package:redux/redux.dart';
import 'package:sirius/model/blockchain_wallet.dart';
import 'package:sirius/redux/actions/actions.dart';

final walletsReducer = combineReducers<List<BlockchainWallet>>([
  TypedReducer<List<BlockchainWallet>, AddWalletAction>(_addWallet),
  TypedReducer<List<BlockchainWallet>, RemoveWalletAction>(_removeWallet),
  TypedReducer<List<BlockchainWallet>, WalletsLoadedAction>(_loadWallet),
]);

List<BlockchainWallet> _addWallet(
    List<BlockchainWallet> wallets, AddWalletAction action) {
  return List.from(wallets)..add(action.wallet);
}

List<BlockchainWallet> _removeWallet(
    List<BlockchainWallet> wallets, RemoveWalletAction action) {
  return List.from(wallets)
    ..removeWhere(
      (wallet) => wallet.name == action.wallet.name,
    );
}

List<BlockchainWallet> _loadWallet(
    List<BlockchainWallet> wallets, WalletsLoadedAction action) {
  return action.wallets;
}
