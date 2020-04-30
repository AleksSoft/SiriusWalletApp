import 'dart:convert';
import 'dart:math';

import 'package:bitcoin_flutter/bitcoin_flutter.dart';
import 'package:bitcoin_flutter/src/models/networks.dart' as BtcNetworks;
import 'package:bitcoin_flutter/src/payments/index.dart' show PaymentData;
import 'package:sirius/core/models/models.dart';
import 'package:web3dart/crypto.dart';
import 'package:web3dart/web3dart.dart';

class BlockchainService {
  static Future<BlockchainWallet> updateEtheriumAddress(
      BlockchainWallet bWallet) async {
    EthPrivateKey credentials = EthPrivateKey.createRandom(Random.secure());
    final pKey = credentials.privateKey;
    EthereumAddress ethAddress = await credentials.extractAddress();

    bWallet.address = ethAddress.hex;
    bWallet.privateKey = pKey.toString();
    bWallet.publicKey = privateKeyBytesToPublic(pKey).toString();

    return bWallet;
  }

  static Future<BlockchainWallet> updateBitcoinAddress(
      BlockchainWallet bWallet) async {
    final keyPair = ECPair.makeRandom(network: BtcNetworks.testnet, rng: _rng);
    final address =
        P2PKH(data: new PaymentData(pubkey: keyPair.publicKey)).data.address;

    bWallet.publicKey = keyPair.publicKey.toString();
    bWallet.privateKey = keyPair.privateKey.toString();
    bWallet.address = address;

    return bWallet;
  }

  /// deterministic RNG for testing only
  static _rng(int number) {
    var rand = new Random();
    var codeUnits = new List.generate(32, (index) {
      return rand.nextInt(33) + 89;
    });

    return utf8.encode(String.fromCharCodes(codeUnits));
  }
}
