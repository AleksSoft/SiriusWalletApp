import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:get/get.dart';

class PortfolioRepository {
  static final _api = Get.find<ApiService>();

  static Future<List<WalletsResponse_WalletAsset>> getWalletAssets() async {
    try {
      var response = await _api.client.getWallets(Empty());
      return response.result.lykke.assets;
    } catch (e) {
      Future.delayed(Duration()).then(
        (_) => Get.defaultDialog(
          title: 'Error',
          middleText: e.message,
          onConfirm: () => Get.back(),
        ),
      );
      return List();
    }
  }
}
