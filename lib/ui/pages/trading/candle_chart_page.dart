import 'package:antares_wallet/ui/pages/trading/widgets/candle_chart_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CandleChartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CandleChartView(height: Get.width));
  }
}
