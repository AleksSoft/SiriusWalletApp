import 'dart:convert';
import 'dart:math';

import 'package:bitcoin_flutter/bitcoin_flutter.dart';
import 'package:bitcoin_flutter/src/models/networks.dart' as BtcNetworks;
import 'package:bitcoin_flutter/src/payments/index.dart' show PaymentData;
import 'package:web3dart/crypto.dart';
import 'package:web3dart/web3dart.dart';

import 'blockchain_network_type.dart';
import 'blockchain_protocol_code.dart';
import 'blockchain_wallet.dart';

class BlockchainService {
  static Future<BlockchainWallet> createPrivateWallet(
    String name,
    BlockchainNetworkType networkType,
    BlockchainProtocolCode protocolCode,
  ) async {
    BlockchainData data;

    if (protocolCode == BlockchainProtocolCode.ETH) {
      EthPrivateKey credentials = EthPrivateKey.createRandom(Random.secure());
      final pKey = credentials.privateKey;
      EthereumAddress ethAddress = await credentials.extractAddress();
      data = BlockchainData(
        ethAddress.hex,
        pKey.toString(),
        privateKeyBytesToPublic(pKey).toString(),
      );
    } else {
      final keyPair = ECPair.makeRandom(
        network: networkType == BlockchainNetworkType.TEST_NET
            ? BtcNetworks.testnet
            : BtcNetworks.bitcoin,
        rng: _rng,
      );
      final address = P2PKH(
        data: new PaymentData(pubkey: keyPair.publicKey),
      ).data.address;
      data = BlockchainData(
        address,
        keyPair.publicKey.toString(),
        keyPair.privateKey.toString(),
      );
    }

    return BlockchainWallet(
      name: name,
      networkType: networkType,
      protocolCode: protocolCode,
      address: data.address,
      privateKey: data.privateKey,
      publicKey: data.publicKey,
    );
  }

  /// deterministic RNG for testing only
  static _rng(int number) {
    var rand = new Random.secure();
    var codeUnits = new List.generate(32, (index) {
      return rand.nextInt(33) + 89;
    });

    return utf8.encode(String.fromCharCodes(codeUnits));
  }
}

class BlockchainData {
  final String address;
  final String privateKey;
  final String publicKey;

  const BlockchainData(this.address, this.privateKey, this.publicKey);
}
