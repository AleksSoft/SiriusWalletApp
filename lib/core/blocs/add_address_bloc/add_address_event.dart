import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class AddAddressEvent extends Equatable {
  const AddAddressEvent();

  @override
  List<Object> get props => [];
}

class NameChanged extends AddAddressEvent {
  final String name;

  const NameChanged({@required this.name});

  @override
  List<Object> get props => [name];

  @override
  String toString() => 'NameChanged { name :$name }';
}

class BlockchainChanged extends AddAddressEvent {
  final String blockchain;

  const BlockchainChanged({@required this.blockchain});

  @override
  List<Object> get props => [blockchain];

  @override
  String toString() => 'BlockchainChanged { blockchain: $blockchain }';
}

class AddAddressSubmitted extends AddAddressEvent {
  final String name;
  final String blockchain;

  const AddAddressSubmitted({
    @required this.name,
    @required this.blockchain,
  });

  @override
  List<Object> get props => [name, blockchain];

  @override
  String toString() {
    return 'AddAddressSubmitted { name: $name, blockchain: $blockchain }';
  }
}
