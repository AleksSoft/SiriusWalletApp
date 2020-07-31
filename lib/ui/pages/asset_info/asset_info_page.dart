import 'package:antares_wallet/ui/pages/asset_info/trades/asset_info_trades_view.dart';
import 'package:antares_wallet/ui/pages/asset_info/transfers/asset_info_transfers_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'details/asset_info_details_view.dart';

class AssetInfoPage extends StatelessWidget {
  static final String route = '/asset-info';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          title: Text('asset_info'.tr),
          bottom: TabBar(
            indicatorWeight: 1.0,
            indicatorColor: Colors.black,
            tabs: <Widget>[
              Tab(text: 'details'.tr),
              Tab(text: 'trades'.tr),
              Tab(text: 'transfers'.tr),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            AssetInfoDetailsView(),
            AssetInfoTradesView(),
            AssetInfoTransfersView(),
          ],
        ),
      ),
    );
  }
}
