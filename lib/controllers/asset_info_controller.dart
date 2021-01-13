import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/timestamp.pb.dart';
import 'package:antares_wallet/app/data/repository/portfolio_repository.dart';
import 'package:antares_wallet/app/data/repository/trading_repository.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/ui/pages/orders/widgets/order_history_tile.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'order_details_controller.dart';

enum AssetInfoPeriod { h24, week, month, year }

class AssetInfoController extends GetxController {
  static AssetInfoController get con => Get.find();

  final _assetCon = AssetsController.con;

  final _dateFormat = DateFormat().addPattern('dd.MM.yy HH:mm:ss');

  final Asset asset = Get.arguments as Asset;

  final _loading = false.obs;
  bool get loading => this._loading.value;
  set loading(bool value) => this._loading.value = value;

  final _selectedPeriod = AssetInfoPeriod.h24.obs;
  AssetInfoPeriod get selectedPeriod => this._selectedPeriod.value;
  set selectedPeriod(AssetInfoPeriod value) =>
      this._selectedPeriod.value = value;

  final _selectedMarket = MarketModel.empty().obs;
  MarketModel get selectedMarket => this._selectedMarket.value;
  set selectedMarket(MarketModel value) => this._selectedMarket.value = value;

  final trades = <OrderHistoryData>[].obs;

  final funds = <FundsResponse_FundsModel>[].obs;

  final markets = <MarketModel>[].obs;

  final candles = <Candle>[].obs;

  bool get seeAllActive => markets.length > 3;

  @override
  void onInit() async {
    // get asset markets
    if (MarketsController.con.initialMarketList.isEmpty) {
      await MarketsController.con.rebuildWatchedMarkets();
    }
    markets.assignAll(asset.popularPairs
        .map((p) => MarketsController.con.marketModelByPairId(p))
        .toList());

    // subscribe to market and period changes
    ever(_selectedMarket, (_) => updateCandles());
    ever(_selectedPeriod, (_) => updateCandles());

    // set selected market
    if (markets.isNotEmpty) selectedMarket = markets.first;

    // load tabs data
    await getTrades();
    await getFunds();

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future<void> getTrades() async {
    final assetTrades = await TradingRepository.getAssetTrades(
      assetId: asset.id,
      take: 50,
      skip: 0,
    );
    var resultList = <OrderHistoryData>[];
    if (assetTrades != null && assetTrades.isNotEmpty) {
      assetTrades.forEach((AssetTradesResponse_AssetTradeModel model) {
        AssetPair assetPair = _assetCon.assetPairById(model.assetPairId);
        Asset baseAsset = _assetCon.assetById(assetPair?.baseAssetId);
        Asset quotingAsset = _assetCon.assetById(assetPair?.quotingAssetId);
        if (assetPair != null && baseAsset != null && quotingAsset != null) {
          double priceDouble = (double.tryParse(model.price) ?? 0.0);
          double amountDouble = double.tryParse(model.baseVolume) ?? 0.0;
          resultList.add(OrderHistoryData(
            price: priceDouble.toStringAsFixed(quotingAsset.accuracy),
            amount: amountDouble.abs().toString(),
            isBuy: amountDouble >= 0,
            total: (priceDouble * amountDouble.abs())
                .toStringAsFixed(quotingAsset.accuracy),
            baseAssetName: baseAsset.displayId,
            quoteAssetName: quotingAsset.displayId,
            date: _dateFormat.format(
              DateTime.fromMillisecondsSinceEpoch(
                model.timestamp.seconds.toInt() * 1000,
              ),
            ),
          ));
        }
        trades.assignAll(resultList);
      });
    }
  }

  Future<void> getFunds() async =>
      funds.assignAll(await PortfolioRepository.getFunds(
        assetId: asset.id,
        take: 50,
        skip: 0,
      ));

  Future<void> updateCandles() async {
    loading = true;
    final list = await TradingRepository.getCandles(
      assetPairId: selectedMarket.pairId,
      type: CandleType.Mid,
      interval: _candlesInterval(),
      from: Timestamp.fromDateTime(
        DateTime.now().subtract(_candlesDeltaDuration()),
      ),
      to: Timestamp.fromDateTime(DateTime.now()),
    );
    candles.assignAll(list ?? []);
    loading = false;
  }

  void openOrderDetails(bool isBuy) => Get.toNamed(
        Routes.ORDER_DETAILS,
        arguments: OrderDetailsArguments(
          selectedMarket.pairId,
          isBuy,
        ),
      );

  String getPeriodStr(AssetInfoPeriod period) {
    switch (period) {
      case AssetInfoPeriod.h24:
        return 'n_h'.trArgs(['24']);
      case AssetInfoPeriod.week:
        return 'week'.tr;
      case AssetInfoPeriod.month:
        return 'month'.tr;
      case AssetInfoPeriod.year:
      default:
        return 'year'.tr;
    }
  }

  Duration _candlesDeltaDuration() {
    switch (selectedPeriod) {
      case AssetInfoPeriod.h24:
        return Duration(hours: 24);
      case AssetInfoPeriod.week:
        return Duration(days: 7);
      case AssetInfoPeriod.month:
        return Duration(days: 30);
      case AssetInfoPeriod.year:
      default:
        return Duration(days: 365);
    }
  }

  CandleInterval _candlesInterval() {
    switch (selectedPeriod) {
      case AssetInfoPeriod.h24:
        return CandleInterval.Min5;
      case AssetInfoPeriod.week:
        return CandleInterval.Min30;
      case AssetInfoPeriod.month:
        return CandleInterval.Hour4;
      case AssetInfoPeriod.year:
      default:
        return CandleInterval.Day;
    }
  }
}
