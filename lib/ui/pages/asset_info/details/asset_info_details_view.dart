import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/trading/trading_page.dart';
import 'package:antares_wallet/ui/widgets/asset_list_tile.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_list_title_view.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_tile.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:get/get.dart';
import 'package:search_page/search_page.dart';

import 'asset_info_details_controller.dart';

class AssetInfoDetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleTheme = Get.textTheme.headline5.copyWith(
      fontFamily: 'Akrobat',
      fontWeight: FontWeight.w700,
    );

    return GetBuilder<AssetInfoDetailsController>(
        init: AssetInfoDetailsController(),
        builder: (_) {
          final markets = _.mockMarkets;
          return ListView(
            children: [
              AssetListTile(_.asset),
              AppUiHelpers.vSpaceMedium,
              ChipsChoice<AssetInfoPeriod>.single(
                value: _.selectedPeriod,
                itemConfig: ChipsChoiceItemConfig(
                  selectedColor: AppColors.accent,
                  unselectedColor: AppColors.secondary,
                  showCheckmark: false,
                  elevation: 3.0,
                  unselectedBorderOpacity: 0.0,
                ),
                options: ChipsChoiceOption.listFrom<AssetInfoPeriod, String>(
                  source: AssetInfoPeriod.values
                      .map((e) => _.getPeriodStr(e))
                      .toList(),
                  value: (i, v) => AssetInfoPeriod.values[i],
                  label: (i, v) => v,
                ),
                onChanged: (val) => _.updatePeriod(val),
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
                      onPressed: _.seeAllActive ? () => _showSearch(_) : null,
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
                  children: _.assetPairsShort
                      .map((e) => AssetPairTile(
                            imgUrl: MockApiService.lykkeIconUrl,
                            pairBaseAsset: Asset.getDefault(),
                            pairQuotingAsset: Asset.getDefault(),
                            volume: 0.0,
                            lastPrice: 0.0,
                            change: 0.0,
                            onTap: () => Get.toNamed(
                              TradingPage.route,
                              arguments: e,
                            ),
                          ))
                      .toList(),
                ),
              ),
            ],
          );
        });
  }

  Future<AssetPair> _showSearch(AssetInfoDetailsController c) {
    return showSearch(
      context: Get.overlayContext,
      delegate: SearchPage<AssetPair>(
        showItemsOnEmpty: true,
        items: c.assetPairs,
        searchLabel: 'search'.tr,
        filter: (pair) => [
          pair.name,
        ],
        builder: (pair) => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.medium,
          ),
          child: AssetPairTile(
            imgUrl: MockApiService.lykkeIconUrl,
            pairBaseAsset: Asset.getDefault(),
            pairQuotingAsset: Asset.getDefault(),
            volume: 0.0,
            lastPrice: 0.0,
            change: 0.0,
            showTitle: true,
            onTap: () => Get.toNamed(
              TradingPage.route,
              arguments: pair,
            ),
          ),
        ),
      ),
    );
  }
}
