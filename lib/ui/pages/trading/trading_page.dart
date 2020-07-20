import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/models/market_model.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_tile.dart';
import 'package:antares_wallet/ui/widgets/tradelog_tile.dart';
import 'package:antares_wallet/ui/widgets/volume_ask_tile.dart';
import 'package:antares_wallet/ui/widgets/volume_bid_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:search_page/search_page.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:math' as math;

import 'trading_controller.dart';

class TradingPage extends StatelessWidget {
  static final String route = '/pair-trading';

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
                  Text(
                    _.assetPairHeader,
                    style: TextStyle(fontSize: 16.0),
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
          body: ListView(
            shrinkWrap: true,
            children: [
              _HeaderView(),
              Divider(height: 1),
              _CandleChartView(data: _.mockMarkets),
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

  Future<AssetPair> _showSearch() {
    return showSearch(
      context: Get.overlayContext,
      delegate: SearchPage<AssetPair>(
        showItemsOnEmpty: true,
        items: TradingController.con.assetPairs,
        searchLabel: 'search'.tr,
        filter: (pair) => [
          pair.name,
        ],
        builder: (pair) => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.medium,
          ),
          child: AssetPairTile(
            imgUrl: MockApiService.lykkeIconUrl,
            mainAsset: Asset.getDefault(),
            quotingAsset: Asset.getDefault(),
            showTitle: true,
            onTap: () {
              Get.back();
              TradingController.con.updateAssetPair(pair);
            },
          ),
        ),
      ),
    );
  }
}

class _HeaderView extends StatelessWidget {
  const _HeaderView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleTheme = Theme.of(context).textTheme.headline5.copyWith(
          fontFamily: 'Akrobat',
          fontWeight: FontWeight.w700,
        );
    return Padding(
      padding: const EdgeInsets.all(AppSizes.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('USD 0,00', style: titleTheme),
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
                        '-3,44%',
                        style: Theme.of(context).textTheme.button.copyWith(
                              color: AppColors.red,
                            ),
                      ),
                      Icon(Icons.arrow_drop_down, color: AppColors.red),
                    ],
                  ),
                  AppUiHelpers.vSpaceExtraSmall,
                  Text(
                    'Vol 3,3327',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'High 9 431, 97',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  AppUiHelpers.vSpaceExtraSmall,
                  Text(
                    'Low 8 950, 34',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CandleChartView extends StatelessWidget {
  const _CandleChartView({@required this.data, Key key}) : super(key: key);
  final List<MarketModel> data;
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
          series: <CandleSeries<MarketModel, DateTime>>[
            CandleSeries<MarketModel, DateTime>(
              dataSource: data,
              enableTooltip: true,
              enableSolidCandles: true,
              xValueMapper: (MarketModel sales, _) =>
                  DateTime.fromMillisecondsSinceEpoch(sales.date * 1000),
              lowValueMapper: (MarketModel sales, _) => sales.low,
              highValueMapper: (MarketModel sales, _) => sales.high,
              openValueMapper: (MarketModel sales, _) => sales.open,
              closeValueMapper: (MarketModel sales, _) => sales.close,
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
    final titleStyle = Theme.of(context).textTheme.caption.copyWith(
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
