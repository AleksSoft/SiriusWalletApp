import 'dart:async';

import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/controllers/portfolio_controller.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:get/get.dart';

class OrderDetailsController extends GetxController {
  static OrderDetailsController get con => Get.find();

  static final _api = Get.find<ApiService>();

  final _portfolioCon = PortfolioController.con;

  StreamSubscription _orderbookSubscr;

  final _initialMarket = MarketModel.empty().obs;
  MarketModel get initialMarket => this._initialMarket.value;
  set initialMarket(MarketModel value) => this._initialMarket.value = value;

  final _marketModel = MarketsResponse_MarketModel.getDefault().obs;
  MarketsResponse_MarketModel get marketModel => this._marketModel.value;
  set marketModel(MarketsResponse_MarketModel value) =>
      this._marketModel.value = value;

  final _orderbook = Orderbook().obs;
  Orderbook get orderbook => this._orderbook.value;
  set orderbook(Orderbook value) => this._orderbook.value = value;

  @override
  void onInit() async {
    // load pair market data
    await updateWithMarket(Get.arguments as MarketModel);

    super.onInit();
  }

  @override
  void onClose() async {
    // close orderbook stream subscription
    if (_orderbookSubscr != null) await _orderbookSubscr.cancel();
    super.onClose();
  }

  String get assetPairHeader =>
      '${initialMarket.pairBaseAsset.displayId}/${initialMarket.pairQuotingAsset.displayId}';

  List<Balance> get bances => _portfolioCon.balances;

  double get balanceSum => _portfolioCon.balanceSum;

  updateWithMarket(MarketModel data) async {
    initialMarket = data;
    marketModel = (await MarketsController.con
            .getMarkets(assetPairId: initialMarket.pairId))
        .first;

    // load balances
    await _portfolioCon.getBalances();

    if (_orderbookSubscr != null) {
      await _orderbookSubscr.cancel();
      orderbook = Orderbook();
    }
    // subscribe to orderbook stream
    _orderbookSubscr = _api.client
        .getOrderbookUpdates(
            OrderbookUpdatesRequest()..assetPairId = initialMarket.pairId)
        .listen((Orderbook update) => _updateOrderbook(update));
  }

  _updateOrderbook(Orderbook update) {
    print('Order Details Orderbook Update: ${update.writeToJsonMap()}');
    if (update != null && update.hasAssetPairId()) {
      Orderbook mergedOrderbook = orderbook;
      mergedOrderbook.bids.addAll(update.bids);
      mergedOrderbook.asks.addAll(update.asks);
      orderbook = mergedOrderbook;
    }
  }
}
