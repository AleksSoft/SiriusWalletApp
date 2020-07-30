import 'dart:async';

import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TradingController extends GetxController {
  static TradingController get con => Get.find();

  static final _api = Get.find<ApiService>();

  final _marketsController = MarketsController.con;

  StreamSubscription tradesSubscr;

  StreamSubscription orderbookSubscr;

  StreamSubscription candleSubscr;

  ChartSeriesController candleController;

  List<MarketModel> get markets => _marketsController.markets;

  final List<CandleUpdate> candles = List();

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

  final _trades = List<PublicTrade>().obs;
  List<PublicTrade> get trades => this._trades.value;
  set trades(List<PublicTrade> value) => this._trades.value = value;

  @override
  void onInit() async {
    // load pair market data
    updateWithMarket(Get.arguments as MarketModel);
    super.onInit();
  }

  @override
  void onClose() async {
    // close candle stream subscription
    if (candleSubscr != null) await candleSubscr.cancel();
    // close orderbook stream subscription
    if (orderbookSubscr != null) await orderbookSubscr.cancel();
    // close orderbook stream subscription
    if (tradesSubscr != null) await tradesSubscr.cancel();
    super.onClose();
  }

  String get assetPairHeader =>
      '${initialMarket.pairBaseAsset.displayId}/${initialMarket.pairQuotingAsset.displayId}';

  updateWithMarket(MarketModel data) async {
    initialMarket = data;
    marketModel = (await MarketsController.con
            .getMarkets(assetPairId: initialMarket.pairId))
        .first;

    if (tradesSubscr != null) {
      await tradesSubscr.cancel();
      candles.clear();
    }
    // subscribe to candle stream
    tradesSubscr = _api.client
        .getPublicTradeUpdates(
            PublicTradesUpdatesRequest()..assetPairId = initialMarket.pairId)
        .listen((PublicTrade update) => _updateTrades(update));

    if (candleSubscr != null) {
      await candleSubscr.cancel();
      orderbook = Orderbook();
    }
    // subscribe to candle stream
    candleSubscr = _api.client
        .getCandleUpdates(
            CandleUpdatesRequest()..assetPairId = initialMarket.pairId)
        .listen((CandleUpdate update) => _updateCandles(update));

    if (orderbookSubscr != null) {
      await orderbookSubscr.cancel();
      candleController.updateDataSource(
        removedDataIndexes: <int>[candles.length],
      );
      candles.clear();
    }
    // subscribe to orderbook stream
    orderbookSubscr = _api.client
        .getOrderbookUpdates(
            OrderbookUpdatesRequest()..assetPairId = initialMarket.pairId)
        .listen((Orderbook update) => _updateOrderbook(update));
  }

  _updateCandles(CandleUpdate update) {
    print('Candle Update: ${update.writeToJsonMap()}');
    if (update != null && update.hasOpen()) {
      int index = candles.indexOf(update);
      if (index < 0) {
        candles.add(update);
        if (candleController != null) {
          candleController.updateDataSource(
            addedDataIndex: candles.length - 1,
          );
        }
      } else {
        candles[index] = update;
        if (candleController != null) {
          candleController.updateDataSource(
            removedDataIndex: index,
          );
        }
      }
    }
  }

  _updateOrderbook(Orderbook update) {
    print('Orderbook Update: ${update.writeToJsonMap()}');
    if (update != null && update.hasAssetPairId()) {
      Orderbook mergedOrderbook = orderbook;
      mergedOrderbook.bids.addAll(update.bids);
      mergedOrderbook.asks.addAll(update.asks);
      orderbook = mergedOrderbook;
    }
  }

  _updateTrades(PublicTrade update) {
    print('Tradelog Update: ${update.writeToJsonMap()}');
    if (update != null && update.hasAssetPairId()) {
      var mergedTrades = trades;
      mergedTrades.add(update);
      trades = mergedTrades;
    }
  }
}
