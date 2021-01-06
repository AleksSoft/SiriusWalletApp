import 'package:antares_wallet/app/presentation/widgets/asset_pair_sort_tile.dart';
import 'package:antares_wallet/app/presentation/widgets/asset_pair_tile.dart';
import 'package:antares_wallet/common/common.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/ui/pages/trading/trading_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpotMarketsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AssetPairSortTile(
            onChanged: (value) => MarketsController.con.currentSort = value,
          ),
          Expanded(
            child: RefreshIndicator(
              color: AppColors.dark,
              onRefresh: () => MarketsController.con.rebuildWatchedMarkets(),
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
                            showTitle: true,
                            onTap: () => Get.toNamed(
                              TradingPage.route,
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
