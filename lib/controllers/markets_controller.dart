import 'dart:async';

import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/repository/markets_repository.dart';
import 'package:antares_wallet/app/data/repository/watchists_repository.dart';
import 'package:antares_wallet/app/data/services/api/api_service.dart';
import 'package:antares_wallet/app/presentation/widgets/asset_pair_tile.dart';
import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/ui/pages/trading/trading_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:search_page/search_page.dart';

import 'asset_pair_sort_tile_controller.dart';

class MarketsController extends GetxController {
  static MarketsController get con => Get.find();

  final ApiService api;
  final GetStorage storage;
  final AssetsController assetsCon;
  MarketsController({
    @required this.api,
    @required this.storage,
    @required this.assetsCon,
  });

  final List<MarketModel> initialMarketList = <MarketModel>[];

  List<MarketModel> _watchedMarkets = <MarketModel>[];
  List<MarketModel> get watchedMarkets => this._watchedMarkets;
  List<MarketModel> get sortedWatchedMarkets {
    var list = List<MarketModel>.from(watchedMarkets);
    switch (_currentSort) {
      case PairSortType.name_bottom:
        list.sort(
            (a, b) => a.pairBaseAsset.name.compareTo(b.pairBaseAsset.name));
        return list;
      case PairSortType.name_top:
        list.sort(
            (a, b) => b.pairBaseAsset.name.compareTo(a.pairBaseAsset.name));
        return list;
      case PairSortType.vol_bottom:
        list.sort((a, b) => a.volume.compareTo(b.volume));
        return list;
      case PairSortType.vol_top:
        list.sort((a, b) => b.volume.compareTo(a.volume));
        return list;
      case PairSortType.price_bottom:
        list.sort((a, b) => a.price.compareTo(b.price));
        return list;
      case PairSortType.price_top:
        list.sort((a, b) => b.price.compareTo(a.price));
        return list;
      case PairSortType.change_bottom:
        list.sort((a, b) => a.change.compareTo(b.change));
        return list;
      case PairSortType.change_top:
        list.sort((a, b) => b.change.compareTo(a.change));
        return list;
      default:
        return list;
    }
  }

  StreamSubscription<PriceUpdate> _priceSubscription;

  PairSortType _currentSort = PairSortType.none;
  set currentSort(PairSortType value) {
    if (_currentSort != value) {
      _currentSort = value;
      update();
    }
  }

  @override
  void onInit() {
    _priceSubscription = api.clientSecure
        .getPriceUpdates(PriceUpdatesRequest())
        .asBroadcastStream()
        .listen((PriceUpdate update) => _updateMarket(update));
    super.onInit();
  }

  @override
  Future<void> onClose() async {
    if (_priceSubscription != null) await _priceSubscription.cancel();
    super.onClose();
  }

  Future<void> initialize() async {
    await rebuildWatchedMarkets();
  }

  MarketModel marketModelByPairId(String pairId) =>
      initialMarketList.firstWhere(
        (e) => e.pairId == pairId,
        orElse: () => MarketModel.empty(),
      );

  List<MarketModel> marketModelsByAssetId(String assetId) => initialMarketList
      .where((e) =>
          e.pairBaseAsset.id == assetId || e.pairQuotingAsset.id == assetId)
      .toList();

  List<MarketModel> marketModelsUpTo(int end) => watchedMarkets.sublist(
        0,
        end >= watchedMarkets.length || watchedMarkets.length < end
            ? watchedMarkets.length
            : end,
      );

  Future<List<MarketsResponse_MarketModel>> getMarkets(
          {String assetPairId}) async =>
      await MarketsRepository.getMarkets(assetPairId: assetPairId);

  Future<void> rebuildWatchedMarkets() async {
    String id = storage.read(AppStorageKeys.watchlistId);
    await _initMarketsListIfNeeded(force: true);
    if (!id.isNullOrBlank) {
      List<MarketModel> result = [];
      var watchlist = await WatchlistsRepository.getWatchlist(id);
      if (watchlist != null) {
        watchlist.assetIds.forEach((id) {
          var market = initialMarketList.firstWhere(
            (m) => m.pairId == id,
            orElse: () => null,
          );
          if (market != null) {
            result.add(market);
          }
        });
      }
      _watchedMarkets = result;
    } else {
      _watchedMarkets = initialMarketList;
    }
    update();
  }

  _initMarketsListIfNeeded({bool force = false}) async {
    if (initialMarketList.isEmpty || force) {
      (await getMarkets()).forEach((m) async {
        var pair = assetsCon.assetPairById(m.assetPair);
        // check if nothing is null
        if (pair != null) {
          var pairBaseAsset = assetsCon.assetById(pair.baseAssetId);
          var pairQuotingAsset = assetsCon.assetById(pair.quotingAssetId);
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
    int index =
        watchedMarkets.indexWhere((e) => e.pairId == priceUpdate.assetPairId);
    if (index >= 0) {
      watchedMarkets[index].update(priceUpdate);
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
      iconUrl: pairBaseAsset.iconUrl,
      pairId: pair.id,
      pairBaseAsset: pairBaseAsset,
      pairQuotingAsset: pairQuotingAsset,
      volume: double.tryParse(responseModel.volume24H) ?? 0.0,
      price: double.tryParse(responseModel.lastPrice) ?? 0.0,
      change: double.tryParse(responseModel.priceChange24H) ?? 0.0,
    );
  }

  Future<MarketModel> search({String query = ''}) {
    return showSearch(
      context: Get.context,
      query: query,
      delegate: SearchPage<MarketModel>(
        showItemsOnEmpty: true,
        items: MarketsController.con.initialMarketList,
        searchLabel: 'search'.tr,
        filter: (model) => [
          model.pairId,
          model.pairBaseAsset.name,
          model.pairBaseAsset.displayId,
          model.pairQuotingAsset.name,
          model.pairQuotingAsset.displayId,
        ],
        builder: (model) => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.medium,
          ),
          child: AssetPairTile(
            imgUrl: model.pairBaseAsset.iconUrl,
            pairBaseAsset: model.pairBaseAsset,
            pairQuotingAsset: model.pairQuotingAsset,
            volume: model.volume,
            lastPrice: model.price,
            change: model.change,
            showTitle: true,
            onTap: () {
              Get.back();
              Get.toNamed(TradingPage.route, arguments: model);
            },
          ),
        ),
      ),
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
    this.volume = double.tryParse(update?.volumeBase24H) ?? 0.0;
    this.change = double.tryParse(update?.priceChange24H) ?? 0.0;
    return this;
  }
}
