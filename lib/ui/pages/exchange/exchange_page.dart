import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/ui/pages/exchange/watch_lists/watch_lists_page.dart';
import 'package:antares_wallet/ui/pages/pair_trading/pair_trading_page.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_list_title_view.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'exchange_controller.dart';

class ExchangePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExchangeController>(
      init: ExchangeController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.edit, color: AppColors.accent),
              onPressed: () => Get.toNamed(WatchListsPage.route),
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
                            data: e,
                            showTitle: true,
                            onTap: () => Get.toNamed(PairTradingPage.route,
                                arguments: e),
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
