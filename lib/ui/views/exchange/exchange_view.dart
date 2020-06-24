import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/common/app_sizes.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_list_title_view.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_tile.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:stacked/stacked.dart';

import 'exchange_view_model.dart';

class ExchangeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ExchangeViewModel>.reactive(
      viewModelBuilder: () => ExchangeViewModel(),
      onModelReady: (model) => model.initialise(),
      builder: (_, model, __) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.edit, color: AppColors.accent),
              onPressed: () {},
            ),
            title: Text('exchange').tr(),
            actions: [
              IconButton(
                icon: Icon(Icons.search, color: AppColors.accent),
                onPressed: () {},
              ),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AssetPairListHeaderView(),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.medium,
                  ),
                  children: model.assetPairs
                      .map((e) => AssetPairTile(data: e, showTitle: true))
                      .toList(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
