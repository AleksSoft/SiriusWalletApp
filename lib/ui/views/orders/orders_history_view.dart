import 'package:antares_wallet/ui/widgets/nothing_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'order_title.dart';
import 'orders_history_view_model.dart';

class OrdersHistoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrdersHistoryViewModel>.nonReactive(
      viewModelBuilder: () => OrdersHistoryViewModel(),
      onModelReady: (model) => model.initialise(),
      builder: (context, OrdersHistoryViewModel model, child) {
        return Container(
          alignment: Alignment.topCenter,
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            child: model.isBusy
                ? Center(
                    child: NothingView(
                      header: 'No history yet',
                      message: 'Your history will appear here.',
                    ),
                  )
                : ListView(
                    shrinkWrap: true,
                    children: [
                      OrderTile(completed: true),
                      OrderTile(completed: true),
                      OrderTile(completed: true),
                      OrderTile(completed: true),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
