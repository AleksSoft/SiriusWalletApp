import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:sirius/model/app_state.dart';
import 'package:sirius/model/blockchain_wallet.dart';
import 'package:sirius/redux/actions/actions.dart';

class WalletItem extends StatelessWidget {
  final BlockchainWallet wallet;

  WalletItem(this.wallet);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 4.0,
      child: ListTile(
        title: Text(wallet.name),
        subtitle: Text(EnumToString.parse(wallet.protocolCode)),
        trailing: StoreConnector<AppState, OnRemoveIconClicked>(
          converter: (store) {
            return (item) => store.dispatch(RemoveWalletAction(item));
          },
          builder: (context, callback) {
            return IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                callback(wallet);
              },
            );
          },
        ),
      ),
    );
  }
}

typedef OnStateChanged = Function(BlockchainWallet item);

typedef OnRemoveIconClicked = Function(BlockchainWallet item);
