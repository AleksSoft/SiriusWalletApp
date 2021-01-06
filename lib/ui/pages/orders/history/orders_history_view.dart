import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/presentation/widgets/empty_reloading_view.dart';
import 'package:antares_wallet/controllers/orders_controller.dart';
import 'package:antares_wallet/ui/pages/orders/widgets/order_history_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'filters/orders_history_filters_view.dart';

class OrdersHistoryView extends GetView<OrdersController> {
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
      body: GetX<OrdersController>(
        initState: (state) => controller.reloadHistory(),
        builder: (_) {
          return EmptyReloadingView(
            emptyHeader: 'No orders history yet',
            emptyMessage: '',
            isEmpty: _.trades.isEmpty,
            isLoading: _.loading,
            onRefresh: () => controller.reloadHistory(silent: true),
            child: ListView(
              padding: const EdgeInsets.only(top: AppSizes.small),
              shrinkWrap: true,
              children: controller.trades
                  .map((trade) => OrderHistoryTile(
                        data: OrderHistoryData.fromTradeModel(trade),
                      ))
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}
