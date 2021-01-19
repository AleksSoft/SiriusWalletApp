import 'dart:async';

import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/timestamp.pb.dart';
import 'package:antares_wallet/app/data/services/api/api_service.dart';
import 'package:antares_wallet/app/domain/entities/market_model.dart';
import 'package:antares_wallet/app/domain/entities/order_details_arguments.dart';
import 'package:antares_wallet/app/domain/repositories/markets_repository.dart';
import 'package:antares_wallet/app/domain/repositories/trading_repository.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TradingController extends GetxController {
  static TradingController get con => Get.find();
  static final candleTypes = [CandleType.Mid, CandleType.Trades];

  final ApiService apiService;
  final IMarketsRepository marketsRepo;
  final ITradingRepository tradingRepo;
  TradingController({
    @required this.apiService,
    @required this.marketsRepo,
    @required this.tradingRepo,
  });

  StreamSubscription _tradesSubscr;
  StreamSubscription _orderbookSubscr;
  StreamSubscription _candleSubscr;

  ChartSeriesController candleController;

  bool allCandlesLoaded = false;

  final List<Candle> candles = <Candle>[];

  final loading = false.obs;

  final _initialMarket = MarketModel.empty().obs;
  MarketModel get initialMarket => this._initialMarket.value;
  set initialMarket(MarketModel value) => this._initialMarket.value = value;

  final _marketModel = MarketsResponse_MarketModel().obs;
  MarketsResponse_MarketModel get marketModel => this._marketModel.value;
  set marketModel(MarketsResponse_MarketModel value) =>
      this._marketModel.value = value;

  final _selectedInterval = CandleInterval.Min5.obs;
  CandleInterval get selectedInterval => this._selectedInterval.value;
  set selectedInterval(CandleInterval value) =>
      this._selectedInterval.value = value;

  final _selectedType = CandleType.Mid.obs;
  CandleType get selectedType => this._selectedType.value;
  set selectedType(CandleType value) => this._selectedType.value = value;

  final _isCandleChart = true.obs;
  bool get isCandleChart => this._isCandleChart.value;
  set isCandleChart(bool value) => this._isCandleChart.value = value;

  final asks = <Orderbook_PriceVolume>[].obs;

  final bids = <Orderbook_PriceVolume>[].obs;

  final trades = <PublicTrade>[].obs;

  final _noCandleData = false.obs;
  bool get noCandleData => this._noCandleData.value;
  set noCandleData(bool value) => this._noCandleData.value = value;

  final _zoomP = 0.95.obs;
  get zoomP => this._zoomP.value;
  set zoomP(value) => this._zoomP.value = value;

  final _zoomF = 0.05.obs;
  get zoomF => this._zoomF.value;
  set zoomF(value) => this._zoomF.value = value;

  @override
  void onInit() async {
    // load pair market data
    updateWithMarket(Get.arguments as MarketModel);
    super.onInit();
  }

  @override
  Future<void> onClose() async {
    // close candle stream subscription
    await _candleSubscr?.cancel();
    // close orderbook stream subscription
    await _orderbookSubscr?.cancel();
    // close orderbook stream subscription
    await _tradesSubscr?.cancel();
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

  String getIntervalStr(CandleInterval interval) {
    switch (interval) {
      case CandleInterval.Min5:
        return '5m';
      case CandleInterval.Min15:
        return '15m';
      case CandleInterval.Min30:
        return '30m';
      case CandleInterval.Hour:
        return '1h';
      case CandleInterval.Hour4:
        return '4h';
      case CandleInterval.Hour6:
        return '6h';
      case CandleInterval.Hour12:
        return '12h';
      case CandleInterval.Day:
        return '1d';
      case CandleInterval.Week:
        return '1w';
      case CandleInterval.Month:
        return '1M';
      default:
        return '';
    }
  }

  void openOrderDetails(bool isBuy) => Get.toNamed(
        Routes.ORDER_DETAILS,
        arguments: OrderDetailsArguments(
          marketModel.assetPair,
          isBuy,
          asks: asks,
          bids: bids,
        ),
      );

  void onMainZooming(ZoomPanArgs args) {
    if (args.axis.name == 'primaryXAxis') {
      zoomP = args.currentZoomPosition;
      zoomF = args.currentZoomFactor;
      if (args.currentZoomPosition == 0 && !allCandlesLoaded) {
        updateCandlesHistory();
      }
    }
  }

  void onVolumeZooming(ZoomPanArgs args) {
    if (args.axis.name == 'primaryXAxis') {
      zoomP = args.currentZoomPosition;
      zoomF = args.currentZoomFactor;
    }
  }

  double volumeAskPercent(int index) {
    var maxAskVol = OrderbookUtils.maxVol(asks);
    return maxAskVol <= 0
        ? 0
        : (double.tryParse(asks[index].v) ?? 0.0) / maxAskVol;
  }

  double volumeBidPercent(int index) {
    var maxBidVol = OrderbookUtils.maxVol(bids);
    return maxBidVol <= 0
        ? 0
        : (double.tryParse(bids[index].v) ?? 0.0) / maxBidVol;
  }

  Future<void> updateWithMarket(MarketModel data) async {
    loading(true);
    noCandleData = false;
    // set initial market data
    initialMarket = data;
    // load market model data
    final response = await marketsRepo.getMarkets(
      assetPairId: initialMarket.pairId,
    );
    response.fold(
      (error) {},
      (marketModelList) => marketModel = marketModelList.first,
    );

    // init streams
    await reloadCandles();
    await _initOrders();
    await _initTrades();

    loading(false);
  }

  Future<void> updateCandlesHistory() async {
    var to = candles.isNotEmpty
        ? candles[0].timestamp
        : Timestamp.fromDateTime(DateTime.now());
    var from = Timestamp.fromDateTime(
      DateTime.fromMicrosecondsSinceEpoch(
        to.seconds.toInt() * 1000,
      ).subtract(_getCandleUpdateTimeDelta()),
    );
    await tradingRepo
        .getCandles(
          assetPairId: initialMarket.pairId,
          type: selectedType,
          interval: selectedInterval,
          from: from,
          to: to,
        )
        .then(
          (response) => response.fold(
            (error) {
              noCandleData = true;
              allCandlesLoaded = true;
            },
            (newCandles) {
              if (newCandles.isNotEmpty) {
                candles.insertAll(0, newCandles);
                if (candleController != null) {
                  candleController.updateDataSource(
                    addedDataIndexes: <int>[newCandles.length],
                  );
                }
              } else {
                allCandlesLoaded = true;
              }
            },
          ),
        );
  }

  Future<void> reloadCandles() async {
    // reload candle data list and subscription
    await _candleSubscr?.cancel();
    candleController?.updateDataSource(
      removedDataIndexes: <int>[candles.length],
    );
    candles.clear();
    // load candle data
    await updateCandlesHistory();
    // subscribe to candle stream
    _candleSubscr?.cancel();
    _candleSubscr = apiService.clientSecure
        .getCandleUpdates(CandleUpdatesRequest()
          ..assetPairId = initialMarket.pairId
          ..type = selectedType
          ..interval = selectedInterval)
        .listen((CandleUpdate update) => _updateCandles(update));
  }

  Future<void> reloadChartInterval(CandleInterval i) async {
    loading(true);
    selectedInterval = i;
    await reloadCandles();
    loading(false);
  }

  Future<void> reloadChartType(CandleType t) async {
    loading(true);
    selectedType = t;
    await reloadCandles();
    loading(false);
  }

  Future<void> _initOrders() async {
    // reload orderbook and subscription
    await tradingRepo
        .getOrderbook(
          assetPairId: initialMarket.pairId,
        )
        .then(
          (response) => response.fold(
            (error) {},
            (newOrderBook) {
              final orderBook = OrderbookUtils.getMergedOrderbook(
                Orderbook()..bids.addAll(bids)..asks.addAll(asks),
                newOrderBook,
              );
              _updateOrderbookValues(orderBook);
            },
          ),
        );
    // subscribe to orderbook stream
    await _orderbookSubscr?.cancel();
    _orderbookSubscr = apiService.clientSecure
        .getOrderbookUpdates(
            OrderbookUpdatesRequest()..assetPairId = initialMarket.pairId)
        .map((event) {
      return OrderbookUtils.getMergedOrderbook(
        Orderbook()..bids.addAll(bids)..asks.addAll(asks),
        event,
      );
    }).listen(_updateOrderbookValues);
  }

  void _updateOrderbookValues(Orderbook update) {
    bids.assignAll(update.bids);
    asks.assignAll(update.asks);
  }

  Future<void> _initTrades() async {
    // reload tade data list and subscription
    await _tradesSubscr?.cancel();
    trades.clear();
    // subscribe to tades stream
    _tradesSubscr = apiService.clientSecure
        .getPublicTradeUpdates(
            PublicTradesUpdatesRequest()..assetPairId = initialMarket.pairId)
        .listen(
          (PublicTradeUpdate update) => trades.addAllNonNull(update?.trades),
        );
  }

  void _updateCandles(CandleUpdate update) {
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

  Duration _getCandleUpdateTimeDelta() {
    int itemsCount = 250;
    switch (selectedInterval) {
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

  void toggleExpandChart() {
    if (Get.currentRoute == Routes.TRADING) {
      Get.toNamed(Routes.CANDLE_CHART);
    } else {
      Get.back();
    }
  }
}
