import 'package:antares_wallet/models/asset_pair_data.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/common/app_sizes.dart';
import 'package:antares_wallet/ui/common/app_ui_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_echarts/flutter_echarts.dart';
import 'package:stacked/stacked.dart';
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
              AppUiHelpers.vSpaceExtraLarge,
              SizedBox(
                height: 300,
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 300),
                  child: !model.isBusy
                      ? _Chart(
                          candlestickData: model.candleData,
                          xAxisKeys: model.marketsAxis,
                        )
                      : CircularProgressIndicator(),
                ),
              ),
              AppUiHelpers.vSpaceExtraLarge,
            ],
          ),
        );
      },
    );
  }
}

class _Chart extends StatelessWidget {
  //[open, close, lowest, highest]
  final List<List<num>> candlestickData;
  final List<String> xAxisKeys;
  const _Chart({
    @required this.xAxisKeys,
    @required this.candlestickData,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Echarts(
      captureAllGestures: true,
      option: '''
                  {
                    tooltip: {
                      trigger: 'item',
                      axisPointer: {
                        type: 'shadow'
                      }
                    },
                    grid: {
                      left: '5%',
                      right: '15%',
                      bottom: '10%',
                      top: '5%',
                      borderColor: 'rgba(209, 209, 214, 1)',
                    },
                    xAxis: {
                      type: 'category',
                      data: $xAxisKeys,
                      scale: false,
                      boundaryGap: false,
                      axisLine: {
                        lineStyle: {
                          color: 'rgba(209, 209, 214, 1)'
                        },
                        show: false
                      },
                      splitLine: {show: false},
                      splitNumber: 20,
                      min: 'dataMin',
                      max: 'dataMax'
                    },
                    yAxis: {
                      scale: true,
                      position: 'right',
                      axisLine: {
                        lineStyle: {
                          color: 'rgba(209, 209, 214, 1)'
                        },
                        show: false
                      },
                    },
                    dataZoom: [
                      {
                        type: 'inside',
                        start: 30,
                        end: 100
                      },
                      {
                        show: false,
                        type: 'slider',
                        top: '90%',
                        start: 50,
                        end: 100
                      }
                    ],
                    series: [
                      {
                        name: 'candle_test',
                        type: 'candlestick',
                        data: $candlestickData,
                        itemStyle: {
                          color: 'rgba(52, 199, 89, 1)',
                          borderColor: 'rgba(52, 199, 89, 1)',
                          color0: 'rgba(255, 59, 48, 1)',
                          borderColor0: 'rgba(255, 59, 48, 1)'
                        },
                      },
                    ]
                  }''',
    );
  }
}
