import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirius/core/common/common.dart';
import 'package:sirius/core/models/models.dart';
import 'package:sirius/core/services/blockchain_service.dart';

class AddressRepository {
  Future<List<BlockchainWallet>> fetchAddressesList() async {
    final prefs = await SharedPreferences.getInstance();
    List<BlockchainWallet> addressList = prefs
        .getStringList(PrefsKey.address_list)
        .map((a) => BlockchainWallet.fromJson(json.decode(a)))
        .toList();

    if (addressList == null || addressList.isEmpty) {
      return List<BlockchainWallet>();
    } else {
      return addressList;
    }
  }

  Future submitAddress(String name, String blockchain) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> addressList =
        prefs.getStringList(PrefsKey.address_list) ?? List();
    BlockchainWallet updated =
        BlockchainWallet(name: name, blockchain: blockchain);

    if (blockchain.startsWith('Bitcoin')) {
      updated = await BlockchainService.updateBitcoinAddress(updated);
    } else {
      updated = await BlockchainService.updateEtheriumAddress(updated);
    }
    addressList.add(updated.toString());

    prefs.setStringList(PrefsKey.address_list, addressList);
  }
}
