import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:sirius/core/models/models.dart';
import 'package:sirius/core/repositories/repositories.dart';
import 'package:sirius/locator.dart';

import 'bloc.dart';

class AddressListBloc extends Bloc<AddressListEvent, AddressListState> {
  final AddressRepository _addressRepository = locator<AddressRepository>();

  @override
  AddressListState get initialState => AddressListEmpty();

  @override
  Stream<AddressListState> mapEventToState(AddressListEvent event) async* {
    if (event is FetchAddressList) {
      yield* _mapFetchAddressListToState();
    } else if (event is DeleteAddress) {
      yield* _mapDeleteAddressToState(event.bWallet);
    }
  }

  Stream<AddressListState> _mapFetchAddressListToState() async* {
    yield AddressListLoading();
    try {
      final List<BlockchainWallet> addressList =
          await _addressRepository.fetchAddressesList();
      yield addressList.isEmpty
          ? AddressListEmpty()
          : AddressListLoaded(addressList: addressList);
    } catch (_) {
      yield AddressListError();
    }
  }

  Stream<AddressListState> _mapDeleteAddressToState(
      BlockchainWallet bWallet) async* {
    try {
      final List<BlockchainWallet> addressList =
          await _addressRepository.deleteAddress(bWallet);
      yield addressList.isEmpty
          ? AddressListEmpty()
          : AddressListLoaded(addressList: addressList);
    } catch (_) {
      yield AddressListError();
    }
  }
}
