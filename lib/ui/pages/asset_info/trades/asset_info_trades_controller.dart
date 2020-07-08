import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/models/order_data.dart';
import 'package:antares_wallet/services/repositories/order_repository.dart';
import 'package:get/get.dart';

class AssetInfoTradesController extends GetxController {
  final _repository = Get.find<OrderRepository>();
  final AssetData _asset = Get.arguments as AssetData;

  List<OrderData> _orders = List();

  List<OrderData> get orders => _orders;

  @override
  void onInit() async {
    super.onInit();
    _orders = await _repository.getOrdersBySymbol(_asset.symbol);
    update();
  }
}
