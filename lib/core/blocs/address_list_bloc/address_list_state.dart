import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:sirius/core/models/models.dart';

abstract class AddressListState extends Equatable {
  const AddressListState();

  @override
  List<Object> get props => [];
}

class AddressListEmpty extends AddressListState {}

class AddressListLoading extends AddressListState {}

class AddressListLoaded extends AddressListState {
  final List<Address> addressList;

  const AddressListLoaded({@required this.addressList})
      : assert(addressList != null);

  @override
  List<Object> get props => [addressList];
}

class AddressListError extends AddressListState {}
