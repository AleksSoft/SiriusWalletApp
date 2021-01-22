import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'history/orders_history_view.dart';
import 'opened/opened_orders_view.dart';

class OrdersPage extends StatelessWidget {
  final _tabBarContent = <Tab, GetView>{
    Tab(text: 'opened'.tr): OpenedOrdersView(),
    Tab(text: 'history'.tr): OrdersHistoryView(),
    // Tab(text: 'investments'.tr): InvestmentOrdersView(),
  };

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabBarContent.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('orders'.tr),
          bottom: TabBar(
            indicatorWeight: 1.0,
            indicatorColor: Colors.black,
            tabs: _tabBarContent.keys.toList(),
          ),
        ),
        body: TabBarView(children: _tabBarContent.values.toList()),
      ),
    );
  }
}
