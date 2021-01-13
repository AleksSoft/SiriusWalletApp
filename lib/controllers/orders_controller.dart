import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/timestamp.pb.dart';
import 'package:antares_wallet/app/data/models/order_open_data.dart';
import 'package:antares_wallet/app/data/models/orders_history_filter.dart';
import 'package:antares_wallet/app/data/repository/trading_repository.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

import 'assets_controller.dart';

class OrdersController extends GetxController {
  static OrdersController get con => Get.find();

  final AssetsController assetsCon;
  OrdersController({@required this.assetsCon});

  final orders = <OrderOpenData>[].obs;

  final trades = <TradesResponse_TradeModel>[].obs;

  final _loading = false.obs;
  get loading => this._loading.value;
  set loading(value) => this._loading.value = value;

  OrdersHistoryFilter _filter;

  Future<void> initialize() async {
    getOrders();
    reloadHistory(silent: true);
  }

  Future<void> getOrders() => TradingRepository.getOrders().then(
      (List<LimitOrderModel> orderList) => _generateOrderDataList(orderList));

  Future<List<TradesResponse_TradeModel>> getTrades(
    int take,
    int skip, {
    String assetPairId,
    String tradeType,
    Timestamp fromDate,
    Timestamp toDate,
  }) async =>
      await TradingRepository.getTrades(
        take: take,
        skip: skip,
        assetPairId: assetPairId,
        tradeType: tradeType,
        fromDate: fromDate,
        toDate: toDate,
      );

  Future<void> reloadHistory({
    bool silent = false,
    OrdersHistoryFilter newFilter,
  }) async {
    if (!silent) loading = true;
    if (newFilter != null) {
      _filter = newFilter;
    } else if (_filter == null) {
      _filter = OrdersHistoryFilter.fromStorage();
    }
    var list = await getTrades(
      25,
      0,
      assetPairId: _filter.assetPairId,
      fromDate: _filter.fromDate,
      toDate: _filter.toDate,
    );
    if (_filter.transactionType != OrdersTransactionType.all) {
      String direction = _filter.transactionType == OrdersTransactionType.sell
          ? 'sell'
          : 'buy';
      list = list.where((o) => o.direction.toLowerCase() == direction).toList();
    }
    list.sort((b, a) => a.timestamp.seconds.compareTo(b.timestamp.seconds));
    trades.assignAll(list);
    if (!silent) loading = false;
  }

  Future<OrderModel> editOrder(
    String orderId,
    String assetPairId,
    String assetId,
    double volume,
    double price,
  ) =>
      TradingRepository.editOrder(
        orderId: orderId,
        assetPairId: assetPairId,
        assetId: assetId,
        volume: volume,
        price: price,
      );

  Future<bool> cancelOrder(String id) =>
      TradingRepository.cancelOrder(id).whenComplete(() => getOrders());

  Future<OrderModel> placeLimitOrder(
    String assetId,
    String assetPairId,
    double volume,
    double price,
  ) =>
      TradingRepository.placeLimitOrder(
        assetId: assetId,
        assetPairId: assetPairId,
        volume: volume,
        price: price,
      );

  Future<OrderModel> placeMarketOrder(
    String assetId,
    String assetPairId,
    double volume,
  ) =>
      TradingRepository.placeMarketOrder(
        assetId: assetId,
        assetPairId: assetPairId,
        volume: volume,
      );

  void cancelAllOrders() => Get.defaultDialog(
        title: 'Cancel all orders',
        middleText: 'Are you sure?',
        buttonColor: AppColors.dark,
        cancelTextColor: AppColors.dark,
        confirmTextColor: AppColors.primary,
        onConfirm: () async {
          Get.back();
          loading = true;
          await TradingRepository.cancelAllOrders();
          await getOrders();
          loading = false;
        },
        onCancel: () {},
      );

  Future<bool> confirmDismiss(String id) async => await Get.defaultDialog(
        title: 'Cancel order',
        middleText: 'Are you sure?',
        buttonColor: AppColors.dark,
        cancelTextColor: AppColors.dark,
        confirmTextColor: AppColors.primary,
        onConfirm: () async {
          await cancelOrder(id);
          Get.back(result: true);
        },
        onCancel: () => Get.back(result: false),
      );

  void _generateOrderDataList(List<LimitOrderModel> limitOrders) {
    var list = <OrderOpenData>[];
    limitOrders?.forEach((order) {
      AssetPair assetPair = assetsCon.assetPairById(order.assetPair);
      Asset baseAsset = assetsCon.assetById(assetPair?.baseAssetId);
      Asset quotingAsset = assetsCon.assetById(assetPair?.quotingAssetId);
      if (assetPair != null && baseAsset != null && quotingAsset != null) {
        list.add(OrderOpenData.fromOrder(
          baseAsset.name,
          quotingAsset.name,
          order,
        ));
      }
    });
    orders.assignAll(list);
  }
}
