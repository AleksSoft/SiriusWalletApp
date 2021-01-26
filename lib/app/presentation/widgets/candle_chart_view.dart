import 'package:antares_wallet/app/core/common/common.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../modules/trading/trading_controller.dart';

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
                child: c.loading.value
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
              padding: const EdgeInsets.all(AppSizes.extraSmall),
              child: Icon(Icons.crop_free, size: 20),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => c.isCandleChart = !c.isCandleChart,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.extraSmall),
              child: Icon(Icons.show_chart, size: 20),
            ),
          ),
        ),
        Card(
          child: Obx(
            () {
              int checked = TradingController.candleTypes.indexOf(
                c.selectedType,
              );
              return CupertinoSegmentedControl<int>(
                padding: const EdgeInsets.all(0.0),
                groupValue: checked,
                borderColor: Colors.transparent,
                selectedColor: AppColors.dark,
                onValueChanged: (index) async => c.reloadChartType(
                  TradingController.candleTypes[index],
                ),
                children: {
                  0: Text(
                    ' Mid price ',
                    style: Get.textTheme.button.copyWith(
                      fontSize: 14,
                      color: checked == 0 ? AppColors.primary : AppColors.dark,
                    ),
                  ),
                  1: Text(
                    'Trades',
                    style: Get.textTheme.button.copyWith(
                      fontSize: 14,
                      color: checked == 1 ? AppColors.primary : AppColors.dark,
                    ),
                  ),
                },
              );
            },
          ),
        ),
        GestureDetector(
          onTap: () => Get.bottomSheet(
            Scaffold(
              appBar: AppBar(
                leading: CloseButton(),
                title: Text('Select interval:'),
                centerTitle: true,
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: CandleInterval.values
                      .map(
                        (e) => ListTile(
                          onTap: () {
                            Get.back();
                            c.reloadChartInterval(e);
                          },
                          visualDensity: VisualDensity.compact,
                          title: Text(
                            c.getIntervalStr(e),
                            textAlign: TextAlign.center,
                            style: Get.textTheme.button.copyWith(fontSize: 14),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            backgroundColor: AppColors.primary,
            elevation: AppSizes.small,
            isDismissible: true,
            enableDrag: true,
          ),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.extraSmall * 1.5),
              child: Obx(
                () => Text(
                  c.getIntervalStr(c.selectedInterval),
                  style: Get.textTheme.button.copyWith(fontSize: 14),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
