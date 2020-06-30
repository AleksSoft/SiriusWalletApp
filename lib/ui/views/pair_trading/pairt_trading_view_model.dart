import 'dart:convert' show json;

import 'package:antares_wallet/app/locator.dart';
import 'package:antares_wallet/models/asset_pair_data.dart';
import 'package:antares_wallet/models/market_model.dart';
import 'package:antares_wallet/services/repositories/asset_repository.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:stacked/stacked.dart';

class PairTradingViewModel extends BaseViewModel implements Initialisable {
  final _repository = locator<AssetRepository>();
  List<MarketModel> _mockMarkets = List();

  AssetPairData _assetPair;

  List<AssetPairData> get assetPairs => _repository.assetPairs;

  List<MarketModel> get mockMarkets => _mockMarkets;

  AssetPairData get assetPair => _assetPair;

  String get assetPairHeader =>
      '${_assetPair.mainAssetSymbol}/${_assetPair.secAssetSymbol}';

  PairTradingViewModel(AssetPairData data) {
    _repository.loadAllAssetPairs();
    _assetPair = data;
  }

  @override
  void initialise() async {
    _mockMarkets = await runBusyFuture(_loadMarkets());
  }

  void updateAssetPair(AssetPairData data) {
    _assetPair = data;
    notifyListeners();
  }

  Future<List<MarketModel>> _loadMarkets() async {
    final market = await rootBundle.loadString('assets/json/market.json');
    return MarketData.fromJson(json.decode(market)).data;
  }
}
