import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ChartView extends StatelessWidget {
  final double width;
  final double height;

  ChartView({
    Key key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: Uri.dataFromString(
          '''
            <!DOCTYPE html>
<html>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<style>
  body {
      height: 100%;
      margin: 0;
      padding: 0;
  }
</style>

<body>

  <!-- TradingView Widget BEGIN -->
  <div class="tradingview-widget-container">
    <div id="tradingview"></div>
    <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
    <script type="text/javascript">
      new TradingView.widget(
        {
          "height":$height,
          "width":$width,
          "symbol": "BITBAY:BTCUSD",
          "interval": "D",
          "timezone": "Etc/UTC",
          "theme": "light",
          "style": "1",
          "locale": "en",
          "enable_publishing": false,
          "hide_top_toolbar": true,
          "hide_legend": true,
          "save_image": false,
          "overrides": {
            "mainSeriesProperties.showCountdown": false
          },
          "container_id": "tradingview"
        }
      );
    </script>
  </div>
  <!-- TradingView Widget END -->

</body>
</html>
            ''',
          mimeType: 'text/html',
          encoding: Encoding.getByName('utf-8'),
        ).toString(),
      ),
    );
  }
}
