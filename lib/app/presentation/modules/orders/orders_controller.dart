import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/core/utils/app_log.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/timestamp.pb.dart';
import 'package:antares_wallet/app/data/models/order_open_data.dart';
import 'package:antares_wallet/app/data/models/orders_history_filter.dart';
import 'package:antares_wallet/app/domain/entities/order_details_arguments.dart';
import 'package:antares_wallet/app/domain/repositories/trading_repository.dart';
import 'package:antares_wallet/app/presentation/modules/portfolio/assets/assets_controller.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class OrdersController extends GetxController {
  static OrdersController get con => Get.find();

  final ITradingRepository tradingRepo;
  final AssetsController assetsCon;
  OrdersController({
    @required this.tradingRepo,
    @required this.assetsCon,
  });

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

  Future<void> getOrders({bool silent = true}) async {
    if (!silent) loading = true;
    final response = await tradingRepo.getOrders();
    response.fold(
      (error) {},
      (orderList) => _generateOrderDataList(orderList),
    );
    if (!silent) loading = false;
  }

  Future<List<TradesResponse_TradeModel>> getTrades(
    int take,
    int skip, {
    String assetPairId,
    String tradeType,
    Timestamp fromDate,
    Timestamp toDate,
  }) async {
    final response = await tradingRepo.getTrades(
      take: take,
      skip: skip,
      assetPairId: assetPairId,
      tradeType: tradeType,
      fromDate: fromDate,
      toDate: toDate,
    );
    var trades = <TradesResponse_TradeModel>[];
    response.fold(
      (error) => AppLog.logger.e(error.toProto3Json()),
      (newTrades) => trades = newTrades,
    );
    return trades;
  }

  Future<void> reloadHistory({
    bool silent = false,
    OrdersHistoryFilter newFilter,
  }) async {
    if (!silent) loading = true;
    if (newFilter != null) {
      _filter = newFilter;
    } else if (_filter == null) {
      _filter = await OrdersHistoryFilter.fromStorage();
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

  void cancelAllOrders() => Get.defaultDialog(
        title: 'Cancel all orders',
        middleText: 'Are you sure?',
        buttonColor: AppColors.dark,
        cancelTextColor: AppColors.dark,
        confirmTextColor: AppColors.primary,
        onConfirm: () async {
          Get.back();
          loading = true;
          await tradingRepo.cancelAllOrders();
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
        onConfirm: () => tradingRepo.cancelOrder(orderId: id).whenComplete(() {
          getOrders().whenComplete(() => Get.back(result: true));
        }),
        onCancel: () => Get.back(result: false),
      );

  void openEditOrderDetails(OrderOpenData order) => Get.toNamed(
        Routes.ORDER_DETAILS,
        arguments: OrderDetailsArguments(
          order.orderModel.assetPair,
          order.isSell,
          isEdit: true,
          amount: order.orderModel.volume,
          price: order.orderModel.price,
          total: order.orderModel.totalCost,
          orderId: order.orderModel.id,
        ),
      );

  void openOrderHistoryFilter() => Get.toNamed(Routes.ORDER_HISTORY_FILTER);

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
