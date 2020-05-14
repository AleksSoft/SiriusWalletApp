//import 'dart:convert';
//
//import 'package:flutter/material.dart';
//import 'package:flutter_echarts/flutter_echarts.dart';
//import 'package:sirius/ui/charts/old/scripts/dark_theme_script.dart';
//
//const Map<String, List<num>> _data = {
//  "2013/1/25": [2300, 2291.3, 2288.26, 2308.38],
//  "2013/1/28": [2295.35, 2346.5, 2295.35, 2346.92],
//  "2013/1/29": [2347.22, 2358.98, 2337.35, 2363.8],
//  "2013/1/30": [2360.75, 2382.48, 2347.89, 2383.76],
//  "2013/1/31": [2383.43, 2385.42, 2371.23, 2391.82],
//  "2013/2/1": [2377.41, 2419.02, 2369.57, 2421.15],
//  "2013/2/4": [2425.92, 2428.15, 2417.58, 2440.38],
//  "2013/2/5": [2411, 2433.13, 2403.3, 2437.42],
//  "2013/2/6": [2432.68, 2434.48, 2427.7, 2441.73],
//  "2013/2/7": [2430.69, 2418.53, 2394.22, 2433.89],
//  "2013/2/8": [2416.62, 2432.4, 2414.4, 2443.03],
//  "2013/2/18": [2441.91, 2421.56, 2415.43, 2444.8],
//};
//
//class ExchangePage extends StatefulWidget {
//  ExchangePage({Key key}) : super(key: key);
//
//  @override
//  _ExchangePageState createState() => _ExchangePageState();
//}
//
//class _ExchangePageState extends State<ExchangePage> {
//  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
//  Stream<Map<String, List<num>>> _dataStream;
//
//  Future<Map<String, List<num>>> _getData() async {
//    await Future.delayed(Duration(seconds: 1));
//    return _data;
//  }
//
//  @override
//  void initState() {
//    _dataStream = Stream.fromFuture(_getData());
//    super.initState();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    final width = MediaQuery.of(context).size.width;
//    final height = width * 3 / 4;
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Exchange'),
//        elevation: 0.5,
//      ),
//      body: SingleChildScrollView(
//        child: Container(
//          height: height,
//          width: width,
//          alignment: Alignment.topCenter,
//          child: StreamBuilder<Map<String, List<num>>>(
//              stream: _dataStream,
//              builder: (context, snapshot) {
//                if (snapshot.data == null) {
//                  return Center(child: CircularProgressIndicator());
//                }
//
//                String _xAxisKeys = jsonEncode(_data.keys.toList());
//                String _candlestickData = jsonEncode(_data.values.toList());
//
//                return Echarts(
//                  extensions: [darkThemeScript],
//                  captureAllGestures: true,
//                  option: '''
//                {
//    tooltip: {
//          trigger: 'axis',
//          axisPointer: {
//            type: 'cross'
//          }
//    },
//    grid: {
//          left: '15%',
//          right: '5%',
//          bottom: '20%',
//          top: '5%'
//    },
//    xAxis: {
//          type: 'category',
//          data: $_xAxisKeys,
//          scale: true,
//          boundaryGap: false,
//          axisLine: {onZero: false},
//          splitLine: {show: false},
//          splitNumber: 20,
//          min: 'dataMin',
//          max: 'dataMax'
//    },
//    yAxis: {
//          scale: true,
//          splitArea: {
//            show: true
//          }
//    },
//    dataZoom: [
//          {
//            type: 'inside',
//            start: 30,
//            end: 100
//          },
//          {
//            show: true,
//            type: 'slider',
//            top: '90%',
//            start: 50,
//            end: 100
//          }
//    ],
//    series: [
//          {
//            name: 'test',
//            type: 'candlestick',
//            data: $_candlestickData,
//            itemStyle: {
//              color: '#ec0000',
//              color0: '#00da3c',
//              borderColor: '#8A0000',
//              borderColor0: '#008F28'
//            },
//          },
//    ]
//}
//                ''',
//                );
//              }),
//        ),
//      ),
//    );
//  }
//}

import 'package:flutter/material.dart';

class ExchangePage extends StatelessWidget {
  final List sampleData = [
    {"open": 50.0, "high": 100.0, "low": 40.0, "close": 80, "volumeto": 5000.0},
    {"open": 80.0, "high": 90.0, "low": 55.0, "close": 65, "volumeto": 4000.0},
    {"open": 65.0, "high": 120.0, "low": 60.0, "close": 90, "volumeto": 7000.0},
    {"open": 90.0, "high": 95.0, "low": 85.0, "close": 80, "volumeto": 2000.0},
    {"open": 80.0, "high": 85.0, "low": 40.0, "close": 50, "volumeto": 3000.0},
    {"open": 50.0, "high": 100.0, "low": 40.0, "close": 80, "volumeto": 5000.0},
    {"open": 80.0, "high": 90.0, "low": 55.0, "close": 65, "volumeto": 4000.0},
    {"open": 65.0, "high": 120.0, "low": 60.0, "close": 90, "volumeto": 7000.0},
    {"open": 90.0, "high": 95.0, "low": 85.0, "close": 80, "volumeto": 2000.0},
    {"open": 80.0, "high": 85.0, "low": 40.0, "close": 50, "volumeto": 3000.0},
    {"open": 50.0, "high": 100.0, "low": 40.0, "close": 80, "volumeto": 5000.0},
    {"open": 80.0, "high": 90.0, "low": 55.0, "close": 65, "volumeto": 4000.0},
    {"open": 65.0, "high": 120.0, "low": 60.0, "close": 90, "volumeto": 7000.0},
    {"open": 90.0, "high": 95.0, "low": 85.0, "close": 80, "volumeto": 2000.0},
    {"open": 80.0, "high": 85.0, "low": 40.0, "close": 50, "volumeto": 3000.0},
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = width * 3 / 4;

    return Scaffold(
      appBar: AppBar(
        title: Text('Exchange'),
        elevation: 0.5,
      ),
//      body: Padding(
//        padding: EdgeInsets.all(8.0),
//        child: SizedBox(
//          height: height,
//          width: width,
//          child: GestureDetector(
//            onScaleUpdate: (ScaleUpdateDetails details) {},
//            child: OHLCVGraph(
//              data: sampleData,
//              enableGridLines: true,
//              volumeProp: 0.2,
//            ),
//          ),
//        ),
//      ),
    );
  }
}
