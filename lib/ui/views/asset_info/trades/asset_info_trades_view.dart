import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'asset_info_trades_view_model.dart';

class AssetInfoTradesView extends StatelessWidget {
  const AssetInfoTradesView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AssetInfoTradesViewModel>.nonReactive(
      viewModelBuilder: () => AssetInfoTradesViewModel(),
      onModelReady: (model) => model.initialise(),
      builder: (_, __, ___) => Container(),
    );
  }
}
