import 'dart:math';

import 'package:sirius/core/models/models.dart';
import 'package:web3dart/web3dart.dart';

class BlockchainService {
  static Future<Address> updateEtheriumAddress(Address addressObj) async {
    Credentials credentials = EthPrivateKey.createRandom(Random.secure());
    final ethAddress = await credentials.extractAddress();
    addressObj.address = ethAddress.addressBytes.toString();
    // TODO: get private and public keys (sign is easy for now)
//    addressObj.privateKey = credentials.

    return addressObj;
  }
}
