import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:sirius/containers/add_item_dialog.dart';
import 'package:sirius/containers/wallet_list.dart';
import 'package:sirius/model/app_state.dart';
import 'package:sirius/redux/actions/actions.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreBuilder<AppState>(
      onInit: (store) => store.dispatch(FetchWalletsAction()),
      builder: (context, store) => Scaffold(
        appBar: AppBar(title: Text('Sirius Wallet')),
        body: WalletList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _openAddItemDialog(context),
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void _openAddItemDialog(BuildContext context) {
    showDialog(context: context, builder: (context) => AddWalletDialog());
  }
}
