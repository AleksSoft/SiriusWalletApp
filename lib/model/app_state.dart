import 'package:equatable/equatable.dart';
import 'package:sirius/model/app_tab.dart';
import 'package:sirius/model/blockchain_wallet.dart';

class AppState extends Equatable {
  final List<BlockchainWallet> wallets;
  final AppTab activeTab;

  AppState({
    this.wallets = const [],
    this.activeTab = AppTab.home,
  });

  factory AppState.empty() => AppState(wallets: List());

  AppState copyWith({
    List<BlockchainWallet> wallets,
    AppTab activeTab,
  }) {
    return AppState(
      wallets: wallets ?? this.wallets,
      activeTab: activeTab ?? this.activeTab,
    );
  }

  Map<String, dynamic> toJson() => {
        'walletItems': wallets,
        'activeTab': activeTab,
      };

  @override
  String toString() => "${this.toJson()}";

  @override
  List<Object> get props => [wallets, activeTab];
}
