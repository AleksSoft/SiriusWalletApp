import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:sirius/core/models/models.dart';

abstract class AddressListEvent extends Equatable {
  const AddressListEvent();

  @override
  List<Object> get props => [];
}

class FetchAddressList extends AddressListEvent {}

class DeleteAddress extends AddressListEvent {
  final BlockchainWallet bWallet;

  const DeleteAddress({@required this.bWallet});

  @override
  List<Object> get props => [bWallet];

  @override
  String toString() => 'DeleteAddress ${bWallet.toString()}';
}
