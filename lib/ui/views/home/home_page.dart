import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sirius/ui/charts/traidingview/chart_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = width * 3 / 4;

    return Scaffold(
      appBar: AppBar(title: Text('Home'), elevation: 0.5),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: height,
            width: width,
            child: ChartView(
              captureAllGestures: true,
            ),
          ),
        ],
      ),
    );
  }
}
