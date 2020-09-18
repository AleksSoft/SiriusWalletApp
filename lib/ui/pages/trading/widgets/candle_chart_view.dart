import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/trading/trading_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CandleChartView extends StatelessWidget {
  CandleChartView({@required this.height, Key key}) : super(key: key);
  final double height;
  final c = TradingController.con;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'trading-candle-chart-view',
      child: SizedBox(
        height: this.height,
        child: Stack(
          children: [
            Obx(
              () => AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: c.loading
                    ? Center(child: AppUiHelpers.circularProgress)
                    : c.noCandleData
                        ? Center(child: Text('No candle data available'))
                        : Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Obx(
                                () => SizedBox(
                                  height: c.selectedType == CandleType.Trades
                                      ? this.height * 0.65
                                      : this.height,
                                  child: _CandleChart(),
                                ),
                              ),
                              Obx(
                                () => Visibility(
                                  visible: c.selectedType == CandleType.Trades,
                                  child: SizedBox(
                                    height: this.height * 0.35,
                                    child: _VolumeChart(),
                                  ),
                                ),
                              ),
                            ],
                          ),
              ),
            ),
            Positioned(
              left: AppSizes.small,
              top: AppSizes.extraSmall,
              child: _ButtonRow(),
            ),
          ],
        ),
      ),
    );
  }
}

class _VolumeChart extends StatelessWidget {
  _VolumeChart({Key key}) : super(key: key);
  final c = TradingController.con;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SfCartesianChart(
        borderColor: Colors.transparent,
        plotAreaBorderColor: Colors.transparent,
        zoomPanBehavior: ZoomPanBehavior(
          enablePinching: true,
          enablePanning: true,
          zoomMode: ZoomMode.x,
        ),
        onZooming: (ZoomPanArgs args) => c.onVolumeZooming(args),
        primaryXAxis: DateTimeAxis(
          name: 'primaryXAxis',
          zoomFactor: c.zoomF,
          zoomPosition: c.zoomP,
          dateFormat: DateFormat('dd.MM.yy HH:mm'),
          intervalType: DateTimeIntervalType.auto,
          majorGridLines: MajorGridLines(width: 0),
        ),
        primaryYAxis: NumericAxis(
          name: 'primaryYAxis',
          opposedPosition: true,
          rangePadding: ChartRangePadding.round,
          labelStyle: TextStyle(
            color: AppColors.secondary,
          ),
          axisLine: AxisLine(width: 0),
          numberFormat: NumberFormat.currency(
            locale: 'eu',
            symbol: '',
            decimalDigits: c.initialMarket?.pairQuotingAsset?.accuracy ?? 2,
          ),
        ),
        tooltipBehavior: TooltipBehavior(enable: true),
        series: <ChartSeries<Candle, DateTime>>[
          ColumnSeries<Candle, DateTime>(
            dataSource: c.candles,
            color: AppColors.secondary,
            xValueMapper: (candle, _) => DateTime.fromMillisecondsSinceEpoch(
              candle.timestamp.seconds.toInt() * 1000,
            ),
            yValueMapper: (candle, _) => double.tryParse(candle.close) ?? 0.0,
          )
        ],
      ),
    );
  }
}

class _CandleChart extends StatelessWidget {
  _CandleChart({Key key}) : super(key: key);
  final c = TradingController.con;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SfCartesianChart(
        plotAreaBorderWidth: 0,
        borderColor: AppColors.secondary,
        plotAreaBorderColor: AppColors.secondary,
        zoomPanBehavior: ZoomPanBehavior(
          enablePinching: true,
          enablePanning: true,
          zoomMode: ZoomMode.x,
        ),
        onZooming: (ZoomPanArgs args) => c.onMainZooming(args),
        trackballBehavior: TrackballBehavior(
          lineColor: AppColors.secondary.withOpacity(0.4),
          enable: true,
          activationMode: ActivationMode.singleTap,
        ),
        primaryXAxis: DateTimeAxis(
          name: 'primaryXAxis',
          zoomFactor: c.zoomF,
          zoomPosition: c.zoomP,
          isVisible: c.selectedType != CandleType.Trades,
          dateFormat: DateFormat('dd.MM.yy HH:mm'),
          intervalType: DateTimeIntervalType.auto,
          majorGridLines: MajorGridLines(width: 0),
        ),
        primaryYAxis: NumericAxis(
          name: 'primaryYAxis',
          opposedPosition: true,
          rangePadding: ChartRangePadding.round,
          labelStyle: TextStyle(
            color: AppColors.secondary,
          ),
          axisLine: AxisLine(width: 0),
          numberFormat: NumberFormat.currency(
            locale: 'eu',
            symbol: '',
            decimalDigits: c.initialMarket?.pairQuotingAsset?.accuracy ?? 2,
          ),
        ),
        series: <ChartSeries<Candle, DateTime>>[
          c.isCandleChart
              ? CandleSeries<Candle, DateTime>(
                  dataSource: c.candles,
                  enableTooltip: true,
                  enableSolidCandles: true,
                  borderWidth: 0.5,
                  xValueMapper: (candle, _) =>
                      DateTime.fromMillisecondsSinceEpoch(
                    candle.timestamp.seconds.toInt() * 1000,
                  ),
                  lowValueMapper: (candle, _) =>
                      double.tryParse(candle.low) ?? 0.0,
                  highValueMapper: (candle, _) =>
                      double.tryParse(candle.high) ?? 0.0,
                  openValueMapper: (candle, _) =>
                      double.tryParse(candle.open) ?? 0.0,
                  closeValueMapper: (candle, _) =>
                      double.tryParse(candle.close) ?? 0.0,
                  dataLabelSettings: DataLabelSettings(isVisible: false),
                  onRendererCreated: (ChartSeriesController controller) {
                    c.candleController = controller;
                  },
                )
              : StepAreaSeries<Candle, DateTime>(
                  dataSource: c.candles,
                  color: AppColors.accent.withOpacity(0.2),
                  borderColor: AppColors.accent,
                  borderWidth: 1,
                  xValueMapper: (candle, _) =>
                      DateTime.fromMillisecondsSinceEpoch(
                    candle.timestamp.seconds.toInt() * 1000,
                  ),
                  yValueMapper: (candle, _) =>
                      double.tryParse(candle.high) ?? 0.0,
                ),
        ],
      ),
    );
  }
}

class _ButtonRow extends StatelessWidget {
  _ButtonRow({Key key}) : super(key: key);
  final c = TradingController.con;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => c.toggleExpandChart(),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.small),
              child: Icon(Icons.crop_free),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => c.isCandleChart = !c.isCandleChart,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.small),
              child: Icon(Icons.show_chart),
            ),
          ),
        ),
        CupertinoSegmentedControl(
          padding: const EdgeInsets.all(0.0),
          groupValue: selectedList.isNotEmpty ? selectedList[0] ?? 0 : 0,
          onValueChanged: (value) => c.updateAnswer(
            AnswersRequest_Choice()
              ..questionId = question.id
              ..answerIds.add(question.answers[value].id),
          ),
          children: {
            0: Text(question.answers[0].text),
            1: Text(question.answers[1].text),
          },
        ),
        Card(
          child: DropdownButtonHideUnderline(
            child: Obx(
              () => DropdownButton<CandleType>(
                value: c.selectedType,
                isExpanded: false,
                onChanged: (CandleType ct) async {
                  c.loading = true;
                  c.selectedType = ct;
                  await c.reloadCandles();
                  c.loading = false;
                },
                items: TradingController.candleTypes.map(
                  (CandleType value) {
                    return DropdownMenuItem<CandleType>(
                      value: value,
                      child: Text(
                        value == CandleType.Mid ? 'Mid price' : 'Trades',
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
        ),
        Card(
          child: DropdownButtonHideUnderline(
            child: Obx(
              () => DropdownButton<CandleInterval>(
                value: c.selectedInterval,
                isExpanded: false,
                onChanged: (CandleInterval i) async {
                  c.loading = true;
                  c.selectedInterval = i;
                  await c.reloadCandles();
                  c.loading = false;
                },
                items: CandleInterval.values.map(
                  (CandleInterval value) {
                    return DropdownMenuItem<CandleInterval>(
                      value: value,
                      child: Text(c.getIntervalStr(value)),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
        )
      ],
    );
  }
}
