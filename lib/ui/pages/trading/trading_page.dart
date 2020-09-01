import 'dart:math' as math;

import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/ui/pages/trading/widgets/candle_chart_view.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_tile.dart';
import 'package:antares_wallet/ui/widgets/buy_sell_button_row.dart';
import 'package:antares_wallet/ui/widgets/tradelog_tile.dart';
import 'package:antares_wallet/ui/widgets/volume_ask_tile.dart';
import 'package:antares_wallet/ui/widgets/volume_bid_tile.dart';
import 'package:antares_wallet/utils/formatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:search_page/search_page.dart';

import 'trading_controller.dart';

class TradingPage extends StatelessWidget {
  static final String route = '/trading';
  final c = TradingController.con;

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
                  c.assetPairHeader,
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
                            children: [_Orderbook(), _Tradelog()],
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
      context: Get.overlayContext,
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
              c.updateWithMarket(model);
            },
          ),
        ),
      ),
    );
  }
}

class _HeaderView extends StatelessWidget {
  final c = TradingController.con;

  @override
  Widget build(BuildContext context) {
    final change = double.tryParse(c.marketModel?.priceChange24H) ?? 0.0;
    final titleTheme = Get.textTheme.headline5.copyWith(
      fontFamily: 'Akrobat',
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
                c.marketModel.lastPrice,
                maxDecimal: c.initialMarket.pairQuotingAsset.accuracy,
                symbol: c.initialMarket.pairQuotingAsset.displayId,
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
                          '${Formatter.currency(c.marketModel.priceChange24H, maxDecimal: 2)}%',
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
                      'Vol ${Formatter.currency(c.marketModel.volume24H, ifZeroOrNull: '—')}',
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
                      'High ${Formatter.currency(c.marketModel.high, ifZeroOrNull: '—')}',
                      style: Get.textTheme.caption,
                    ),
                  ),
                  AppUiHelpers.vSpaceExtraSmall,
                  Obx(
                    () => Text(
                      'Low ${Formatter.currency(c.marketModel.low, ifZeroOrNull: '—')}',
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

class _Orderbook extends StatelessWidget {
  final c = TradingController.con;
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
                    itemCount: c.bids.length == 25 ? c.bids.length : 25,
                    itemBuilder: (context, i) {
                      if (c.bids.length <= i) {
                        return VolumeBidTile(
                          volume: '—',
                          bid: '—',
                          percent: 0,
                        );
                      } else {
                        var a = c.bids[i];
                        return VolumeBidTile(
                          volume: Formatter.currency(a.v),
                          bid: Formatter.currency(a.p),
                          percent: 0.35,
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
                    itemCount: c.asks.length == 25 ? c.asks.length : 25,
                    itemBuilder: (context, i) {
                      if (c.asks.length <= i) {
                        return VolumeAskTile();
                      } else {
                        var a = c.asks[i];
                        return VolumeAskTile(
                          volume: Formatter.currency(a.v),
                          ask: Formatter.currency(a.p),
                          percent: 0.35,
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

class _Tradelog extends StatelessWidget {
  final c = TradingController.con;
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
                      'Price (${c.initialMarket.pairQuotingAsset.displayId})',
                      style: titleStyle,
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Obx(
                    () => Text(
                      'Trade size (${c.initialMarket.pairBaseAsset.displayId})',
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
                  itemCount: c.trades.length == 25 ? c.trades.length : 25,
                  itemBuilder: (context, i) {
                    if (c.trades.length <= i) {
                      return TradelogTile();
                    } else {
                      var a = c.trades[i];
                      return TradelogTile(
                        price: Formatter.currency(a.price),
                        tradeSize: Formatter.currency(a.volume),
                        time: DateFormat('dd.MM HH:mm:ss').format(
                          DateTime.fromMillisecondsSinceEpoch(
                            a.dateTime.seconds.toInt() * 1000,
                          ),
                        ),
                        action: a.action,
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
