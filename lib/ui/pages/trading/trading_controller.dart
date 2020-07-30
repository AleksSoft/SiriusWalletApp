import 'dart:async';
import 'dart:convert' show json;

import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/models/market_model.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';
import 'package:grpc/grpc.dart';
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

  List<ExampleChartModel> _mockChartModels = List();

  List<ExampleChartModel> get chartModels => _mockChartModels;

  MarketsResponse_MarketModel _marketModel =
      MarketsResponse_MarketModel.getDefault();

  MarketsResponse_MarketModel get marketModel => _marketModel;

  final List<CandleUpdate> candles = List();

  final _orderbook = Orderbook().obs;
  Orderbook get orderbook => this._orderbook.value;
  set orderbook(Orderbook value) => this._orderbook.value = value;

  @override
  void onInit() async {
    _mockChartModels = await _loadMarkets();
    _marketModel = (await MarketsController.con.getMarkets(
      assetPairId: initialMarket.pairId,
    ))
        .first;
    candleStreamSubscription = _api.client
        .getCandleUpdates(
          CandleUpdatesRequest()..assetPairId = initialMarket.pairId,
        )
        .listen((CandleUpdate update) => _updateCandles(update));
    orderbookStreamSubscription = _api.client
        .getOrderbookUpdates(
          OrderbookUpdatesRequest()..assetPairId = initialMarket.pairId,
        )
        .listen((Orderbook update) => _updateOrderbook(update));
    update();
    super.onInit();
  }

  @override
  void onClose() async {
    if (candleStreamSubscription != null) {
      candleStreamSubscription.cancel();
    }
    if (orderbookStreamSubscription != null) {
      orderbookStreamSubscription.cancel();
    }
    super.onClose();
  }

  String get assetPairHeader =>
      '${initialMarket.pairBaseAsset.displayId}/${initialMarket.pairQuotingAsset.displayId}';

  void updateMarketModel(MarketModel data) {
    _initialMarket = data;
    update();
  }

  Future<List<ExampleChartModel>> _loadMarkets() async {
    final market = await rootBundle.loadString('assets/json/market.json');
    return MarketData.fromJson(json.decode(market)).data;
  }

  _updateCandles(CandleUpdate update) {
    print('Candle Update: ${update.writeToJsonMap()}');
    if (update != null && update.hasOpen()) {
      int index = candles.indexOf(update);
      if (index < 0) {
        candles.add(update);
        if (chartSeriesController != null) {
          chartSeriesController.updateDataSource(
            addedDataIndexes: <int>[candles.length - 1],
          );
        }
      } else {
        candles[index] = update;
        if (chartSeriesController != null) {
          chartSeriesController.updateDataSource(
            removedDataIndexes: <int>[index],
          );
        }
      }
    }
  }

  _updateOrderbook(Orderbook update) {
    print('Orderbook Update: ${update.writeToJsonMap()}');
    if (update != null && update.hasAssetPairId()) {
      Orderbook mergedOrderbook = orderbook;
      update.asks.forEach((ask) {
        int index = mergedOrderbook.asks.indexOf(ask);
        if (index < 0) {
          mergedOrderbook.asks.add(ask);
        } else {
          mergedOrderbook.asks[index] = ask;
        }
      });
      update.bids.forEach((bid) {
        int index = mergedOrderbook.bids.indexOf(bid);
        if (index < 0) {
          mergedOrderbook.bids.add(bid);
        } else {
          mergedOrderbook.bids[index] = bid;
        }
      });
      orderbook = mergedOrderbook;
    }
  }
}
