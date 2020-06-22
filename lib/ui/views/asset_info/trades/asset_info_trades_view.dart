import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/ui/widgets/order_title.dart';
import 'package:antares_wallet/ui/widgets/orders_list_header.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'asset_info_trades_view_model.dart';

class AssetInfoTradesView extends StatelessWidget {
  final AssetData asset;
  const AssetInfoTradesView(this.asset, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AssetInfoTradesViewModel>.reactive(
      viewModelBuilder: () => AssetInfoTradesViewModel(asset),
      builder: (_, model, ___) => ListView(
        physics: BouncingScrollPhysics(),
        children: [
          OrdersListHeaderView(),
          Column(
            children: model.orders.map((e) => OrderTile(data: e)).toList(),
          ),
        ],
      ),
    );
  }
}
