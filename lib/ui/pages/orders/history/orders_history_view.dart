import 'package:antares_wallet/ui/widgets/order_title.dart';
import 'package:antares_wallet/ui/widgets/orders_list_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'orders_history_controller.dart';

class OrdersHistoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrdersHistoryViewModel>(
      init: OrdersHistoryViewModel(),
      builder: (_) {
        return Column(
          children: [
            OrdersListHeaderView(),
            ListView(
              shrinkWrap: true,
              children: _.orderList
                  .map((order) => OrderTile(data: order, dismissible: false))
                  .toList(),
            ),
          ],
        );
      },
    );
  }
}
