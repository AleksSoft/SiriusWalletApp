import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/presentation/widgets/empty_reloading_view.dart';
import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/controllers/orders_controller.dart';
import 'package:antares_wallet/ui/pages/orders/widgets/order_open_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OpenedOrdersView extends GetView<OrdersController> {
  final assetsCon = AssetsController.con;
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
          child: Column(
            children: [
              ButtonBar(
                alignment: MainAxisAlignment.end,
                buttonPadding: const EdgeInsets.all(0.0),
                children: <Widget>[
                  AnimatedSwitcher(
                    duration: Duration(milliseconds: 300),
                    child: _.orders.isNotEmpty
                        ? CupertinoButton(
                            onPressed: () => controller.cancelAllOrders(),
                            child: Text('Cancel all',
                                style: Get.textTheme.button.copyWith(
                                  color: AppColors.accent,
                                  fontSize: 14.0,
                                )),
                          )
                        : SizedBox.shrink(),
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.orders.length,
                  itemBuilder: (_, index) {
                    final order = controller.orders[index];
                    return OrderOpenTile(
                      data: order,
                      confirmDismiss: (d) => controller.confirmDismiss(
                        order.orderModel.id,
                      ),
                      onTap: () {},
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
