import 'dart:async';

import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/controllers/prices_controller.dart';
import 'package:antares_wallet/services/repositories/markets_repository.dart';
import 'package:antares_wallet/services/repositories/watchists_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MarketsController extends GetxController {
  static MarketsController get con => Get.find();

  final _assetsController = Get.find<AssetsController>();

  final List<MarketModel> _initialMarketList = List<MarketModel>();

  final _markets = List<MarketModel>().obs;
  List<MarketModel> get markets => this._markets.value;
  set markets(List<MarketModel> value) => this._markets.value = value;

  StreamSubscription<PriceUpdate> _priceSubscription;

  @override
  void onInit() async {
    ever(_assetsController.initialized, (inited) async {
      if (inited) await rebuildWatchedMarkets();
    });
    _priceSubscription =
        Get.find<PricesController>().pricesStream.listen((PriceUpdate update) {
      int index = markets.indexWhere((e) => e.pairId == update.assetPairId);
      print(update.writeToJsonMap());
      if (index >= 0) markets[index].update(update);
    });
    super.onInit();
  }

  @override
  void onClose() async {
    if (_priceSubscription != null) await _priceSubscription.cancel();
    super.onClose();
  }

  Future<void> rebuildWatchedMarkets() async {
    String id = GetStorage().read(AppStorageKeys.watchlistId);
    _initMarketsListIfNeeded();
    if (id != null && id.isNotEmpty) {
      List<MarketModel> result = List();
      (await WatchlistsRepository.getWatchlist(id)).assetIds.forEach((id) {
        var market = _initialMarketList.firstWhere(
          (m) => m.pairId == id,
          orElse: () => null,
        );
        if (market != null) {
          result.add(market);
        }
      });
      markets = result;
    } else {
      markets = _initialMarketList;
    }
  }

  _initMarketsListIfNeeded({bool force = false}) async {
    if (_initialMarketList.isEmpty) {
      (await MarketsRepository.getMarkets()).forEach((m) async {
        var pair = _assetsController.assetPairById(m.assetPair);
        // check if nothing is null
        if (pair != null) {
          var baseAsset = _assetsController.assetById(pair.baseAssetId);
          var quotingAsset = _assetsController.assetById(pair.quotingAssetId);
          if (baseAsset != null && quotingAsset != null) {
            _initialMarketList.add(
              _buildMarketModel(m, pair, baseAsset, quotingAsset),
            );
          }
        }
      });
    }
  }

  MarketModel _buildMarketModel(
    MarketsResponse_MarketModel responseModel,
    AssetPair pair,
    Asset baseAsset,
    Asset quotingAsset,
  ) {
    return MarketModel(
      iconUrl: _assetsController.categoryById(baseAsset.categoryId).iconUrl,
      pairId: pair.id,
      baseAsset: baseAsset,
      quotingAsset: quotingAsset,
      volume: double.parse(responseModel.volume24H),
      price: double.parse(responseModel.lastPrice),
      basePrice: double.parse(responseModel.ask),
      change: double.parse(responseModel.priceChange24H),
    );
  }
}

class MarketModel {
  String iconUrl;
  String pairId;
  Asset baseAsset;
  Asset quotingAsset;
  double volume;
  double price;
  double basePrice;
  double change;

  MarketModel({
    @required this.iconUrl,
    @required this.pairId,
    @required this.baseAsset,
    @required this.quotingAsset,
    @required this.volume,
    @required this.price,
    @required this.basePrice,
    @required this.change,
  });

  update(PriceUpdate update) {
    this.volume = update.volumeBase24H.isNotEmpty
        ? double.parse(update.volumeBase24H)
        : 0;
    this.change = update.priceChange24H.isNotEmpty
        ? double.parse(update.priceChange24H)
        : 0;
  }
}
