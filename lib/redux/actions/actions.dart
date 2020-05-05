import 'package:equatable/equatable.dart';
import 'package:sirius/blockchain/blockchain_network_type.dart';
import 'package:sirius/blockchain/blockchain_protocol_code.dart';
import 'package:sirius/list/wallet_list.dart';
import 'package:sirius/model/app_tab.dart';
import 'package:sirius/model/blockchain_wallet.dart';

class AddWalletAction extends Equatable {
  final BlockchainWallet wallet;

  AddWalletAction(this.wallet);

  @override
  List<Object> get props => [wallet];
}

class GenerateWalletAction extends Equatable {
  final String name;
  final BlockchainProtocolCode protocolCode;
  final BlockchainNetworkType networkType;

  GenerateWalletAction(this.name, this.protocolCode, this.networkType);

  @override
  List<Object> get props => [name, protocolCode, networkType];
}

class FetchWalletsAction extends Equatable {
  @override
  List<Object> get props => [];
}

class WalletsLoadedAction extends Equatable {
  final List<BlockchainWallet> wallets;

  WalletsLoadedAction(this.wallets);

  @override
  List<Object> get props => [wallets];
}

class RemoveWalletAction extends Equatable {
  final BlockchainWallet wallet;

  RemoveWalletAction(this.wallet);

  @override
  List<Object> get props => [wallet];
}

class FetchApiWalletsAction extends Equatable {
  final OnStateChanged callback;

  FetchApiWalletsAction(this.callback);

  @override
  List<Object> get props => [callback];
}

class UpdateTabAction extends Equatable {
  final AppTab newTab;

  UpdateTabAction(this.newTab);

  @override
  List<Object> get props => [newTab];
}
