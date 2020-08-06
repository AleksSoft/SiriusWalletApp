import 'dart:async';

import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/services/repositories/trading_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/google/protobuf/timestamp.pb.dart';
import 'package:antares_wallet/ui/pages/orders/order_details/order_details_page.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TradingController extends GetxController {
  static TradingController get con => Get.find();

  static final _api = Get.find<ApiService>();

  StreamSubscription _tradesSubscr;
  StreamSubscription _orderbookSubscr;
  StreamSubscription _candleSubscr;

  ChartSeriesController candleController;

  bool allCandlesLoaded = false;

  final List<Candle> candles = List<Candle>();

  final _loading = false.obs;
  get loading => this._loading.value;
  set loading(value) => this._loading.value = value;

  final _initialMarket = MarketModel.empty().obs;
  MarketModel get initialMarket => this._initialMarket.value;
  set initialMarket(MarketModel value) => this._initialMarket.value = value;

  final _marketModel = MarketsResponse_MarketModel().obs;
  MarketsResponse_MarketModel get marketModel => this._marketModel.value;
  set marketModel(MarketsResponse_MarketModel value) =>
      this._marketModel.value = value;

  final asks = List<Orderbook_PriceVolume>().obs;

  final bids = List<Orderbook_PriceVolume>().obs;

  final trades = List<PublicTrade>().obs;

  @override
  void onInit() async {
    loading = true;
    // load pair market data
    updateWithMarket(Get.arguments as MarketModel)
        .whenComplete(() => loading = false);

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

  // DateFormat get chartDateFormat {
  //   switch (interval) {
  //     case CandleInterval.Min5:
  //     case CandleInterval.Min15:
  //     case CandleInterval.Min30:
  //       return DateFormat('dd.MM.yy HH:mm');
  //     case CandleInterval.Hour:
  //     case CandleInterval.Hour4:
  //     case CandleInterval.Hour6:
  //     case CandleInterval.Hour12:
  //       return DateFormat('dd.MM.yy HH:mm');
  //     case CandleInterval.Day:
  //     case CandleInterval.Week:
  //       return DateFormat('dd.MM.yyyy');
  //     case CandleInterval.Month:
  //       return DateFormat('dd.MM.yyyy');
  //     default:
  //       return DateFormat('dd.MM.yyyy');
  //   }
  // }

  openOrderDetails(bool isBuy) async {
    _candleSubscr.pause();
    _orderbookSubscr.pause();
    _tradesSubscr.pause();
    await Get.toNamed(
        '${OrderDetailsPage.route}?operationType=${isBuy ? 'buy' : 'sell'}',
        arguments: initialMarket);
    _candleSubscr.resume();
    _orderbookSubscr.resume();
    _tradesSubscr.resume();
  }

  onZooming(ZoomPanArgs args) {
    if (args.axis.name == 'primaryXAxis' &&
        args.currentZoomPosition == 0 &&
        !allCandlesLoaded) {
      updateCandlesHistory();
    }
  }

  Future updateWithMarket(MarketModel data) async {
    // set initial market data
    initialMarket = data;
    // load market model data
    marketModel = (await MarketsController.con
            .getMarkets(assetPairId: initialMarket.pairId))
        .first;

    // init streams
    await _initCandles();
    await _initOrders();
    await _initTrades();
  }

  Future updateCandlesHistory() async {
    var to = candles.isNotEmpty
        ? candles[0].timestamp
        : Timestamp.fromDateTime(DateTime.now());
    var from = Timestamp.fromDateTime(
      DateTime.fromMicrosecondsSinceEpoch(
        to.seconds.toInt() * 1000,
      ).subtract(_getCandleUpdateTimeDelta(CandleInterval.Hour)),
    );
    await TradingRepository.getCandles(
      assetPairId: initialMarket.pairId,
      type: CandleType.Mid,
      interval: CandleInterval.Hour,
      from: from,
      to: to,
    ).then((newCandles) {
      if (newCandles != null && newCandles.isNotEmpty) {
        candles.insertAll(0, newCandles);
        if (candleController != null) {
          candleController.updateDataSource(
            addedDataIndexes: <int>[newCandles.length],
          );
        }
      } else {
        allCandlesLoaded = true;
      }
    });
  }

  _initCandles() async {
    // reload candle data list and subscription
    if (_candleSubscr != null) {
      await _candleSubscr.cancel();
      candleController.updateDataSource(
        removedDataIndexes: <int>[candles.length],
      );
      candles.clear();
    }
    // load candle data
    await updateCandlesHistory().then((value) {
      // subscribe to candle stream
      _candleSubscr = _api.clientSecure
          .getCandleUpdates(CandleUpdatesRequest()
            ..assetPairId = initialMarket.pairId
            ..type = CandleType.Mid
            ..interval = CandleInterval.Hour)
          .listen((CandleUpdate update) => _updateCandles(update));
    });
  }

  _initOrders() async {
    // subscribe to orderbook stream
    if (_orderbookSubscr != null) {
      await _orderbookSubscr.cancel();
      asks.clear();
      bids.clear();
    }
    // subscribe to orderbook stream
    _orderbookSubscr = _api.clientSecure
        .getOrderbookUpdates(
            OrderbookUpdatesRequest()..assetPairId = initialMarket.pairId)
        .listen((Orderbook update) {
      asks.addAllNonNull(update?.asks);
      bids.addAllNonNull(update?.bids);
    });
  }

  _initTrades() async {
    // reload tade data list and subscription
    if (_tradesSubscr != null) {
      await _tradesSubscr.cancel();
      trades.clear();
    }
    // subscribe to tades stream
    _tradesSubscr = _api.clientSecure
        .getPublicTradeUpdates(
            PublicTradesUpdatesRequest()..assetPairId = initialMarket.pairId)
        .listen(
          (PublicTradeUpdate update) => trades.addAllNonNull(update?.trades),
        );
  }

  _updateCandles(CandleUpdate update) {
    print('Candle Update ${update.toProto3Json()}');
    if (update != null && update.hasOpen()) {
      var updatedCandle = Candle()
        ..open = update.open
        ..close = update.close
        ..high = update.high
        ..low = update.low
        ..volume = update.volume
        ..oppositeVolume = update.oppositeVolume
        ..lastPrice = update.lastPrice
        ..timestamp = update.timestamp;
      int index = candles.indexOf(updatedCandle);
      if (index < 0) {
        candles.add(updatedCandle);
        if (candleController != null) {
          candleController.updateDataSource(
            addedDataIndex: candles.length - 1,
          );
        }
      } else {
        candles[index] = updatedCandle;
        if (candleController != null) {
          candleController.updateDataSource(
            removedDataIndex: index,
          );
        }
      }
    }
  }

  Duration _getCandleUpdateTimeDelta(CandleInterval interval) {
    int itemsCount = 250;
    switch (interval) {
      case CandleInterval.Min5:
        return Duration(minutes: itemsCount * 5);
      case CandleInterval.Min15:
        return Duration(minutes: itemsCount * 15);
      case CandleInterval.Min30:
        return Duration(minutes: itemsCount * 30);
      case CandleInterval.Hour:
        return Duration(hours: itemsCount);
      case CandleInterval.Hour4:
        return Duration(hours: itemsCount * 4);
      case CandleInterval.Hour6:
        return Duration(hours: itemsCount * 6);
      case CandleInterval.Hour12:
        return Duration(hours: itemsCount * 12);
      case CandleInterval.Day:
        return Duration(days: itemsCount);
      case CandleInterval.Week:
        return Duration(days: itemsCount * 7);
      case CandleInterval.Month:
        return Duration(days: itemsCount * 30);
      default:
        return Duration(days: itemsCount * 30 * 6);
    }
  }
}
