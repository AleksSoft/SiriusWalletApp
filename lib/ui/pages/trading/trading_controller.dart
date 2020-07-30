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

  StreamSubscription orderbookStreamSubscription;

  StreamSubscription candleStreamSubscription;

  ChartSeriesController chartSeriesController;

  MarketModel _initialMarket = Get.arguments as MarketModel;

  MarketModel get initialMarket => _initialMarket;

  List<MarketModel> get markets => _marketsController.markets;

  final List<CandleUpdate> candles = List();

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
    updateWithMarket(_initialMarket);
    super.onInit();
  }

  @override
  void onClose() async {
    // close candle stream subscription
    if (candleStreamSubscription != null) {
      candleStreamSubscription.cancel();
    }
    // close candle stream subscription
    if (orderbookStreamSubscription != null) {
      orderbookStreamSubscription.cancel();
    }
    super.onClose();
  }

  String get assetPairHeader =>
      '${initialMarket.pairBaseAsset.displayId}/${initialMarket.pairQuotingAsset.displayId}';

  updateWithMarket(MarketModel data) async {
    _initialMarket = data;
    marketModel = (await MarketsController.con
            .getMarkets(assetPairId: initialMarket.pairId))
        .first;

    if (candleStreamSubscription != null) {
      candleStreamSubscription.cancel();
      orderbook = Orderbook();
    }
    // subscribe to candle stream
    candleStreamSubscription = _api.client
        .getCandleUpdates(
            CandleUpdatesRequest()..assetPairId = initialMarket.pairId)
        .listen((CandleUpdate update) => _updateCandles(update));

    if (orderbookStreamSubscription != null) {
      orderbookStreamSubscription.cancel();
      chartSeriesController.updateDataSource(
        removedDataIndexes: <int>[candles.length],
      );
      candles.clear();
    }
    // subscribe to orderbook stream
    orderbookStreamSubscription = _api.client
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
        if (chartSeriesController != null) {
          chartSeriesController.updateDataSource(
            addedDataIndex: candles.length - 1,
          );
        }
      } else {
        candles[index] = update;
        if (chartSeriesController != null) {
          chartSeriesController.updateDataSource(
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
}
