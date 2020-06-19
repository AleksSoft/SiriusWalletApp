import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/widgets/order_title.dart';
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

class OrdersListHeaderView extends StatelessWidget {
  const OrdersListHeaderView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.button.copyWith(
          color: AppColors.secondary,
          fontSize: 12.0,
        );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Divider(
          color: AppColors.secondary.withOpacity(0.4),
          height: 1,
          indent: 16.0,
          endIndent: 16.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SizedBox(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 5,
                  fit: FlexFit.tight,
                  child: Text('Pair', style: textStyle),
                ),
                Flexible(
                  flex: 3,
                  fit: FlexFit.tight,
                  child: Text('Avg./Price', style: textStyle),
                ),
                Flexible(
                  flex: 3,
                  fit: FlexFit.tight,
                  child: Text(
                    'Filled/Amount',
                    style: textStyle,
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: AppColors.secondary.withOpacity(0.4),
          height: 1,
          indent: 16.0,
          endIndent: 16.0,
        ),
      ],
    );
  }
}
