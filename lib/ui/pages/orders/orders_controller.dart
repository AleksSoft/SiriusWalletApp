import 'package:antares_wallet/services/repositories/orders_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/google/protobuf/timestamp.pb.dart';
import 'package:get/get.dart';

class OrdersController extends GetxController {
  static OrdersController get con => Get.find();

  final _orders = List<LimitOrderModel>().obs;
  List<LimitOrderModel> get orders => this._orders.value;
  set orders(List<LimitOrderModel> value) => this._orders.value = value;

  final _trades = List<TradesResponse_TradeModel>().obs;
  List<TradesResponse_TradeModel> get trades => this._trades.value;
  set trades(List<TradesResponse_TradeModel> value) =>
      this._trades.value = value;

  Future getOrders() async => orders = await OrdersRepository.getOrders();

  Future getTrades(
    int take,
    int skip, {
    String assetPairId,
    String tradeType,
    Timestamp fromDate,
    Timestamp toDate,
  }) async =>
      trades = await OrdersRepository.getTrades(
        take: take,
        skip: skip,
        assetPairId: assetPairId,
        tradeType: tradeType,
        fromDate: fromDate,
        toDate: toDate,
      );

  cancelOrder(String id) async => await OrdersRepository.cancelOrder(id);

  cancelAllOrders() async => await OrdersRepository.cancelAllOrders();

  placeLimitOrder(
    String assetId,
    String assetPairId,
    double volume,
    double price,
  ) async =>
      await OrdersRepository.placeLimitOrder(
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
      await OrdersRepository.placeMarketOrder(
        assetId: assetId,
        assetPairId: assetPairId,
        volume: volume,
      );
}
