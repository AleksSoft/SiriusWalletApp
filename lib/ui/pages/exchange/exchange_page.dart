import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/ui/pages/exchange/watchlists/watchlists_page.dart';
import 'package:antares_wallet/ui/pages/trading/trading_page.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_list_title_view.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_page/search_page.dart';

class ExchangePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        leading: IconButton(
          icon: Icon(Icons.edit, color: AppColors.accent),
          onPressed: () => Get.toNamed(WatchlistsPage.route),
        ),
        title: Text('exchange'.tr),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: AppColors.accent),
            onPressed: () => _showSearch(),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AssetPairListHeaderView(),
          Expanded(
            child: RefreshIndicator(
              color: AppColors.dark,
              onRefresh: () => MarketsController.con.rebuildWatchedMarkets(),
              child: GetBuilder<MarketsController>(
                builder: (_) => ListView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.medium,
                  ),
                  children: _.markets
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

  Future<MarketModel> _showSearch() {
    return showSearch(
      context: Get.overlayContext,
      delegate: SearchPage<MarketModel>(
        showItemsOnEmpty: true,
        items: MarketsController.con.initialMarketList,
        searchLabel: 'search'.tr,
        filter: (model) => [
          model.pairBaseAsset.name,
          model.pairBaseAsset.displayId,
        ],
        builder: (model) => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.medium,
          ),
          child: AssetPairTile(
            imgUrl: MockApiService.lykkeIconUrl,
            pairBaseAsset: model.pairBaseAsset,
            pairQuotingAsset: model.pairQuotingAsset,
            volume: model.volume,
            lastPrice: model.price,
            change: model.change,
            showTitle: true,
            onTap: () {
              Get.back();
              Get.toNamed(TradingPage.route, arguments: model);
            },
          ),
        ),
      ),
    );
  }
}
