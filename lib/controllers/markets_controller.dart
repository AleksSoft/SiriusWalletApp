import 'dart:async';

import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/services/repositories/markets_repository.dart';
import 'package:antares_wallet/services/repositories/watchists_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/root/root_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MarketsController extends GetxController {
  static MarketsController get con => Get.find();
  static final _api = Get.find<ApiService>();

  final _assetsController = Get.find<AssetsController>();

  final List<MarketModel> initialMarketList = List<MarketModel>();

  List<MarketModel> _markets = List<MarketModel>();
  List<MarketModel> get markets => this._markets;

  StreamSubscription<PriceUpdate> _priceSubscription;

  @override
  void onInit() async {
    ever(_assetsController.initialized, (inited) async {
      if (inited) await rebuildWatchedMarkets();
    });
    ever(RootController.con.pageIndexObs, (pageIndex) async {
      if (pageIndex == 2) await rebuildWatchedMarkets();
    });
    _priceSubscription = _api.client
        .getPriceUpdates(PriceUpdatesRequest())
        .asBroadcastStream()
        .listen((PriceUpdate update) => _updateMarket(update));
    super.onInit();
  }

  @override
  void onClose() async {
    if (_priceSubscription != null) await _priceSubscription.cancel();
    super.onClose();
  }

  Future<List<MarketsResponse_MarketModel>> getMarkets(
          {String assetPairId}) async =>
      await MarketsRepository.getMarkets(assetPairId: assetPairId);

  Future<void> rebuildWatchedMarkets() async {
    update();
    String id = GetStorage().read(AppStorageKeys.watchlistId);
    _initMarketsListIfNeeded(force: true);
    if (!GetUtils.isNullOrBlank(id)) {
      List<MarketModel> result = List();
      (await WatchlistsRepository.getWatchlist(id)).assetIds.forEach((id) {
        var market = initialMarketList.firstWhere(
          (m) => m.pairId == id,
          orElse: () => null,
        );
        if (market != null) {
          result.add(market);
        }
      });
      _markets = result;
    } else {
      _markets = initialMarketList;
    }
    update();
  }

  _initMarketsListIfNeeded({bool force = false}) async {
    if (initialMarketList.isEmpty) {
      (await getMarkets()).forEach((m) async {
        var pair = _assetsController.assetPairById(m.assetPair);
        // check if nothing is null
        if (pair != null) {
          var pairBaseAsset = _assetsController.assetById(pair.baseAssetId);
          var pairQuotingAsset =
              _assetsController.assetById(pair.quotingAssetId);
          if (pairBaseAsset != null && pairQuotingAsset != null) {
            initialMarketList.add(
              _buildMarketModel(m, pair, pairBaseAsset, pairQuotingAsset),
            );
          }
        }
      });
    }
  }

  _updateMarket(PriceUpdate priceUpdate) {
    int index = markets.indexWhere((e) => e.pairId == priceUpdate.assetPairId);
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

  MarketModel.empty()
      : this.iconUrl = '',
        this.pairId = '',
        this.pairBaseAsset = Asset(),
        this.pairQuotingAsset = Asset(),
        this.volume = 0,
        this.price = 0,
        this.change = 0;

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
