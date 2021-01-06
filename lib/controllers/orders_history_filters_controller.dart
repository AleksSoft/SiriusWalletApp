import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/models/orders_history_filter.dart';
import 'package:antares_wallet/app/presentation/widgets/asset_pair_tile.dart';
import 'package:antares_wallet/controllers/orders_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:search_page/search_page.dart';

import 'markets_controller.dart';

class OrdersHistoryFiltersController extends GetxController {
  static OrdersHistoryFiltersController get con => Get.find();

  final _marketsController = MarketsController.con;

  final DateFormat _dateFormat = DateFormat('d.M.y');

  OrdersHistoryFilter _filter;

  OrdersPeriod get period => _filter.period;
  set period(OrdersPeriod value) {
    if (_filter.period != value) {
      _filter.period = value;
      update();
    }
  }

  OrdersTransactionType get transactionType => _filter.transactionType;
  set transactionType(OrdersTransactionType value) {
    if (_filter.transactionType != value) {
      _filter.transactionType = value;
      update();
    }
  }

  MarketModel get marketModel => _filter.assetPairId != null
      ? _marketsController.marketModelByPairId(_filter.assetPairId)
      : null;
  set marketModel(MarketModel value) {
    if (_filter.assetPairId != value?.pairId) {
      _filter.assetPairId = value?.pairId;
      update();
    }
  }

  int get timeFrom => _filter.timeFrom;
  set timeFrom(int value) => _filter.timeFrom = value;

  int get timeTo => _filter.timeTo;
  set timeTo(int value) => _filter.timeTo = value;

  String get timeFromStr => timeFrom != null
      ? _dateFormat.format(DateTime.fromMillisecondsSinceEpoch(timeFrom))
      : '';

  String get timeToStr => timeTo != null
      ? _dateFormat.format(DateTime.fromMillisecondsSinceEpoch(timeTo))
      : '';

  @override
  void onInit() {
    _filter = OrdersHistoryFilter.fromStorage();
    super.onInit();
  }

  Future<void> applyFilter() async {
    await _filter.save();
    OrdersController.con.reloadHistory(newFilter: _filter);
    Get.back();
  }

  void clearFilter() {
    _filter.clear();
    update();
  }

  void updateFilterAssetPair() => showSearch(
        context: Get.context,
        delegate: SearchPage<MarketModel>(
          showItemsOnEmpty: true,
          items: _marketsController.initialMarketList,
          searchLabel: 'search'.tr,
          filter: (model) => [
            model.pairBaseAsset.name,
            model.pairBaseAsset.displayId,
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
                marketModel = model;
              },
            ),
          ),
        ),
      );

  String getTypeTitle(OrdersTransactionType type) {
    switch (type) {
      case OrdersTransactionType.all:
        return 'all'.tr;
      case OrdersTransactionType.sell:
        return 'sell'.tr;
      case OrdersTransactionType.buy:
        return 'buy'.tr;
      default:
        return '';
    }
  }

  String getPeriodTitle(OrdersPeriod period) {
    switch (period) {
      case OrdersPeriod.all:
        return 'all'.tr;
      case OrdersPeriod.day:
        return 'day'.tr;
      case OrdersPeriod.week:
        return 'week'.tr;
      case OrdersPeriod.custom:
        return 'custom'.tr;
      default:
        return '';
    }
  }
}
