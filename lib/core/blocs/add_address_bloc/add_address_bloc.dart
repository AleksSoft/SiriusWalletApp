import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sirius/core/repositories/repositories.dart';
import 'package:sirius/locator.dart';

import 'bloc.dart';

class AddAddressBloc extends Bloc<AddAddressEvent, AddAddressState> {
  final AddressRepository _addressRepository = locator<AddressRepository>();

  @override
  AddAddressState get initialState => AddAddressState.empty();

  @override
  Stream<AddAddressState> transformEvents(
    Stream<AddAddressEvent> events,
    Stream<AddAddressState> Function(AddAddressEvent event) next,
  ) {
    final nonDebounceStream = events.where((event) {
      return (event is! NameChanged && event is! BlockchainChanged);
    });
    final debounceStream = events.where((event) {
      return (event is NameChanged || event is BlockchainChanged);
    }).debounceTime(Duration(milliseconds: 300));
    return super.transformEvents(
      nonDebounceStream.mergeWith([debounceStream]),
      next,
    );
  }

  @override
  Stream<AddAddressState> mapEventToState(AddAddressEvent event) async* {
    if (event is NameChanged) {
      yield* _mapNameChangedToState(event.name);
    } else if (event is BlockchainChanged) {
      yield* _mapBlockchainChangedToState(event.blockchain);
    } else if (event is AddAddressSubmitted) {
      yield* _mapAddAddressToState(event.name, event.blockchain);
    }
  }

  Stream<AddAddressState> _mapNameChangedToState(String name) async* {
    yield state.update(
      name: name,
    );
  }

  Stream<AddAddressState> _mapBlockchainChangedToState(
    String blockchainStr,
  ) async* {
    yield state.update(
      blockchain: blockchainStr,
    );
  }

  Stream<AddAddressState> _mapAddAddressToState(
    String name,
    String blockchain,
  ) async* {
    yield AddAddressState.loading(name, blockchain);
    try {
      await _addressRepository.submitAddress(name, blockchain);
      yield AddAddressState.success(name, blockchain);
    } catch (error) {
      print(error);
      yield AddAddressState.failure(name, blockchain);
    }
  }
}
