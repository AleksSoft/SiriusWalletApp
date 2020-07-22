import 'dart:convert' show json;

import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/models/market_model.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';

enum AssetInfoPeriod {
  h24,
  week,
  month,
  year,
}

class AssetInfoDetailsController extends GetxController {
  final Asset _asset = Get.arguments as Asset;

  AssetInfoPeriod _selectedPeriod = AssetInfoPeriod.h24;

  List<ExampleChartModel> _mockMarkets = List();

  List<AssetPair> _assetPairs = List();

  List<AssetPair> get assetPairs => _assetPairs;

  List<AssetPair> get assetPairsShort {
    var maxSize = _assetPairs.length <= 3 ? _assetPairs.length : 3;
    return _assetPairs.sublist(0, maxSize);
  }

  Asset get asset => _asset;

  bool get seeAllActive => _assetPairs.length > 3;

  AssetInfoPeriod get selectedPeriod => _selectedPeriod;

  List<ExampleChartModel> get mockMarkets => _filteredMarkets();

  @override
  void onInit() async {
    _assetPairs = Get.find<AssetsController>().pairsForAssetId(asset.id);
    _mockMarkets = await _loadMarkets();
    super.onInit();
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
  List<ExampleChartModel> _filteredMarkets() {
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

  Future<List<ExampleChartModel>> _loadMarkets() async {
    final market = await rootBundle.loadString('assets/json/market.json');
    return MarketData.fromJson(json.decode(market)).data;
  }
}
