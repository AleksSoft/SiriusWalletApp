import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/controllers/order_details_controller.dart';
import 'package:antares_wallet/controllers/orders_controller.dart';
import 'package:antares_wallet/ui/pages/orders/order_details/order_details_page.dart';
import 'package:antares_wallet/ui/pages/orders/widgets/order_open_tile.dart';
import 'package:antares_wallet/ui/widgets/empty_reloading_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InvestmentOrdersView extends GetView<OrdersController> {
  @override
  Widget build(BuildContext context) {
    return GetX<OrdersController>(
      initState: (state) => controller.getOrders(),
      builder: (_) {
        return EmptyReloadingView(
          emptyHeader: 'No open orders yet',
          emptyMessage: '',
          isEmpty: _.orders.isEmpty,
          onRefresh: () => controller.getOrders(),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: controller.orders.length,
            itemBuilder: (_, index) {
              var pair = AssetsController.con
                  .assetPairById(controller.orders[index].assetPair);
              var name1 = '';
              var name2 = '';
              if (pair != null) {
                name1 = pair.name.split('/')[0];
                name2 = pair.name.split('/')[1];
              }
              var orderOpenData = OrderOpenData.fromOrder(
                name1,
                name2,
                controller.orders[index],
              );
              return OrderOpenTile(
                data: orderOpenData,
                confirmDismiss: (d) => controller.confirmDismiss(
                  controller.orders[index].id,
                ),
                onTap: () {
                  Get.toNamed(
                    OrderDetailsPage.route,
                    arguments: OrderDetailsArguments(
                      pair.id,
                      !orderOpenData.isSell,
                      isEdit: true,
                      price: orderOpenData.price,
                      amount: orderOpenData.amount.toString(),
                      total: controller.orders[index].totalCost.toString(),
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
