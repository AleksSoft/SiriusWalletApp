import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/presentation/widgets/asset_pair_sort_tile.dart';
import 'package:antares_wallet/app/presentation/widgets/asset_pair_tile.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MarketsInvestmentsView extends GetView<MarketsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AssetPairSortTile(
            onChanged: (value) => controller.currentSort = value,
          ),
          Expanded(
            child: RefreshIndicator(
              color: AppColors.dark,
              onRefresh: () => controller.rebuildWatchedMarkets(),
              child: GetBuilder<MarketsController>(
                builder: (_) => ListView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.medium,
                  ),
                  children: _.sortedWatchedMarkets
                      .map((e) => AssetPairTile(
                            imgUrl: e.iconUrl,
                            pairBaseAsset: e.pairBaseAsset,
                            pairQuotingAsset: e.pairQuotingAsset,
                            volume: e.volume,
                            lastPrice: e.price,
                            change: e.change,
                            onTap: () => Get.toNamed(
                              Routes.TRADING,
                              arguments: e,
                            ),
                          ))
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
