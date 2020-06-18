import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'transfers/asset_info_details_view.dart';

class AssetInfoView extends StatefulWidget {
  final AssetData asset;
  const AssetInfoView(this.asset, {Key key}) : super(key: key);

  @override
  _AssetInfoViewState createState() => _AssetInfoViewState();
}

class _AssetInfoViewState extends State<AssetInfoView>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('asset_info'.tr()),
          bottom: TabBar(
            indicatorWeight: 1.0,
            indicatorColor: Colors.black,
            tabs: <Widget>[
              Tab(text: 'details'.tr()),
              Tab(text: 'trades'.tr()),
              Tab(text: 'transfers'.tr()),
            ],
          ),
          elevation: 0.5,
        ),
        body: TabBarView(
          children: <Widget>[
            AssetInfoDetailsView(widget.asset),
            Center(child: Text('2')),
            Center(child: Text('3')),
          ],
        ),
      ),
    );
  }
}
