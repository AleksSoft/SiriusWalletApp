import 'package:antares_wallet/ui/widgets/order_title.dart';
import 'package:antares_wallet/ui/widgets/orders_list_header.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'orders_controller.dart';

class OrdersPage extends StatelessWidget {
  static final String route = '/orders';
  @override
  Widget build(BuildContext context) {
    final c = OrdersController.con;

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
            Column(
              children: [
                OrdersListHeaderView(),
                Obx(
                  () => ListView(
                    shrinkWrap: true,
                    children: c.orders
                        .map((order) => OrderTile(
                              data: order,
                              onDismissed: () => c.cancelOrder(order.id),
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                OrdersListHeaderView(),
                Obx(
                  () => ListView(
                    shrinkWrap: true,
                    children: c.orders
                        .map((order) => OrderTile(data: order))
                        .toList(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
