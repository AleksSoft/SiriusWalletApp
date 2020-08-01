import 'package:antares_wallet/services/repositories/trading_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:get/get.dart';

class AssetInfoTradesController extends GetxController {
  final AssetPair _asset = Get.arguments as AssetPair;

  List<LimitOrderModel> _orders = List();

  List<LimitOrderModel> get orders => _orders;

  @override
  void onInit() async {
    _orders = await TradingRepository.getOrders(assetPairId: _asset.id);
    super.onInit();
  }
}
