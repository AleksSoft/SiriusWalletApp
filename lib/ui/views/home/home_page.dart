import 'package:antares_wallet/ui/views/home/home_assets_view.dart';
import 'package:antares_wallet/ui/views/home/home_exchange_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: false,
        title: Text('Antares Wallet'),
        elevation: 0.5,
      ),
      body: ListView(
        children: [
          HomeAssetsView(),
          HomeExchangeView(),
        ],
      ),
    );
  }
}
