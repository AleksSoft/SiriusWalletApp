import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirius/core/common/common.dart';
import 'package:sirius/core/models/models.dart';
import 'package:sirius/core/services/blockchain_service.dart';

class AddressRepository {
  Future<List<Address>> fetchAddressesList() async {
    final prefs = await SharedPreferences.getInstance();
    List<Address> addressList = prefs
        .getStringList(PrefsKey.address_list)
        .map((a) => Address.fromJson(json.decode(a)))
        .toList();

    if (addressList == null || addressList.isEmpty) {
      return List<Address>();
    } else {
      return addressList;
    }
  }

  Future submitAddress(String name, String blockchain) async {
    final prefs = await SharedPreferences.getInstance();

    List<String> addressList =
        prefs.getStringList(PrefsKey.address_list) ?? List();
    Address updated = await BlockchainService.updateEtheriumAddress(
        Address(name: name, blockchain: blockchain));

    addressList.add(updated.toString());

    prefs.setStringList(PrefsKey.address_list, addressList);
  }
}
