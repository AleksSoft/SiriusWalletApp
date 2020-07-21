import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/exchange/watchlists/watchlists_page.dart';
import 'package:antares_wallet/ui/pages/trading/trading_page.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_list_title_view.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'exchange_controller.dart';

class ExchangePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetX<ExchangeController>(
      init: ExchangeController(),
      initState: (state) => ExchangeController.con.rebuildAssetPairList(),
      builder: (_) {
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
                  children: _.assetPairs
                      .map((e) => AssetPairTile(
                            imgUrl: MockApiService.lykkeIconUrl,
                            mainAsset: Asset.getDefault(),
                            quotingAsset: Asset.getDefault(),
                            showTitle: true,
                            onTap: () => Get.toNamed(
                              TradingPage.route,
                              arguments: e,
                            ),
                          ))
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
