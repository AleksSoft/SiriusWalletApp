import 'package:antares_wallet/controllers/orders_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'history/orders_history_view.dart';
import 'investments/investment_orders_view.dart';
import 'opened/opened_orders_view.dart';

class OrdersPage extends StatelessWidget {
  static final String route = '/orders';
  final c = OrdersController.con;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('orders'.tr),
          bottom: TabBar(
            indicatorWeight: 1.0,
            indicatorColor: Colors.black,
            tabs: <Widget>[
              Tab(text: 'opened'.tr),
              Tab(text: 'history'.tr),
              Tab(text: 'investments'.tr),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            OpenedOrdersView(),
            OrdersHistoryView(),
            InvestmentOrdersView(),
          ],
        ),
      ),
    );
  }
}
