import 'dart:convert' show json;

import 'package:antares_wallet/models/asset_pair_data.dart';
import 'package:antares_wallet/models/market_model.dart';
import 'package:antares_wallet/services/repositories/asset_repository.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';

class PairTradingController extends GetxController {
  static PairTradingController get con => Get.find();

  final _repository = Get.find<AssetRepository>();
  List<MarketModel> _mockMarkets = List();

  AssetPairData _assetPair = Get.arguments as AssetPairData;

  List<AssetPairData> get assetPairs => _repository.assetPairs;

  List<MarketModel> get mockMarkets => _mockMarkets;

  AssetPairData get assetPair => _assetPair;

  String get assetPairHeader =>
      '${_assetPair.mainAssetSymbol}/${_assetPair.secAssetSymbol}';

  @override
  void onInit() async {
    super.onInit();
    await _repository.loadAllAssetPairs();
    _mockMarkets = await _loadMarkets();
    update();
  }

  void updateAssetPair(AssetPairData data) {
    _assetPair = data;
    update();
  }

  Future<List<MarketModel>> _loadMarkets() async {
    final market = await rootBundle.loadString('assets/json/market.json');
    return MarketData.fromJson(json.decode(market)).data;
  }
}
