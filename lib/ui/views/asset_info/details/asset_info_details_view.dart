import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'asset_info_details_view_model.dart';

class AssetInfoDetailsView extends StatelessWidget {
  const AssetInfoDetailsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AssetInfoDetailsViewModel>.nonReactive(
      viewModelBuilder: () => AssetInfoDetailsViewModel(),
      onModelReady: (model) => model.initialise(),
      builder: (_, __, ___) => Container(),
    );
  }
}
