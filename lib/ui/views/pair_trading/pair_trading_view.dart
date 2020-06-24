import 'package:antares_wallet/models/asset_pair_data.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'pairt_trading_view_model.dart';

class PairTradingView extends StatelessWidget {
  final AssetPairData data;
  PairTradingView({@required this.data});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PairTradingViewModel>.reactive(
      viewModelBuilder: () => PairTradingViewModel(),
      builder: (_, model, __) {
        return Scaffold(
          appBar: AppBar(
            title: CupertinoButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('${data.mainAssetSymbol}/${data.secAssetSymbol}'),
                  Transform.rotate(
                    angle: 45,
                    child: Icon(
                      Icons.import_export,
                      color: AppColors.accent,
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: ListView(
            children: [],
          ),
        );
      },
    );
  }
}
