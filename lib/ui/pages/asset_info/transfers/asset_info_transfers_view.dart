import 'package:antares_wallet/ui/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'asset_info_transfers_controller.dart';

class AssetInfoTransfersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AssetInfoTransfersController>(
      init: AssetInfoTransfersController(),
      builder: (_) => ListView(
        physics: BouncingScrollPhysics(),
        children: _.trades.map((e) => TransactionTile(e)).toList(),
      ),
    );
  }
}
