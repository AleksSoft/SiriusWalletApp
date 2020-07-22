import 'dart:convert' show json;

import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/models/market_model.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';

class TradingController extends GetxController {
  static TradingController get con => Get.find();
  final _assetsController = Get.find<AssetsController>();

  List<ExampleChartModel> _mockMarkets = List();

  AssetPair _assetPair = Get.arguments as AssetPair;

  List<AssetPair> get assetPairs => _assetsController.assetPairs;

  List<ExampleChartModel> get mockMarkets => _mockMarkets;

  AssetPair get assetPair => _assetPair;

  String get assetPairHeader => '';
  // '${_assetPair.mainAssetSymbol}/${_assetPair.secAssetSymbol}';

  @override
  void onInit() async {
    _mockMarkets = await _loadMarkets();
    super.onInit();
  }

  void updateAssetPair(AssetPair data) {
    _assetPair = data;
    update();
  }

  Future<List<ExampleChartModel>> _loadMarkets() async {
    final market = await rootBundle.loadString('assets/json/market.json');
    return MarketData.fromJson(json.decode(market)).data;
  }
}
