import 'dart:convert' show json;

import 'package:antares_wallet/models/market_model.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:stacked/stacked.dart';

class PairTradingViewModel extends BaseViewModel implements Initialisable {
  List<MarketModel> _mockMarkets = List();

  List<String> get marketsAxis => _mockMarkets.map((e) => '${e.date}').toList();

  List<List<num>> get candleData =>
      _mockMarkets.map((e) => [e.open, e.close, e.low, e.high]).toList();

  @override
  void initialise() async {
    _mockMarkets = await runBusyFuture(_loadMarkets());
  }

  Future<List<MarketModel>> _loadMarkets() async {
    final market = await rootBundle.loadString('assets/json/market.json');
    return MarketData.fromJson(json.decode(market)).data;
  }
}
