import 'dart:async';

import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TradingController extends GetxController {
  static TradingController get con => Get.find();

  static final _api = Get.find<ApiService>();

  StreamSubscription _tradesSubscr;
  StreamSubscription _orderbookSubscr;
  StreamSubscription _candleSubscr;

  ChartSeriesController candleController;

  final List<CandleUpdate> candles = List();

  final _initialMarket = MarketModel.empty().obs;
  MarketModel get initialMarket => this._initialMarket.value;
  set initialMarket(MarketModel value) => this._initialMarket.value = value;

  final _marketModel = MarketsResponse_MarketModel().obs;
  MarketsResponse_MarketModel get marketModel => this._marketModel.value;
  set marketModel(MarketsResponse_MarketModel value) =>
      this._marketModel.value = value;

  final _orderbook = Orderbook().obs;
  Orderbook get orderbook => this._orderbook.value;
  set orderbook(Orderbook value) => this._orderbook.value = value;

  final trades = List<PublicTrade>().obs;

  @override
  void onInit() async {
    // load pair market data
    updateWithMarket(Get.arguments as MarketModel);

    super.onInit();
  }

  @override
  void onClose() async {
    // close candle stream subscription
    if (_candleSubscr != null) await _candleSubscr.cancel();
    // close orderbook stream subscription
    if (_orderbookSubscr != null) await _orderbookSubscr.cancel();
    // close orderbook stream subscription
    if (_tradesSubscr != null) await _tradesSubscr.cancel();
    super.onClose();
  }

  String get assetPairHeader =>
      '${initialMarket.pairBaseAsset.displayId}/${initialMarket.pairQuotingAsset.displayId}';

  updateWithMarket(MarketModel data) async {
    initialMarket = data;
    marketModel = (await MarketsController.con
            .getMarkets(assetPairId: initialMarket.pairId))
        .first;

    if (_tradesSubscr != null) {
      await _tradesSubscr.cancel();
      trades.clear();
    }
    // subscribe to candle stream
    _tradesSubscr = _api.client
        .getPublicTradeUpdates(
            PublicTradesUpdatesRequest()..assetPairId = initialMarket.pairId)
        .listen(
            (PublicTradeUpdate update) => trades.addAllNonNull(update?.trades));

    if (_candleSubscr != null) {
      await _candleSubscr.cancel();
      candleController.updateDataSource(
        removedDataIndexes: <int>[candles.length],
      );
      candles.clear();
    }
    // subscribe to candle stream
    _candleSubscr = _api.client
        .getCandleUpdates(
            CandleUpdatesRequest()..assetPairId = initialMarket.pairId)
        .listen((CandleUpdate update) => _updateCandles(update));

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

  _updateCandles(CandleUpdate update) {
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
    if (update != null && update.hasAssetPairId()) {
      Orderbook mergedOrderbook = orderbook;
      mergedOrderbook.bids.addAll(update.bids);
      mergedOrderbook.asks.addAll(update.asks);
      orderbook = mergedOrderbook;
    }
  }
}
