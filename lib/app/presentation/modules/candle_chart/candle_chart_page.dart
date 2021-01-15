import 'package:antares_wallet/app/presentation/widgets/candle_chart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CandleChartPage extends StatefulWidget {
  @override
  _CandleChartPageState createState() => _CandleChartPageState();
}

class _CandleChartPageState extends State<CandleChartPage> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CandleChartView(
        height: Get.width <= Get.height ? Get.width : Get.height,
      ),
    );
  }
}
