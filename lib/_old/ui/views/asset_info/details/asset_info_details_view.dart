import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/models/asset_pair_data.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/common/app_sizes.dart';
import 'package:antares_wallet/ui/common/app_ui_helpers.dart';
import 'package:antares_wallet/ui/widgets/asset_list_tile.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_list_title_view.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_tile.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:search_page/search_page.dart';
import 'package:stacked/stacked.dart';
import 'package:easy_localization/easy_localization.dart';

import 'asset_info_details_view_model.dart';

class AssetInfoDetailsView extends StatelessWidget {
  final AssetData asset;
  const AssetInfoDetailsView(this.asset, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleTheme = Theme.of(context).textTheme.headline5.copyWith(
          fontFamily: 'Akrobat',
          fontWeight: FontWeight.w700,
        );

    return ViewModelBuilder<AssetInfoDetailsViewModel>.reactive(
        viewModelBuilder: () => AssetInfoDetailsViewModel(asset),
        builder: (_, model, ___) {
          final markets = model.mockMarkets;
          return ListView(
            children: [
              AssetListTile(model.asset),
              AppUiHelpers.vSpaceMedium,
              ChipsChoice<AssetInfoPeriod>.single(
                value: model.selectedPeriod,
                itemConfig: ChipsChoiceItemConfig(
                  selectedColor: AppColors.accent,
                  unselectedColor: AppColors.secondary,
                  showCheckmark: false,
                  elevation: 3.0,
                  unselectedBorderOpacity: 0.0,
                ),
                options: ChipsChoiceOption.listFrom<AssetInfoPeriod, String>(
                  source: AssetInfoPeriod.values
                      .map((e) => model.getPeriodStr(e))
                      .toList(),
                  value: (i, v) => AssetInfoPeriod.values[i],
                  label: (i, v) => v,
                ),
                onChanged: (val) => model.updatePeriod(val),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSizes.medium),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: markets.isNotEmpty
                      ? Sparkline(
                          data: markets.map((e) => e.high).toList(),
                          lineWidth: 1.0,
                          fallbackHeight: 160,
                          fillMode: FillMode.below,
                          lineColor: AppColors.accent.withOpacity(0.7),
                          fillGradient: new LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              AppColors.accent.withOpacity(0.2),
                              AppColors.accent.withOpacity(0.1),
                            ],
                          ),
                        )
                      : Container(
                          height: 160.0,
                          alignment: Alignment.center,
                          child: CircularProgressIndicator(),
                        ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: AppSizes.medium),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text('asset_pairs'.tr, style: titleTheme),
                    CupertinoButton(
                      child: Text('see_all'.tr),
                      onPressed: model.seeAllActive
                          ? () => _showSearch(context, model)
                          : null,
                    ),
                  ],
                ),
              ),
              AssetPairListHeaderView(),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppSizes.medium,
                  0.0,
                  AppSizes.medium,
                  AppSizes.medium,
                ),
                child: Column(
                  children: model.assetPairsShort
                      .map((e) => AssetPairTile(data: e))
                      .toList(),
                ),
              ),
            ],
          );
        });
  }

  Future<AssetPairData> _showSearch(
    BuildContext context,
    AssetInfoDetailsViewModel model,
  ) {
    return showSearch(
      context: context,
      delegate: SearchPage<AssetPairData>(
        showItemsOnEmpty: true,
        items: model.assetPairs,
        searchLabel: 'search'.tr,
        filter: (pair) => [
          pair.mainAssetName,
          pair.mainAssetSymbol,
          pair.secAssetSymbol,
        ],
        builder: (pair) => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.medium,
          ),
          child: AssetPairTile(
            data: pair,
            showTitle: true,
          ),
        ),
      ),
    );
  }
}
