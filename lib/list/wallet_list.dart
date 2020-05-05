import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:sirius/list/wallet_list_item.dart';
import 'package:sirius/model/app_state.dart';
import 'package:sirius/model/blockchain_wallet.dart';
import 'package:sirius/redux/actions/actions.dart';

class WalletList extends StatefulWidget {
  @override
  _WalletListState createState() => _WalletListState();
}

class _WalletListState extends State<WalletList> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, WalletListViewModel>(
      converter: (store) => WalletListViewModel.build(store),
      builder: (context, viewModel) {
        return Column(
          children: <Widget>[
            FlatButton(
              onPressed: () => viewModel.onRefresh(_onViewStateChanged),
              child: Text('Refresh'),
            ),
            Expanded(
              child: _isLoading
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: viewModel.wallets.length,
                      itemBuilder: (context, position) => WalletItem(
                        viewModel.wallets[position],
                      ),
                    ),
            ),
          ],
        );
      },
    );
  }

  void _onViewStateChanged(bool isLoading) {
    setState(() {
      _isLoading = isLoading;
    });
  }
}

class WalletListViewModel {
  final List<BlockchainWallet> wallets;
  final Function(OnStateChanged) onRefresh;

  WalletListViewModel({this.wallets, this.onRefresh});

  static WalletListViewModel build(Store<AppState> store) {
    return WalletListViewModel(
      wallets: store.state.wallets,
      onRefresh: (callback) {
        store.dispatch(FetchApiWalletsAction(callback));
      },
    );
  }
}

typedef OnStateChanged = Function(bool isLoading);
