import 'package:antares_wallet/services/repositories/order_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:get/get.dart';

class OrdersController extends GetxController {
  static OrdersController get con => Get.find();

  final _repository = Get.find<OrderRepository>();

  final _orders = List<LimitOrderModel>().obs;
  List<LimitOrderModel> get orders => this._orders.value;
  set orders(List<LimitOrderModel> value) => this._orders.value = value;

  final _trades = List<TradesResponse_TradeModel>().obs;
  List<TradesResponse_TradeModel> get trades => this._trades.value;
  set trades(List<TradesResponse_TradeModel> value) =>
      this._trades.value = value;

  @override
  void onInit() async {
    await getOrders();
    super.onInit();
  }

  getOrders() async {
    orders = await _repository.getOrders();
  }

  getTrades() async {
    // trades = await _repository.getTrades();
  }

  cancelOrder(String id) async {
    await _repository.cancelOrder(id);
  }

  cancelAllOrders() async {
    await _repository.cancelAllOrders();
  }

  placeLimitOrder(
    String assetId,
    String assetPairId,
    double volume,
    double price,
  ) async =>
      await _repository.placeLimitOrder(
        assetId: assetId,
        assetPairId: assetPairId,
        volume: volume,
        price: price,
      );

  placeMarketOrder(
    String assetId,
    String assetPairId,
    double volume,
  ) async =>
      await _repository.placeMarketOrder(
        assetId: assetId,
        assetPairId: assetPairId,
        volume: volume,
      );
}
