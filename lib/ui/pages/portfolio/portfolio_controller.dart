import 'package:antares_wallet/services/repositories/portfolio_repository.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:get/get.dart';

class PortfolioController extends GetxController {
  static PortfolioController get con => Get.find();

  final _repository = Get.find<PortfolioRepository>();

  final _walletAssets = List<WalletsResponse_WalletAsset>().obs;
  List<WalletsResponse_WalletAsset> get walletAssets =>
      this._walletAssets.value;
  set walletAssets(List<WalletsResponse_WalletAsset> value) =>
      this._walletAssets.value = value;

  Future<void> getWalletAssets() async {
    walletAssets = await _repository.getWalletAssets();
  }
}
