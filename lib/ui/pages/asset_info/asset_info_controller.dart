import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/repositories/portfolio_repository.dart';
import 'package:antares_wallet/repositories/trading_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/google/protobuf/timestamp.pb.dart';
import 'package:antares_wallet/ui/pages/orders/order_details/order_details_controller.dart';
import 'package:antares_wallet/ui/pages/orders/order_details/order_details_page.dart';
import 'package:antares_wallet/ui/pages/orders/widgets/order_history_tile.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

enum AssetInfoPeriod { h24, week, month, year }

class AssetInfoController extends GetxController {
  static AssetInfoController get con => Get.find();

  final _dateFormat = DateFormat().addPattern('dd.MM.yy HH:mm:ss');

  final Asset asset = Get.arguments as Asset;

  final _selectedPeriod = AssetInfoPeriod.h24.obs;
  AssetInfoPeriod get selectedPeriod => this._selectedPeriod.value;
  set selectedPeriod(AssetInfoPeriod value) =>
      this._selectedPeriod.value = value;

  final _selectedMarket = MarketModel.empty().obs;
  MarketModel get selectedMarket => this._selectedMarket.value;
  set selectedMarket(MarketModel value) => this._selectedMarket.value = value;

  final trades = List<OrderHistoryData>().obs;

  final funds = List<FundsResponse_FundsModel>().obs;

  final markets = List<MarketModel>().obs;
  List<MarketModel> get marketsShort {
    var maxSize = markets.length <= 3 ? markets.length : 3;
    return markets.sublist(0, maxSize);
  }

  final candles = List<Candle>().obs;

  bool get seeAllActive => markets.length > 3;

  @override
  void onInit() async {
    // get asset markets
    if (MarketsController.con.initialMarketList.isEmpty) {
      await MarketsController.con.rebuildWatchedMarkets();
    }
    markets.assignAll(MarketsController.con.marketModelsByAssetId(asset.id));

    // subscribe to market and period changes
    ever(_selectedMarket, (_) => updateCandles());
    ever(_selectedPeriod, (_) => updateCandles());

    // set selected market
    if (marketsShort.isNotEmpty) selectedMarket = marketsShort.first;

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
    List<AssetTradesResponse_AssetTradeModel> assetTrades =
        await TradingRepository.getAssetTrades(
      assetId: asset.id,
      take: 50,
      skip: 0,
    );
    var resultList = List<OrderHistoryData>();
    if (assetTrades != null && assetTrades.isNotEmpty) {
      final assetC = AssetsController.con;
      assetTrades.forEach((AssetTradesResponse_AssetTradeModel model) {
        AssetPair assetPair = assetC.assetPairById(model.assetPairId);
        Asset baseAsset = assetC.assetById(assetPair?.baseAssetId);
        Asset quotingAsset = assetC.assetById(assetPair?.quotingAssetId);
        if (assetPair != null && baseAsset != null && quotingAsset != null) {
          double priceDouble = (double.tryParse(model.price) ?? 0.0);
          double amountDouble = double.tryParse(model.amount) ?? 0.0;
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
    candles.clear();
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
  }

  openOrderDetails(bool isBuy) => Get.toNamed(
        OrderDetailsPage.route,
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
