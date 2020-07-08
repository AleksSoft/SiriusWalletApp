import 'dart:convert' show json;

import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/models/asset_pair_data.dart';
import 'package:antares_wallet/models/market_model.dart';
import 'package:antares_wallet/services/repositories/asset_repository.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';

enum AssetInfoPeriod {
  h24,
  week,
  month,
  year,
}

class AssetInfoDetailsController extends GetxController {
  final _repository = Get.find<AssetRepository>();

  final AssetData _asset = Get.arguments as AssetData;

  AssetInfoPeriod _selectedPeriod = AssetInfoPeriod.h24;

  List<MarketModel> _mockMarkets = List();

  List<AssetPairData> _assetPairs = List();

  List<AssetPairData> get assetPairs => _assetPairs;

  List<AssetPairData> get assetPairsShort {
    var maxSize = _assetPairs.length <= 3 ? _assetPairs.length : 3;
    return _assetPairs.sublist(0, maxSize);
  }

  AssetData get asset => _asset;

  bool get seeAllActive => _assetPairs.length > 3;

  AssetInfoPeriod get selectedPeriod => _selectedPeriod;

  List<MarketModel> get mockMarkets => _filteredMarkets();

  @override
  void onInit() async {
    super.onInit();
    _assetPairs = await _repository.loadAssetPairs(asset);
    _mockMarkets = await _loadMarkets();
    update();
  }

  void updatePeriod(AssetInfoPeriod period) {
    if (_selectedPeriod != period) {
      _selectedPeriod = period;
      update();
    }
  }

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

  // TODO: this is just example method; needs to be changed
  List<MarketModel> _filteredMarkets() {
    int length = _mockMarkets.length;
    int start = 0;
    switch (_selectedPeriod) {
      case AssetInfoPeriod.h24:
        start = length - (length / 50).round();
        break;
      case AssetInfoPeriod.week:
        start = length - (length / 20).round();
        break;
      case AssetInfoPeriod.month:
        start = length - (length / 5).round();
        break;
      case AssetInfoPeriod.year:
      default:
        break;
    }
    return _mockMarkets.sublist(start).toList();
  }

  Future<List<MarketModel>> _loadMarkets() async {
    final market = await rootBundle.loadString('assets/json/market.json');
    return MarketData.fromJson(json.decode(market)).data;
  }
}
