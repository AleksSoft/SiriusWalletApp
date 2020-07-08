import 'package:antares_wallet/ui/widgets/order_title.dart';
import 'package:antares_wallet/ui/widgets/orders_list_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'orders_opened_view_model.dart';

class OrdersOpenedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrdersOpenedViewModel>.nonReactive(
      viewModelBuilder: () => OrdersOpenedViewModel(),
      onModelReady: (model) => model.initialise(),
      builder: (_, model, ___) {
        return Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              OrdersListHeaderView(),
              ListView(
                shrinkWrap: true,
                children: model.orderList
                    .map((order) => OrderTile(
                          data: order,
                          dismissible: true,
                          onDismissed: () => model.cancelOrder(order.id),
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
