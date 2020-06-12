import 'package:antares_wallet/business/view_models/orders/orders_opened_view_model.dart';
import 'package:antares_wallet/locator.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/views/widgets/nothing_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'order_title.dart';

class OrdersOpenedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrdersOpenedViewModel>.nonReactive(
      viewModelBuilder: () => locator<OrdersOpenedViewModel>(),
      disposeViewModel: false,
      createNewModelOnInsert: false,
      onModelReady: (model) => model.initialise(),
      builder: (_, model, __) {
        return Container(
          alignment: Alignment.topCenter,
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            child: model.isBusy
                ? Center(
                    child: NothingView(
                      header: 'No open orders yet',
                      message: 'Your orders will appear here once placed.',
                    ),
                  )
                : Column(
                    children: [
                      OrdersOpenedFilterView(),
                      ListView(
                        shrinkWrap: true,
                        children: [
                          OrderTile(),
                          OrderTile(),
                          OrderTile(),
                          OrderTile(),
                        ],
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}

class OrdersOpenedFilterView extends StatelessWidget {
  const OrdersOpenedFilterView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SizedBox(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Name / Date',
                  style: Theme.of(context).textTheme.button.copyWith(
                        color: AppColors.secondary,
                      ),
                ),
                Text(
                  'Cancel all',
                  style: Theme.of(context).textTheme.button.copyWith(
                        color: AppColors.secondary,
                      ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: AppColors.secondary.withOpacity(0.2),
          height: 1,
        ),
      ],
    );
  }
}
