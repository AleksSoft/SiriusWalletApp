import 'dart:async';

import 'package:redux/redux.dart';
import 'package:sirius/blockchain/blockchain_network_type.dart';
import 'package:sirius/blockchain/blockchain_protocol_code.dart';
import 'package:sirius/blockchain/blockchain_service.dart';
import 'package:sirius/model/app_state.dart';
import 'package:sirius/redux/actions/actions.dart';

class BlockchainMiddleware extends MiddlewareClass<AppState> {
  @override
  Future<void> call(Store<AppState> store, action, NextDispatcher next) async {
    if (action is GenerateWalletAction) {
      await _createWallet(
        store,
        action.name,
        action.protocolCode,
        action.networkType,
      );
    }
    next(action);
  }

  Future _createWallet(
    Store<AppState> store,
    String name,
    BlockchainProtocolCode protocolCode,
    BlockchainNetworkType networkType,
  ) async {
    final wallet = await BlockchainService.createPrivateWallet(
      name,
      networkType,
      protocolCode,
    );
    store.dispatch(AddWalletAction(wallet));
  }
}
