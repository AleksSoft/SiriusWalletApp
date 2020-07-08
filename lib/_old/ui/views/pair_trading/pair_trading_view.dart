import 'package:antares_wallet/models/asset_pair_data.dart';
import 'package:antares_wallet/models/market_model.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/common/app_sizes.dart';
import 'package:antares_wallet/ui/common/app_ui_helpers.dart';
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
            children: [
              Padding(
                padding: const EdgeInsets.all(AppSizes.medium),
                child: _HeaderView(),
              ),
              Divider(height: 1),
              _CandleChartView(data: model.mockMarkets),
              Divider(height: 1),
              AppUiHelpers.vSpaceExtraLarge,
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
    return Column(
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
          ),
          plotAreaBorderWidth: 0,
          primaryXAxis: DateTimeAxis(
            dateFormat: DateFormat.MMM(),
            interval: 3,
            intervalType: DateTimeIntervalType.months,
            majorGridLines: MajorGridLines(width: 0),
          ),
          primaryYAxis: NumericAxis(
            labelFormat: '\${value}',
            axisLine: AxisLine(width: 0),
          ),
          series: <CandleSeries<MarketModel, DateTime>>[
            CandleSeries<MarketModel, DateTime>(
              enableTooltip: true,
              enableSolidCandles: true,
              dataSource: data,
              name: 'AAPL',
              xValueMapper: (MarketModel sales, _) =>
                  DateTime.fromMillisecondsSinceEpoch(sales.date),
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
