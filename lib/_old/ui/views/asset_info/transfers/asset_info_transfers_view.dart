import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/ui/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'asset_info_transfers_view_model.dart';

class AssetInfoTransfersView extends StatelessWidget {
  final AssetData asset;
  const AssetInfoTransfersView(this.asset, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AssetInfoTransfersViewModel>.reactive(
      viewModelBuilder: () => AssetInfoTransfersViewModel(),
      builder: (_, model, ___) => ListView(
        physics: BouncingScrollPhysics(),
        children: model.trades.map((e) => TransactionTile(e)).toList(),
      ),
    );
  }
}
