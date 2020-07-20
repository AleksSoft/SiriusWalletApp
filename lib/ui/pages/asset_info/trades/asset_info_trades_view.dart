import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/widgets/order_title.dart';
import 'package:antares_wallet/ui/widgets/orders_list_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'asset_info_trades_controller.dart';

class AssetInfoTradesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AssetInfoTradesController>(
      init: AssetInfoTradesController(),
      builder: (_) => ListView(
        physics: BouncingScrollPhysics(),
        children: [
          OrdersListHeaderView(),
          ListView(
            children: _.orders
                .map((e) => OrderTile(data: LimitOrderModel.getDefault()))
                .toList(),
          ),
        ],
      ),
    );
  }
}
