import 'package:flutter/material.dart';

import 'history/orders_history_view.dart';
import 'opened/orders_opened_view.dart';
import 'package:get/get.dart';

import 'orders_controller.dart';

class OrdersPage extends StatelessWidget {
  static final String route = '/orders';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrdersController>(
      init: OrdersController(),
      builder: (_) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text('orders'.tr),
              bottom: TabBar(
                indicatorWeight: 1.0,
                indicatorColor: Colors.black,
                tabs: <Widget>[
                  Tab(text: 'opened'.tr),
                  Tab(text: 'history'.tr),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                OrdersOpenedView(),
                OrdersHistoryView(),
              ],
            ),
          ),
        );
      },
    );
  }
}
