import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/models/market_model.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
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

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TradingController>(
      init: TradingController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: FlatButton(
              onPressed: () => _showSearch(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(_.assetPairHeader, style: TextStyle(fontSize: 16.0)),
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
              _CandleChartView(data: _.chartModels),
              Divider(height: 1),
              Container(
                height: 27 * 40.0,
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
      },
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
              TradingController.con.updateMarketModel(model);
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
          Text(
            Formatter.format(
              c.marketModel.lastPrice,
              symbol: c.initialMarket.pairQuotingAsset.displayId,
            ),
            style: titleTheme,
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
                      Text(
                        '${Formatter.format(c.marketModel.priceChange24H)}%',
                        style: Get.textTheme.button.copyWith(
                          color: _color(change),
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
                  Text(
                    'Vol ${Formatter.format(c.marketModel.volume24H, ifZeroOrNull: '—')}',
                    style: Get.textTheme.caption,
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'High ${Formatter.format(c.marketModel.high, ifZeroOrNull: '—')}',
                    style: Get.textTheme.caption,
                  ),
                  AppUiHelpers.vSpaceExtraSmall,
                  Text(
                    'Low ${Formatter.format(c.marketModel.low, ifZeroOrNull: '—')}',
                    style: Get.textTheme.caption,
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
  const _CandleChartView({@required this.data, Key key}) : super(key: key);
  final List<ExampleChartModel> data;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        child: SfCartesianChart(
          borderColor: AppColors.secondary,
          plotAreaBorderColor: AppColors.secondary,
          zoomPanBehavior: ZoomPanBehavior(
            enablePinching: true,
            enablePanning: true,
            zoomMode: ZoomMode.x,
          ),
          plotAreaBorderWidth: 0,
          primaryXAxis: DateTimeAxis(
            enableAutoIntervalOnZooming: true,
            dateFormat: DateFormat.MMMd(),
            intervalType: DateTimeIntervalType.days,
            majorGridLines: MajorGridLines(width: 0),
          ),
          primaryYAxis: NumericAxis(
            interval: 50,
            opposedPosition: true,
            labelStyle: TextStyle(color: AppColors.secondary),
            axisLine: AxisLine(width: 0),
          ),
          series: <CandleSeries<ExampleChartModel, DateTime>>[
            CandleSeries<ExampleChartModel, DateTime>(
              dataSource: data,
              enableTooltip: true,
              enableSolidCandles: true,
              xValueMapper: (ExampleChartModel sales, _) =>
                  DateTime.fromMillisecondsSinceEpoch(sales.date * 1000),
              lowValueMapper: (ExampleChartModel sales, _) => sales.low,
              highValueMapper: (ExampleChartModel sales, _) => sales.high,
              openValueMapper: (ExampleChartModel sales, _) => sales.open,
              closeValueMapper: (ExampleChartModel sales, _) => sales.close,
              dataLabelSettings: DataLabelSettings(isVisible: false),
            ),
          ],
          trackballBehavior: TrackballBehavior(
            lineColor: AppColors.secondary,
            enable: true,
            activationMode: ActivationMode.singleTap,
          ),
        ));
  }
}

class _Orderbook extends StatelessWidget {
  const _Orderbook({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 2;
    final titleStyle = Get.textTheme.caption.copyWith(
      color: AppColors.secondary,
      fontSize: 12.0,
    );
    return Row(
      children: [
        Container(
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
              Divider(color: AppColors.secondary.withOpacity(0.4), height: 1),
              AppUiHelpers.vSpaceExtraSmall,
              VolumeBidTile(volume: '1 566,28', bid: '0,94305', percent: 0.7),
              VolumeBidTile(volume: '50 000,00', bid: '0,94305', percent: 0.99),
              VolumeBidTile(volume: '93,09', bid: '0,94270', percent: 0.6),
              VolumeBidTile(volume: null, bid: null, percent: null),
              VolumeBidTile(volume: null, bid: null, percent: null),
              VolumeBidTile(volume: null, bid: null, percent: null),
              VolumeBidTile(volume: null, bid: null, percent: null),
              VolumeBidTile(volume: null, bid: null, percent: null),
              VolumeBidTile(volume: null, bid: null, percent: null),
              VolumeBidTile(volume: null, bid: null, percent: null),
              VolumeBidTile(volume: null, bid: null, percent: null),
              VolumeBidTile(volume: null, bid: null, percent: null),
              VolumeBidTile(volume: null, bid: null, percent: null),
              VolumeBidTile(volume: null, bid: null, percent: null),
              VolumeBidTile(volume: null, bid: null, percent: null),
              VolumeBidTile(volume: null, bid: null, percent: null),
              VolumeBidTile(volume: null, bid: null, percent: null),
              VolumeBidTile(volume: null, bid: null, percent: null),
              VolumeBidTile(volume: null, bid: null, percent: null),
              VolumeBidTile(volume: null, bid: null, percent: null),
              VolumeBidTile(volume: null, bid: null, percent: null),
              VolumeBidTile(volume: null, bid: null, percent: null),
              VolumeBidTile(volume: null, bid: null, percent: null),
              VolumeBidTile(volume: null, bid: null, percent: null),
              VolumeBidTile(volume: null, bid: null, percent: null),
            ],
          ),
        ),
        Container(
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
              Divider(color: AppColors.secondary.withOpacity(0.4), height: 1),
              AppUiHelpers.vSpaceExtraSmall,
              VolumeAskTile(volume: '2,00', ask: '0,94606', percent: 0.35),
              VolumeAskTile(volume: '50 000,00', ask: '0,94660', percent: 0.99),
              VolumeAskTile(volume: '648,69', ask: '0,95867', percent: 0.7),
              VolumeAskTile(volume: null, ask: null, percent: null),
              VolumeAskTile(volume: null, ask: null, percent: null),
              VolumeAskTile(volume: null, ask: null, percent: null),
              VolumeAskTile(volume: null, ask: null, percent: null),
              VolumeAskTile(volume: null, ask: null, percent: null),
              VolumeAskTile(volume: null, ask: null, percent: null),
              VolumeAskTile(volume: null, ask: null, percent: null),
              VolumeAskTile(volume: null, ask: null, percent: null),
              VolumeAskTile(volume: null, ask: null, percent: null),
              VolumeAskTile(volume: null, ask: null, percent: null),
              VolumeAskTile(volume: null, ask: null, percent: null),
              VolumeAskTile(volume: null, ask: null, percent: null),
              VolumeAskTile(volume: null, ask: null, percent: null),
              VolumeAskTile(volume: null, ask: null, percent: null),
              VolumeAskTile(volume: null, ask: null, percent: null),
              VolumeAskTile(volume: null, ask: null, percent: null),
              VolumeAskTile(volume: null, ask: null, percent: null),
              VolumeAskTile(volume: null, ask: null, percent: null),
              VolumeAskTile(volume: null, ask: null, percent: null),
              VolumeAskTile(volume: null, ask: null, percent: null),
              VolumeAskTile(volume: null, ask: null, percent: null),
              VolumeAskTile(volume: null, ask: null, percent: null),
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
