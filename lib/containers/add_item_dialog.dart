import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:sirius/blockchain/blockchain_network_type.dart';
import 'package:sirius/blockchain/blockchain_protocol_code.dart';
import 'package:sirius/model/app_state.dart';
import 'package:sirius/redux/actions/actions.dart';
import 'package:tuple/tuple.dart';

class AddWalletDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, OnWalletAddedCallback>(
      converter: (store) {
        return (walletName, protocolCode, networkType) => store.dispatch(
              GenerateWalletAction(walletName, protocolCode, networkType),
            );
      },
      builder: (context, callback) {
        return AddWalletDialogWidget(callback);
      },
    );
  }
}

class AddWalletDialogWidget extends StatefulWidget {
  final OnWalletAddedCallback callback;
  final dropItems = [
    Tuple3(
      'Bitcoin - MainNet',
      BlockchainProtocolCode.BTC,
      BlockchainNetworkType.MAIN_NET,
    ),
    Tuple3(
      'Bitcoin - TestNet',
      BlockchainProtocolCode.BTC,
      BlockchainNetworkType.TEST_NET,
    ),
    Tuple3(
      'Ethereum',
      BlockchainProtocolCode.ETH,
      null,
    ),
  ];

  AddWalletDialogWidget(this.callback);

  @override
  State<StatefulWidget> createState() => AddWalletDialogWidgetState(callback);
}

class AddWalletDialogWidgetState extends State<AddWalletDialogWidget> {
  String walletName;
  Tuple3 dropdownData;

  final OnWalletAddedCallback callback;

  AddWalletDialogWidgetState(this.callback);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(16.0),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'My wallet 1',
                  ),
                  onChanged: _handleTextChanged,
                ),
              )
            ],
          ),
          SizedBox(height: 8.0),
          DropdownButton(
            isExpanded: true,
            hint: const Text('select'),
            items: widget.dropItems
                .map((di) => DropdownMenuItem(child: Text(di.item1), value: di))
                .toList(),
            onChanged: (value) => _handleDropdownChanged(value),
            value: dropdownData,
          ),
        ],
      ),
      actions: <Widget>[
        FlatButton(
            child: const Text('CANCEL'),
            onPressed: () {
              Navigator.pop(context);
            }),
        FlatButton(
            child: const Text('ADD'),
            onPressed: () {
              Navigator.pop(context);
              callback(walletName, dropdownData.item2, dropdownData.item3);
            }),
      ],
    );
  }

  _handleTextChanged(String newWalletName) {
    setState(() {
      walletName = newWalletName;
    });
  }

  _handleDropdownChanged(Tuple3 value) {
    setState(() {
      dropdownData = value;
    });
  }
}

typedef OnWalletAddedCallback = Function(
  String walletName,
  BlockchainProtocolCode protocolCode,
  BlockchainNetworkType networkType,
);
