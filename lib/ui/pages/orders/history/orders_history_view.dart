import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/controllers/orders_controller.dart';
import 'package:antares_wallet/ui/pages/orders/widgets/order_history_tile.dart';
import 'package:antares_wallet/ui/widgets/empty_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'filters/orders_history_filters_view.dart';

class OrdersHistoryView extends StatelessWidget {
  final c = OrdersController.con;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        heroTag: 'orders-history-filter-fab',
        onPressed: () => Get.to(
          OrdersHistoryFiltersView(),
          fullscreenDialog: true,
          transition: Transition.downToUp,
        ),
        child: Icon(Icons.filter_list),
      ),
      body: RefreshIndicator(
        color: AppColors.dark,
        onRefresh: () => c.reloadHistory(silent: true),
        child: GetX<OrdersController>(
          initState: (state) => c.reloadHistory(),
          builder: (_) {
            return LoadHelperView(
              emptyHeader: 'No orders history yet',
              emptyMessage: '',
              showEmpty: _.trades.isEmpty,
              loading: _.loading,
              child: ListView(
                padding: const EdgeInsets.only(top: AppSizes.small),
                shrinkWrap: true,
                children: c.trades
                    .map((trade) => OrderHistoryTile(
                          data: OrderHistoryData.fromTradeModel(trade),
                        ))
                    .toList(),
              ),
            );
          },
        ),
      ),
    );
  }
}
