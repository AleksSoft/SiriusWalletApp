import 'package:antares_wallet/services/repositories/trading_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/google/protobuf/timestamp.pb.dart';
import 'package:get/get.dart';

import 'assets_controller.dart';

class OrdersController extends GetxController {
  static OrdersController get con => Get.find();

  final _assetsController = Get.find<AssetsController>();

  final _orders = List<LimitOrderModel>().obs;
  List<LimitOrderModel> get orders => this._orders.value;
  set orders(List<LimitOrderModel> value) => this._orders.value = value;

  final _trades = List<TradesResponse_TradeModel>().obs;
  List<TradesResponse_TradeModel> get trades => this._trades.value;
  set trades(List<TradesResponse_TradeModel> value) =>
      this._trades.value = value;

  @override
  void onInit() async {
    ever(_assetsController.initialized, (inited) async {
      if (inited) {
        await getOrders();
        await getTrades(10, 0);
      }
    });
    super.onInit();
  }

  Future getOrders() async => orders = await TradingRepository.getOrders();

  Future getTrades(
    int take,
    int skip, {
    String assetPairId,
    String tradeType,
    Timestamp fromDate,
    Timestamp toDate,
  }) async =>
      trades = await TradingRepository.getTrades(
        take: take,
        skip: skip,
        assetPairId: assetPairId,
        tradeType: tradeType,
        fromDate: fromDate,
        toDate: toDate,
      );

  cancelOrder(String id) async {
    await TradingRepository.cancelOrder(id);
    await getOrders();
  }

  cancelAllOrders() async {
    await TradingRepository.cancelAllOrders();
    await getOrders();
  }

  placeLimitOrder(
    String assetId,
    String assetPairId,
    double volume,
    double price,
  ) async =>
      await TradingRepository.placeLimitOrder(
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
      await TradingRepository.placeMarketOrder(
        assetId: assetId,
        assetPairId: assetPairId,
        volume: volume,
      );
}
