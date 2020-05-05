import 'package:sirius/blockchain/blockchain_network_type.dart';
import 'package:sirius/blockchain/blockchain_protocol_code.dart';
import 'package:sirius/blockchain/blockchain_service.dart';
import 'package:sirius/model/blockchain_wallet.dart';

class ApiClient {
  Future<List<BlockchainWallet>> fetchApiWallets() {
    return Future.delayed(Duration(seconds: 1), () async {
      return [
        await BlockchainService.createPrivateWallet(
          'Btc - testnet',
          BlockchainNetworkType.TEST_NET,
          BlockchainProtocolCode.BTC,
        ),
        await BlockchainService.createPrivateWallet(
          'Btc - mainnet',
          BlockchainNetworkType.MAIN_NET,
          BlockchainProtocolCode.BTC,
        ),
        await BlockchainService.createPrivateWallet(
          'Eth',
          null,
          BlockchainProtocolCode.ETH,
        ),
      ];
    });
  }
}
