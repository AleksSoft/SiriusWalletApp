import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_tile.dart';
import 'package:antares_wallet/ui/widgets/tradelog_tile.dart';
import 'package:antares_wallet/ui/widgets/volume_ask_tile.dart';
import 'package:antares_wallet/ui/widgets/volume_bid_tile.dart';
import 'package:antares_wallet/utils/formatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:search_page/search_page.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:math' as math;

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
              Text(c.assetPairHeader, style: TextStyle(fontSize: 16.0)),
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
      body: ListView(
        shrinkWrap: true,
        children: [
          _HeaderView(),
          Divider(height: 1),
          _CandleChartView(),
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
                    tabs: [Tab(text: 'Order book'), Tab(text: 'Tradelog')],
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
        ],
      ),
    );
  }

  Future<MarketModel> _showSearch() {
    return showSearch(
      context: Get.overlayContext,
      delegate: SearchPage<MarketModel>(
        showItemsOnEmpty: true,
        items: TradingController.con.markets,
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
            imgUrl: MockApiService.lykkeIconUrl,
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
  final change = double.parse(
    TradingController.con.marketModel.priceChange24H,
    (_) => 0.0,
  );

  @override
  Widget build(BuildContext context) {
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
              Formatter.format(
                c.marketModel.lastPrice,
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
                          '${Formatter.format(c.marketModel.priceChange24H)}%',
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
                      'Vol ${Formatter.format(c.marketModel.volume24H, ifZeroOrNull: '—')}',
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
                      'High ${Formatter.format(c.marketModel.high, ifZeroOrNull: '—')}',
                      style: Get.textTheme.caption,
                    ),
                  ),
                  AppUiHelpers.vSpaceExtraSmall,
                  Obx(
                    () => Text(
                      'Low ${Formatter.format(c.marketModel.low, ifZeroOrNull: '—')}',
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

class _CandleChartView extends StatelessWidget {
  final c = TradingController.con;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: SfCartesianChart(
          plotAreaBorderWidth: 0,
          borderColor: AppColors.secondary,
          plotAreaBorderColor: AppColors.secondary,
          // enableSideBySideSeriesPlacement: false,
          zoomPanBehavior: ZoomPanBehavior(
            enablePinching: true,
            enablePanning: true,
            zoomMode: ZoomMode.x,
          ),
          trackballBehavior: TrackballBehavior(
            lineColor: AppColors.secondary,
            enable: true,
            activationMode: ActivationMode.singleTap,
          ),
          primaryXAxis: DateTimeAxis(
            // name: 'xAxis1',
            enableAutoIntervalOnZooming: true,
            // zoomFactor: zoomFactor,
            // zoomPosition: 1 - zoomFactor,
            dateFormat: DateFormat.MMMd(),
            intervalType: DateTimeIntervalType.days,
            majorGridLines: MajorGridLines(width: 0),
          ),
          primaryYAxis: NumericAxis(
            interval: 20,
            opposedPosition: true,
            labelStyle: TextStyle(color: AppColors.secondary),
            axisLine: AxisLine(width: 0),
          ),
          // axes: <ChartAxis>[
          //   NumericAxis(
          //     name: 'yAxis1',
          //     isVisible: false,
          //     opposedPosition: true,
          //     majorGridLines: MajorGridLines(width: 0),
          //     labelStyle: TextStyle(color: AppColors.secondary),
          //   )
          // ],
          series: <ChartSeries<CandleUpdate, DateTime>>[
            CandleSeries<CandleUpdate, DateTime>(
              dataSource: c.candles,
              enableTooltip: true,
              enableSolidCandles: true,
              name: 'AAPL',
              animationDuration: 500,
              xValueMapper: (candle, _) => DateTime.fromMillisecondsSinceEpoch(
                candle.timestamp.seconds.toInt() * 1000,
              ),
              lowValueMapper: (candle, _) =>
                  double.parse(candle.low, (_) => 0.0),
              highValueMapper: (candle, _) =>
                  double.parse(candle.low, (_) => 0.0),
              openValueMapper: (candle, _) =>
                  double.parse(candle.low, (_) => 0.0),
              closeValueMapper: (candle, _) =>
                  double.parse(candle.low, (_) => 0.0),
              dataLabelSettings: DataLabelSettings(isVisible: false),
              onRendererCreated: (ChartSeriesController controller) {
                c.chartSeriesController = controller;
              },
            ),
            // ColumnSeries<ExampleChartModel, DateTime>(
            //   opacity: 0.2,
            //   dataSource: data,
            //   xAxisName: 'xAxis1',
            //   yAxisName: 'yAxis1',
            //   animationDuration: 500,
            //   enableTooltip: false,
            //   isTrackVisible: false,
            //   trackBorderColor: Colors.transparent,
            //   trackColor: Colors.transparent,
            //   color: AppColors.secondary,
            //   xValueMapper: (sales, _) =>
            //       DateTime.fromMillisecondsSinceEpoch(sales.date * 1000),
            //   yValueMapper: (sales, _) => sales.vol,
            // )
          ],
        ),
      ),
    );
  }
}

class _Orderbook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = Get.width / 2;
    final titleStyle = Get.textTheme.caption.copyWith(
      color: AppColors.secondary,
      fontSize: 12.0,
    );
    return GetX<TradingController>(
      builder: (_) {
        var orderbook = _.orderbook;
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
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 25,
                      itemBuilder: (context, i) {
                        if (orderbook.bids.length <= i) {
                          return VolumeBidTile(
                            volume: '—',
                            bid: '—',
                            percent: 0,
                          );
                        } else {
                          var a = orderbook.bids[i];
                          return VolumeBidTile(
                            volume: Formatter.format(a.v),
                            bid: Formatter.format(a.p),
                            percent: 0.35,
                          );
                        }
                      },
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
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 25,
                      itemBuilder: (context, i) {
                        if (orderbook.asks.length <= i) {
                          return VolumeAskTile(
                            volume: '—',
                            ask: '—',
                            percent: 0,
                          );
                        } else {
                          var a = orderbook.asks[i];
                          return VolumeAskTile(
                            volume: Formatter.format(a.v),
                            ask: Formatter.format(a.p),
                            percent: 0.35,
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
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
                  child: Text(
                    'Price (symbol)',
                    style: titleStyle,
                  ),
                ),
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Text(
                    'Trade size (symbol)',
                    style: titleStyle,
                    textAlign: TextAlign.right,
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
          TradelogTile(
              price: '0,95285', tradeSize: '7,93', time: '29.06 23:29:58'),
          TradelogTile(
              price: '0,95285', tradeSize: '7,93', time: '29.06 23:29:58'),
          TradelogTile(
              price: '0,95285', tradeSize: '7,93', time: '29.06 23:29:58'),
          TradelogTile(
              price: '0,95285', tradeSize: '7,93', time: '29.06 23:29:58'),
          TradelogTile(
              price: '0,95285', tradeSize: '7,93', time: '29.06 23:29:58'),
        ],
      ),
    );
  }
}
