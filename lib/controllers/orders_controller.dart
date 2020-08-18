import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/repositories/trading_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/google/protobuf/timestamp.pb.dart';
import 'package:antares_wallet/ui/pages/root/root_controller.dart';
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
        await getTrades(20, 0);
      }
    });
    ever(RootController.con.pageIndexObs, (pageIndex) async {
      if (pageIndex == 2) {
        await getOrders();
        await getTrades(20, 0);
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
  }) async {
    var list = await TradingRepository.getTrades(
      take: take,
      skip: skip,
      assetPairId: assetPairId,
      tradeType: tradeType,
      fromDate: fromDate,
      toDate: toDate,
    );
    list.sort((b, a) => a.timestamp.seconds.compareTo(b.timestamp.seconds));
    trades = list;
  }

  cancelAllOrders() async {
    await Get.defaultDialog(
      title: 'Cancel all orders',
      middleText: 'Are you sure?',
      buttonColor: AppColors.dark,
      cancelTextColor: AppColors.dark,
      confirmTextColor: AppColors.primary,
      onConfirm: () async {
        await TradingRepository.cancelAllOrders();
        await getOrders();
      },
      onCancel: () => Get.back(),
    );
  }

  Future cancelOrder(String id) async =>
      await TradingRepository.cancelOrder(id).then((value) => getOrders());

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
}
