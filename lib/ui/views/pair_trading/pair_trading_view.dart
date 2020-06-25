import 'package:antares_wallet/models/asset_pair_data.dart';
import 'package:antares_wallet/ui/charts/traidngview/chart_view.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/common/app_sizes.dart';
import 'package:antares_wallet/ui/common/app_ui_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'dart:math' as math;

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
            centerTitle: true,
            title: FlatButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${data.mainAssetSymbol}/${data.secAssetSymbol}',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.extraSmall),
                    child: Transform.rotate(
                      angle: 3 * math.pi / 4,
                      child: Icon(
                        Icons.import_export,
                        color: AppColors.accent,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: ListView(
            children: [
              AppUiHelpers.vSpaceExtraLarge,
              SizedBox(
                height: 300,
                // child: ChartView(captureAllGestures: true),
              ),
              AppUiHelpers.vSpaceExtraLarge,
            ],
          ),
        );
      },
    );
  }
}
