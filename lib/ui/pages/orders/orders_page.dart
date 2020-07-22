import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/ui/pages/orders/order_details/order_details_page.dart';
import 'package:antares_wallet/ui/pages/orders/widgets/order_history_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'orders_controller.dart';
import 'widgets/order_open_tile.dart';

class OrdersPage extends StatelessWidget {
  static final String route = '/orders';
  final c = OrdersController.con;

  @override
  Widget build(BuildContext context) {
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
            RefreshIndicator(
              onRefresh: () => c.getOrders(),
              child: Column(
                children: [
                  ButtonBar(
                    alignment: MainAxisAlignment.end,
                    buttonPadding: const EdgeInsets.all(0.0),
                    children: <Widget>[
                      CupertinoButton(
                        onPressed: () => c.cancelAllOrders(),
                        child: Text('Cancel all',
                            style: Get.textTheme.button.copyWith(
                              color: AppColors.accent,
                              fontSize: 14.0,
                            )),
                      )
                    ],
                  ),
                  GetX<OrdersController>(
                    initState: (state) => c.getOrders(),
                    builder: (_) {
                      return Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: c.orders.length,
                          itemBuilder: (context, index) {
                            return OrderOpenTile(
                              data: OrderOpenData.fromPairAndOrder(
                                AssetsController.con.assetPairFromId(
                                  c.orders[index].assetPair,
                                ),
                                c.orders[index],
                              ),
                              onDismissed: () => c.cancelOrder(
                                c.orders[index].id,
                              ),
                              onTap: () => Get.toNamed(OrderDetailsPage.route),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            RefreshIndicator(
              onRefresh: () => c.getTrades(10, 0),
              child: GetX<OrdersController>(
                initState: (state) => c.getTrades(10, 0),
                builder: (_) {
                  return ListView(
                    padding: const EdgeInsets.only(top: AppSizes.small),
                    shrinkWrap: true,
                    children: c.trades
                        .map((trade) => OrderHistoryTile(
                              data: OrderHistoryData.fromTradeModel(trade),
                            ))
                        .toList(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
