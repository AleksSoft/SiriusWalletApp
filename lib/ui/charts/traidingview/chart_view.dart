library flutter_echarts;

// --- FIX_BLINK ---
import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:sirius/ui/charts/traidingview/tradingview_script.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// <!DOCTYPE html><html><head><meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0, target-densitydpi=device-dpi" /><style type="text/css">body,html,#chart{height: 100%;width: 100%;margin: 0px;}div {-webkit-tap-highlight-color:rgba(255,255,255,0);}</style></head><body><div id="chart" /></body></html>
/// 'data:text/html;base64,' + base64Encode(const Utf8Encoder().convert( /* STRING ABOVE */ ))
const htmlBase64 =
    'data:text/html;base64,PCFET0NUWVBFIGh0bWw+PGh0bWw+PGhlYWQ+PG1ldGEgY2hhcnNldD0idXRmLTgiPjxtZXRhIG5hbWU9InZpZXdwb3J0IiBjb250ZW50PSJ3aWR0aD1kZXZpY2Utd2lkdGgsIGluaXRpYWwtc2NhbGU9MS4wLCBtYXhpbXVtLXNjYWxlPTEuMCwgbWluaW11bS1zY2FsZT0xLjAsIHVzZXItc2NhbGFibGU9MCwgdGFyZ2V0LWRlbnNpdHlkcGk9ZGV2aWNlLWRwaSIgLz48c3R5bGUgdHlwZT0idGV4dC9jc3MiPmJvZHksaHRtbCwjY2hhcnR7aGVpZ2h0OiAxMDAlO3dpZHRoOiAxMDAlO21hcmdpbjogMHB4O31kaXYgey13ZWJraXQtdGFwLWhpZ2hsaWdodC1jb2xvcjpyZ2JhKDI1NSwyNTUsMjU1LDApO308L3N0eWxlPjwvaGVhZD48Ym9keT48ZGl2IGlkPSJjaGFydCIgLz48L2JvZHk+PC9odG1sPg==';

class ChartView extends StatefulWidget {
  ChartView({
    Key key,
    this.option,
    this.extraScript = '',
    this.onMessage,
    this.theme,
    this.captureAllGestures = false,
    this.onLoad,
  }) : super(key: key);

  final String option;
  final String extraScript;
  final void Function(String message) onMessage;
  final String theme;
  final bool captureAllGestures;
  final void Function() onLoad;

  @override
  _ChartViewState createState() => _ChartViewState();
}

class _ChartViewState extends State<ChartView> {
  WebViewController _controller;

  String _currentOption;

  // --- FIX_BLINK ---
  double _opacity = Platform.isAndroid ? 0.0 : 1.0;
  // --- FIX_BLINK ---

  @override
  void initState() {
    super.initState();
    _currentOption = widget.option;
  }

  void init() async {
    await _controller?.evaluateJavascript('''
      $tradingViewScript
      var chart = new TradingView.widget(
        {
          "autosize": true,
          "symbol": "BITBAY:BTCUSD",
          "interval": "D",
          "timeframe": "10d",
          "timezone": "Etc/UTC",
          "theme": "light",
          "style": "1",
          "locale": "en",
          "enable_publishing": false,
          "hide_top_toolbar": true,
          "hide_legend": true,
          "overrides": {
            "mainSeriesProperties.style": 0,
            "volumePaneSize": "tiny",
            "mainSeriesProperties.showCountdown": false
          },
          "time_frames": [
            { "text": "1y", "resolution": "W" },
            { "text": "6m", "resolution": "D" },
            { "text": "1m", "resolution": "D" },
            { "text": "10d", "resolution": "60" },
            { "text": "3d", "resolution": "60" },
          ],
          "container_id": "chart"
        }
      );
      ${this.widget.extraScript}
    ''');
    if (widget.onLoad != null) {
      widget.onLoad();
    }
  }

  void update(String preOption) async {
    _currentOption = widget.option;
    if (_currentOption != preOption) {
      await _controller?.evaluateJavascript('''
        try {
          
        } catch(e) {
        }
      ''');
    }
  }

  @override
  void didUpdateWidget(ChartView oldWidget) {
    super.didUpdateWidget(oldWidget);
    update(oldWidget.option);
  }

  // --- FIX_IOS_LEAK ---
  @override
  void dispose() {
    if (Platform.isIOS) {
      _controller.clearCache();
    }
    super.dispose();
  }
  // --- FIX_IOS_LEAK ---

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = width * 3 / 4;

    // --- FIX_BLINK ---
    return Opacity(
        opacity: _opacity,
        // --- FIX_BLINK ---
        child: SizedBox(
          width: width,
          height: height,
          child: WebView(
            initialUrl: htmlBase64,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller = webViewController;
            },
            onPageFinished: (String url) {
              // --- FIX_BLINK ---
              if (Platform.isAndroid) {
                setState(() {
                  _opacity = 1.0;
                });
              }
              // --- FIX_BLINK ---
              init();
            },
            javascriptChannels: <JavascriptChannel>[
              JavascriptChannel(
                  name: 'Messager',
                  onMessageReceived: (JavascriptMessage javascriptMessage) {
                    widget?.onMessage(javascriptMessage.message);
                  }),
            ].toSet(),
            gestureRecognizers: widget.captureAllGestures
                ? (Set()
                  ..add(Factory<VerticalDragGestureRecognizer>(() {
                    return VerticalDragGestureRecognizer()
                      ..onStart = (DragStartDetails details) {}
                      ..onUpdate = (DragUpdateDetails details) {}
                      ..onDown = (DragDownDetails details) {}
                      ..onCancel = () {}
                      ..onEnd = (DragEndDetails details) {};
                  }))
                  ..add(Factory<HorizontalDragGestureRecognizer>(() {
                    return HorizontalDragGestureRecognizer()
                      ..onStart = (DragStartDetails details) {}
                      ..onUpdate = (DragUpdateDetails details) {}
                      ..onDown = (DragDownDetails details) {}
                      ..onCancel = () {}
                      ..onEnd = (DragEndDetails details) {};
                  })))
                : null,
          ),
        ));
  }
}
