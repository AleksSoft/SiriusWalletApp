import 'dart:math' as math;

import 'package:antares_wallet/app/core/common/common.dart';
import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/domain/entities/market_model.dart';
import 'package:antares_wallet/app/presentation/modules/markets/markets_controller.dart';
import 'package:antares_wallet/app/presentation/widgets/asset_pair_tile.dart';
import 'package:antares_wallet/app/presentation/widgets/buy_sell_button_row.dart';
import 'package:antares_wallet/app/presentation/widgets/candle_chart_view.dart';
import 'package:antares_wallet/app/presentation/widgets/tradelog_tile.dart';
import 'package:antares_wallet/app/presentation/widgets/volume_ask_tile.dart';
import 'package:antares_wallet/app/presentation/widgets/volume_bid_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:search_page/search_page.dart';

import 'trading_controller.dart';

class TradingPage extends GetView<TradingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: FlatButton(
          onPressed: () => _showSearch(),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Obx(
                () => Text(
                  controller.assetPairHeader,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: AppSizes.extraSmall),
                child: Transform.rotate(
                  angle: 3 * math.pi / 4,
                  child: Icon(
                    Icons.import_export,
                    color: AppColors.accent,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            ListView(
              shrinkWrap: true,
              children: [
                _HeaderView(),
                Divider(height: 1),
                CandleChartView(height: 300),
                Divider(height: 1),
                Container(
                  height: 28 * AppSizes.extraLarge,
                  child: DefaultTabController(
                    initialIndex: 0,
                    length: 2,
                    child: Column(
                      children: [
                        TabBar(
                          indicatorWeight: 1.0,
                          indicatorColor: Colors.black,
                          tabs: [
                            Tab(text: 'Order book'),
                            Tab(text: 'Tradelog')
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [_OrderBook(), _TradeLog()],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: AppSizes.extraLarge * 2),
              ],
            ),
            Positioned(
              bottom: 0,
              child: BuySellButtonRow(
                onBuyTap: () => TradingController.con.openOrderDetails(true),
                onSellTap: () => TradingController.con.openOrderDetails(false),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<MarketModel> _showSearch() {
    return showSearch(
      context: Get.context,
      delegate: SearchPage<MarketModel>(
        showItemsOnEmpty: true,
        items: MarketsController.con.initialMarketList,
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
              controller.updateWithMarket(model);
            },
          ),
        ),
      ),
    );
  }
}

class _HeaderView extends GetView<TradingController> {
  @override
  Widget build(BuildContext context) {
    final change =
        double.tryParse(controller.marketModel?.priceChange24H) ?? 0.0;
    final titleTheme = Get.textTheme.headline5.copyWith(
      fontWeight: FontWeight.w700,
    );
    return Padding(
      padding: const EdgeInsets.all(AppSizes.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Obx(
            () => Text(
              Formatter.currency(
                controller.marketModel.lastPrice,
                fractionDigits:
                    controller.initialMarket.pairQuotingAsset.accuracy,
                prefix: controller.initialMarket.pairQuotingAsset.displayId,
              ),
              style: titleTheme,
            ),
          ),
          AppUiHelpers.vSpaceExtraSmall,
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Obx(
                        () => Text(
                          '${Formatter.currency(controller.marketModel.priceChange24H, fractionDigits: 2)}%',
                          style: Get.textTheme.button.copyWith(
                            color: _color(change),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: change != 0,
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: _color(change),
                        ),
                      ),
                    ],
                  ),
                  AppUiHelpers.vSpaceExtraSmall,
                  Obx(
                    () => Text(
                      'Vol ${Formatter.currency(controller.marketModel.volume24H, orElse: '—')}',
                      style: Get.textTheme.caption,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Obx(
                    () => Text(
                      'High ${Formatter.currency(controller.marketModel.high, orElse: '—')}',
                      style: Get.textTheme.caption,
                    ),
                  ),
                  AppUiHelpers.vSpaceExtraSmall,
                  Obx(
                    () => Text(
                      'Low ${Formatter.currency(controller.marketModel.low, orElse: '—')}',
                      style: Get.textTheme.caption,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Color _color(double change) {
    if (change > 0) {
      return AppColors.green;
    } else if (change < 0) {
      return AppColors.red;
    }
    return AppColors.secondary;
  }
}

class _OrderBook extends GetView<TradingController> {
  @override
  Widget build(BuildContext context) {
    final width = Get.width / 2;
    final titleStyle = Get.textTheme.caption.copyWith(
      color: AppColors.secondary,
      fontSize: 12.0,
    );
    return Row(
      children: [
        Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(
            left: AppSizes.medium,
            right: AppSizes.extraSmall / 2,
          ),
          width: width,
          child: Column(
            children: [
              SizedBox(
                height: AppSizes.extraLarge,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Volume', style: titleStyle),
                    Text('Bid', style: titleStyle),
                  ],
                ),
              ),
              Divider(
                color: AppColors.secondary.withOpacity(0.4),
                height: 1,
              ),
              AppUiHelpers.vSpaceExtraSmall,
              Expanded(
                child: Obx(
                  () => ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.bids.length == 25
                        ? controller.bids.length
                        : 25,
                    itemBuilder: (context, i) {
                      if (controller.bids.length <= i) {
                        return VolumeBidTile(
                          volume: '—',
                          bid: '—',
                          percent: 0,
                        );
                      } else {
                        var a = controller.bids[i];
                        return VolumeBidTile(
                          volume: Formatter.currency(
                            a.v,
                            fractionDigits:
                                controller.initialMarket.pairBaseAsset.accuracy,
                          ),
                          bid: Formatter.currency(
                            a.p,
                            fractionDigits: controller
                                .initialMarket.pairQuotingAsset.accuracy,
                          ),
                          percent: controller.volumeBidPercent(i),
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(
            right: AppSizes.medium,
            left: AppSizes.extraSmall / 2,
          ),
          width: width,
          child: Column(
            children: [
              SizedBox(
                height: AppSizes.extraLarge,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ask', style: titleStyle),
                    Text('Volume', style: titleStyle),
                  ],
                ),
              ),
              Divider(
                color: AppColors.secondary.withOpacity(0.4),
                height: 1,
              ),
              AppUiHelpers.vSpaceExtraSmall,
              Expanded(
                child: Obx(
                  () => ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.asks.length == 25
                        ? controller.asks.length
                        : 25,
                    itemBuilder: (context, i) {
                      if (controller.asks.length <= i) {
                        return VolumeAskTile();
                      } else {
                        var a = controller.asks[i];
                        return VolumeAskTile(
                          volume: Formatter.currency(
                            a.v,
                            fractionDigits:
                                controller.initialMarket.pairBaseAsset.accuracy,
                          ),
                          ask: Formatter.currency(
                            a.p,
                            fractionDigits: controller
                                .initialMarket.pairQuotingAsset.accuracy,
                          ),
                          percent: controller.volumeAskPercent(i),
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _TradeLog extends GetView<TradingController> {
  @override
  Widget build(context) {
    final titleStyle = Get.textTheme.caption.copyWith(
      color: AppColors.secondary,
      fontSize: 12.0,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.medium),
      child: Column(
        children: [
          SizedBox(
            height: AppSizes.extraLarge,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 3,
                  fit: FlexFit.tight,
                  child: Obx(
                    () => Text(
                      'Price (${controller.initialMarket.pairQuotingAsset.displayId})',
                      style: titleStyle,
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Obx(
                    () => Text(
                      'Trade size (${controller.initialMarket.pairBaseAsset.displayId})',
                      style: titleStyle,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
                  fit: FlexFit.tight,
                  child: Text(
                    'Time',
                    style: titleStyle,
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
          Divider(color: AppColors.secondary.withOpacity(0.4), height: 1),
          AppUiHelpers.vSpaceExtraSmall,
          Expanded(
            child: Obx(
              () {
                return ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.trades.length == 25
                      ? controller.trades.length
                      : 25,
                  itemBuilder: (context, i) {
                    if (controller.trades.length <= i) {
                      return TradelogTile();
                    } else {
                      var a = controller.trades[i];
                      return TradelogTile(
                        price: Formatter.currency(a.price),
                        tradeSize: Formatter.currency(a.volume),
                        time: DateFormat('dd.MM HH:mm:ss').format(
                          DateTime.fromMillisecondsSinceEpoch(
                            a.dateTime.seconds.toInt() * 1000,
                          ),
                        ),
                        action: a.side,
                      );
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
