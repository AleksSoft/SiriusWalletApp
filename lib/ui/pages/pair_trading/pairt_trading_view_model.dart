import 'dart:convert' show json;

import 'package:antares_wallet/models/market_model.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';

class PairTradingController extends GetxController {
  List<MarketModel> _mockMarkets = List();

  List<MarketModel> get mockMarkets => _mockMarkets;

  @override
  void onInit() async {
    _mockMarkets = await _loadMarkets();
    update();
  }

  Future<List<MarketModel>> _loadMarkets() async {
    final market = await rootBundle.loadString('assets/json/market.json');
    return MarketData.fromJson(json.decode(market)).data;
  }
}
