import 'package:equatable/equatable.dart';

abstract class AddressListEvent extends Equatable {
  const AddressListEvent();

  @override
  List<Object> get props => [];
}

class FetchAddressList extends AddressListEvent {}
