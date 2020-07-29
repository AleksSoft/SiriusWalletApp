import 'dart:convert' show json;

import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/models/market_model.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';

class TradingController extends GetxController {
  static TradingController get con => Get.find();
  final _marketsController = MarketsController.con;

  MarketModel _initialMarket = Get.arguments as MarketModel;

  MarketModel get initialMarket => _initialMarket;

  List<MarketModel> get markets => _marketsController.markets;

  List<ExampleChartModel> _mockChartModels = List();

  List<ExampleChartModel> get chartModels => _mockChartModels;

  MarketsResponse_MarketModel _marketModel =
      MarketsResponse_MarketModel.getDefault();

  MarketsResponse_MarketModel get marketModel => _marketModel;

  String get assetPairHeader =>
      '${initialMarket.pairBaseAsset.displayId}/${initialMarket.pairQuotingAsset.displayId}';

  @override
  void onInit() async {
    _mockChartModels = await _loadMarkets();
    _marketModel = (await MarketsController.con.getMarkets(
      assetPairId: initialMarket.pairId,
    ))
        .first;
    update();
    super.onInit();
  }

  void updateMarketModel(MarketModel data) {
    _initialMarket = data;
    update();
  }

  Future<List<ExampleChartModel>> _loadMarkets() async {
    final market = await rootBundle.loadString('assets/json/market.json');
    return MarketData.fromJson(json.decode(market)).data;
  }
}
