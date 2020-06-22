import 'package:antares_wallet/ui/widgets/order_title.dart';
import 'package:antares_wallet/ui/widgets/orders_list_header.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'orders_history_view_model.dart';

class OrdersHistoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrdersHistoryViewModel>.nonReactive(
      viewModelBuilder: () => OrdersHistoryViewModel(),
      onModelReady: (model) => model.initialise(),
      builder: (context, OrdersHistoryViewModel model, child) {
        return Column(
          children: [
            OrdersListHeaderView(),
            ListView(
              shrinkWrap: true,
              children: model.orderList
                  .map((order) => OrderTile(data: order, dismissible: false))
                  .toList(),
            ),
          ],
        );
      },
    );
  }
}
