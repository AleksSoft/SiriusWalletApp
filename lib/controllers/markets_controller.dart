import 'dart:async';

import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/controllers/prices_controller.dart';
import 'package:antares_wallet/services/repositories/markets_repository.dart';
import 'package:antares_wallet/services/repositories/watchists_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/root/root_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MarketsController extends GetxController {
  static MarketsController get con => Get.find();

  final _assetsController = Get.find<AssetsController>();
  final _rootController = Get.find<RootController>();

  final List<MarketModel> _initialMarketList = List<MarketModel>();

  List<MarketModel> _markets = List<MarketModel>();
  List<MarketModel> get markets => this._markets;

  StreamSubscription<PriceUpdate> _priceSubscription;

  @override
  void onInit() async {
    ever(_assetsController.initialized, (inited) async {
      if (inited) await rebuildWatchedMarkets();
    });
    ever(_rootController.pageIndexObs, (pageIndex) async {
      if (pageIndex == 2) await rebuildWatchedMarkets();
    });
    _priceSubscription = Get.find<PricesController>()
        .pricesStream
        .listen((PriceUpdate update) => _updateMarket(update));
    super.onInit();
  }

  @override
  void onClose() async {
    if (_priceSubscription != null) await _priceSubscription.cancel();
    super.onClose();
  }

  Future<void> rebuildWatchedMarkets() async {
    update();
    String id = GetStorage().read(AppStorageKeys.watchlistId);
    _initMarketsListIfNeeded(force: true);
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
      _markets = result;
    } else {
      _markets = _initialMarketList;
    }
    update();
  }

  _initMarketsListIfNeeded({bool force = false}) async {
    if (_initialMarketList.isEmpty) {
      (await MarketsRepository.getMarkets()).forEach((m) async {
        var pair = _assetsController.assetPairById(m.assetPair);
        // check if nothing is null
        if (pair != null) {
          var pairBaseAsset = _assetsController.assetById(pair.baseAssetId);
          var pairQuotingAsset =
              _assetsController.assetById(pair.quotingAssetId);
          if (pairBaseAsset != null && pairQuotingAsset != null) {
            _initialMarketList.add(
              _buildMarketModel(m, pair, pairBaseAsset, pairQuotingAsset),
            );
          }
        }
      });
    }
  }

  _updateMarket(PriceUpdate priceUpdate) {
    int index = markets.indexWhere((e) => e.pairId == priceUpdate.assetPairId);
    print(priceUpdate.writeToJsonMap());
    if (index >= 0) {
      var updatedMarket = markets[index].update(priceUpdate);
      markets.replaceRange(index, index++, [updatedMarket]);
      update();
    }
  }

  MarketModel _buildMarketModel(
    MarketsResponse_MarketModel responseModel,
    AssetPair pair,
    Asset pairBaseAsset,
    Asset pairQuotingAsset,
  ) {
    return MarketModel(
      iconUrl: _assetsController.categoryById(pairBaseAsset.categoryId).iconUrl,
      pairId: pair.id,
      pairBaseAsset: pairBaseAsset,
      pairQuotingAsset: pairQuotingAsset,
      volume: double.parse(responseModel.volume24H),
      price: double.parse(responseModel.lastPrice),
      change: double.parse(responseModel.priceChange24H),
    );
  }
}

class MarketModel {
  String iconUrl;
  String pairId;
  Asset pairBaseAsset;
  Asset pairQuotingAsset;
  double volume;
  double price;
  double change;

  MarketModel({
    @required this.iconUrl,
    @required this.pairId,
    @required this.pairBaseAsset,
    @required this.pairQuotingAsset,
    @required this.volume,
    @required this.price,
    @required this.change,
  });

  MarketModel update(PriceUpdate update) {
    this.volume = update.volumeBase24H.isNotEmpty
        ? double.parse(update.volumeBase24H)
        : 0;
    this.change = update.priceChange24H.isNotEmpty
        ? double.parse(update.priceChange24H)
        : 0;
    return this;
  }
}
