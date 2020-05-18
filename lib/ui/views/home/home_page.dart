import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sirius/ui/charts/traidngview/chart_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'), elevation: 0.5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ChartView(
              captureAllGestures: true,
              onLoad: () => print('---chart loaded---'),
            ),
          ],
        ),
      ),
    );
  }
}
