import 'package:antares_wallet/ui/widgets/order_title.dart';
import 'package:antares_wallet/ui/widgets/orders_list_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'orders_opened_controller.dart';

class OrdersOpenedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrdersOpenedController>(
      init: OrdersOpenedController(),
      builder: (_) {
        return Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              OrdersListHeaderView(),
              ListView(
                shrinkWrap: true,
                children: _.orderList
                    .map((order) => OrderTile(
                          data: order,
                          dismissible: true,
                          onDismissed: () => _.cancelOrder(order.id),
                        ))
                    .toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
