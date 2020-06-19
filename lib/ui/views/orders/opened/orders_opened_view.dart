import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/views/orders/history/orders_history_view.dart';
import 'package:antares_wallet/ui/widgets/order_title.dart';
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

// class OrdersListHeaderView extends StatelessWidget {
//   const OrdersListHeaderView({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           child: SizedBox(
//             height: 40.0,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Name / Date',
//                   style: Theme.of(context).textTheme.button.copyWith(
//                         color: AppColors.secondary,
//                       ),
//                 ),
//                 CupertinoButton(
//                   onPressed: null,
//                   minSize: 40.0,
//                   padding: const EdgeInsets.all(0.0),
//                   child: Text(
//                     'Cancel all',
//                     style: Theme.of(context).textTheme.button.copyWith(
//                           color: AppColors.secondary,
//                         ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Divider(
//           color: AppColors.secondary.withOpacity(0.2),
//           height: 1,
//         ),
//       ],
//     );
//   }
// }
