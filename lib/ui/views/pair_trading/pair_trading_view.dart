import 'package:antares_wallet/models/asset_pair_data.dart';
import 'package:antares_wallet/models/market_model.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/common/app_sizes.dart';
import 'package:antares_wallet/ui/common/app_ui_helpers.dart';
import 'package:antares_wallet/ui/widgets/volume_ask_tile.dart';
import 'package:antares_wallet/ui/widgets/volume_bid_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:math' as math;

import 'pairt_trading_view_model.dart';

class PairTradingView extends StatelessWidget {
  final AssetPairData data;
  PairTradingView({@required this.data});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PairTradingViewModel>.reactive(
      viewModelBuilder: () => PairTradingViewModel(),
      builder: (_, model, __) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: FlatButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${data.mainAssetSymbol}/${data.secAssetSymbol}',
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
              _CandleChartView(data: model.mockMarkets),
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
            labelStyle: ChartTextStyle(color: AppColors.secondary),
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
              VolumeAskTile(volume: '2,00', ask: '0,94606', percent: 0.35),
              VolumeAskTile(volume: '50 000,00', ask: '0,94660', percent: 0.99),
              VolumeAskTile(volume: '648,69', ask: '0,95867', percent: 0.7),
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
      ],
    );
  }
}

class _Tradelog extends StatelessWidget {
  const _Tradelog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('tradelog'));
  }
}
