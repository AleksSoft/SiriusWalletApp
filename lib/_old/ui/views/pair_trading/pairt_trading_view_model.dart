import 'dart:convert' show json;

import 'package:antares_wallet/models/market_model.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:stacked/stacked.dart';

class PairTradingViewModel extends BaseViewModel implements Initialisable {
  List<MarketModel> _mockMarkets = List();

  List<MarketModel> get mockMarkets => _mockMarkets;

  @override
  void initialise() async {
    _mockMarkets = await runBusyFuture(_loadMarkets());
  }

  Future<List<MarketModel>> _loadMarkets() async {
    final market = await rootBundle.loadString('assets/json/market.json');
    return MarketData.fromJson(json.decode(market)).data;
  }
}
