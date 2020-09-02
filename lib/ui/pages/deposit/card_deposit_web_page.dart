import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CardDepositWebPage extends StatelessWidget {
  CardDepositWebPage(this.url, {Key key}) : super(key: key);
  final String url;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Deposit by credit card')),
      body: WebView(
        initialUrl: url,
        gestureNavigationEnabled: true,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
