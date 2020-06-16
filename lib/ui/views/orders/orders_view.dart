import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'orders_history_view.dart';
import 'orders_opened_view.dart';

class OrdersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('orders'.tr()),
          bottom: TabBar(
            indicatorWeight: 1.0,
            indicatorColor: Colors.black,
            tabs: <Widget>[
              Tab(text: 'opened'.tr()),
              Tab(text: 'history'.tr()),
            ],
          ),
          elevation: 0.5,
        ),
        body: TabBarView(
          children: <Widget>[
            OrdersOpenedView(),
            OrdersHistoryView(),
          ],
        ),
      ),
    );
  }
}
