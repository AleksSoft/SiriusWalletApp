import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/ui/pages/exchange/watchlists/watchlists_page.dart';
import 'package:antares_wallet/ui/pages/trading/trading_page.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_sort_tile.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExchangePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.edit, color: AppColors.accent),
          onPressed: () => Get.toNamed(WatchlistsPage.route),
        ),
        title: Text('exchange'.tr),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: AppColors.accent),
            onPressed: () => MarketsController.con.search(),
          ),
        ],
      ),
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
