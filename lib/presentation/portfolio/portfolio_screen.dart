import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_echarts/flutter_echarts.dart';

import 'dark_theme_script.dart' show darkThemeScript;

const Map<String, List<num>> baseData = {
  "2013/1/25": [2300, 2291.3, 2288.26, 2308.38],
  "2013/1/28": [2295.35, 2346.5, 2295.35, 2346.92],
  "2013/1/29": [2347.22, 2358.98, 2337.35, 2363.8],
  "2013/1/30": [2360.75, 2382.48, 2347.89, 2383.76],
  "2013/1/31": [2383.43, 2385.42, 2371.23, 2391.82],
  "2013/2/1": [2377.41, 2419.02, 2369.57, 2421.15],
  "2013/2/4": [2425.92, 2428.15, 2417.58, 2440.38],
  "2013/2/5": [2411, 2433.13, 2403.3, 2437.42],
  "2013/2/6": [2432.68, 2434.48, 2427.7, 2441.73],
  "2013/2/7": [2430.69, 2418.53, 2394.22, 2433.89],
  "2013/2/8": [2416.62, 2432.4, 2414.4, 2443.03],
  "2013/2/18": [2441.91, 2421.56, 2415.43, 2444.8],
};

class PortfolioScreen extends StatefulWidget {
  PortfolioScreen({Key key}) : super(key: key);

  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Map<String, List<num>> _data = {
    "2013/1/24": [2320.26, 2320.26, 2287.3, 2362.94],
  };

  getData() async {
    await Future.delayed(Duration(seconds: 1));
    this.setState(() {
      _data.addAll(baseData);
    });
  }

  @override
  void initState() {
    super.initState();

    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Candlestick'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                height: 250,
                width: 300,
                child: Echarts(
                  extensions: [darkThemeScript],
                  captureAllGestures: true,
                  option: '''
                  {
    tooltip: {
        trigger: 'axis',
        axisPointer: {
            type: 'cross'
        }
    },
    grid: {
        left: '10%',
        right: '10%',
        bottom: '15%'
    },
    xAxis: {
        type: 'category',
        data: ${jsonEncode(_data.keys.toList())},
        scale: true,
        boundaryGap: false,
        axisLine: {onZero: false},
        splitLine: {show: false},
        splitNumber: 20,
        min: 'dataMin',
        max: 'dataMax'
    },
    yAxis: {
        scale: true,
        splitArea: {
            show: true
        }
    },
    dataZoom: [
        {
            type: 'inside',
            start: 0,
            end: 100
        },
        {
            show: true,
            type: 'slider',
            top: '90%',
            start: 50,
            end: 100
        }
    ],
    series: [
        {
            name: 'test',
            type: 'candlestick',
            data: ${jsonEncode(_data.values.toList())},
            itemStyle: {
                color: '#ec0000',
                color0: '#00da3c',
                borderColor: '#8A0000',
                borderColor0: '#008F28'
            },
        },
    ]
}
                  ''',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
