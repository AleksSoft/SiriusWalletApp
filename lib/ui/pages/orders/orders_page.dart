import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/controllers/orders_controller.dart';
import 'package:antares_wallet/ui/pages/orders/order_details/order_details_controller.dart';
import 'package:antares_wallet/ui/pages/orders/order_details/order_details_page.dart';
import 'package:antares_wallet/ui/widgets/empty_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'history/orders_history_view.dart';
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
              color: AppColors.dark,
              onRefresh: () => c.getOrders(),
              child: GetX<OrdersController>(
                initState: (state) => c.getOrders(),
                builder: (_) {
                  return EmptyView(
                    header: 'No open orders yet',
                    message: '',
                    condition: _.orders.isEmpty,
                    child: Column(
                      children: [
                        ButtonBar(
                          alignment: MainAxisAlignment.end,
                          buttonPadding: const EdgeInsets.all(0.0),
                          children: <Widget>[
                            AnimatedSwitcher(
                              duration: Duration(milliseconds: 300),
                              child: _.orders.isNotEmpty
                                  ? CupertinoButton(
                                      onPressed: () => c.cancelAllOrders(),
                                      child: Text('Cancel all',
                                          style: Get.textTheme.button.copyWith(
                                            color: AppColors.accent,
                                            fontSize: 14.0,
                                          )),
                                    )
                                  : SizedBox.shrink(),
                            )
                          ],
                        ),
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: c.orders.length,
                            itemBuilder: (_, index) {
                              var pair = AssetsController.con
                                  .assetPairById(c.orders[index].assetPair);
                              var name1 = '';
                              var name2 = '';
                              if (pair != null) {
                                name1 = pair.name.split('/')[0];
                                name2 = pair.name.split('/')[1];
                              }
                              var orderOpenData = OrderOpenData.fromOrder(
                                name1,
                                name2,
                                c.orders[index],
                              );
                              return OrderOpenTile(
                                data: orderOpenData,
                                confirmDismiss: (d) => c.confirmDismiss(
                                  c.orders[index].id,
                                ),
                                onTap: () {
                                  Get.toNamed(
                                    OrderDetailsPage.route,
                                    arguments: OrderDetailsArguments(
                                      pair.id,
                                      !orderOpenData.isSell,
                                      isEdit: true,
                                      price: orderOpenData.price,
                                      amount: orderOpenData.amount.toString(),
                                      total:
                                          c.orders[index].totalCost.toString(),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            OrdersHistoryView(),
          ],
        ),
      ),
    );
  }
}
