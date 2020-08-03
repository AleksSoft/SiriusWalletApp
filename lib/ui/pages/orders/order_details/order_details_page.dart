import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_tile.dart';
import 'package:antares_wallet/ui/widgets/volume_price_tile.dart';
import 'package:antares_wallet/utils/formatter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_page/search_page.dart';
import 'dart:math' as math;

import 'order_details_controller.dart';

class OrderDetailsPage extends StatelessWidget {
  static final String route = '/order-details';
  final c = OrderDetailsController.con;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: true,
        title: FlatButton(
          onPressed: () => _showSearch(),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Obx(
                () => Text(
                  c.assetPairHeader,
                  style: TextStyle(fontSize: 16.0),
                ),
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
      body: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: Get.width / 2,
              height: c.defaultHeight,
              padding: const EdgeInsets.only(
                left: AppSizes.medium,
                right: AppSizes.small,
              ),
              child: _EditView(),
            ),
            Container(
              width: Get.width / 2,
              height: c.defaultHeight,
              padding: const EdgeInsets.only(
                left: AppSizes.small,
                right: AppSizes.medium,
              ),
              child: _OrderbookView(),
            ),
          ],
        ),
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
              c.updateWithMarket(model);
            },
          ),
        ),
      ),
    );
  }
}

class _EditView extends StatelessWidget {
  final c = OrderDetailsController.con;

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}

class _OrderbookView extends StatelessWidget {
  final c = OrderDetailsController.con;
  final titleStyle = Get.textTheme.caption.copyWith(
    color: AppColors.secondary,
    fontSize: 12.0,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppSizes.extraLarge,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Price (${c.initialMarket.pairQuotingAsset.displayId})',
                style: titleStyle,
              ),
              Text(
                'Volume (${c.initialMarket.pairBaseAsset.displayId})',
                style: titleStyle,
              ),
            ],
          ),
        ),
        Divider(color: AppColors.secondary.withOpacity(0.4), height: 1),
        AppUiHelpers.vSpaceExtraSmall,
        Expanded(
          child: Obx(
            () {
              var bids = c.orderbook.bids;
              return ListView.builder(
                reverse: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: (c.defaultHeight / 2) ~/ AppSizes.extraLarge,
                itemBuilder: (context, i) {
                  if (bids.length <= i) {
                    return VolumePriceTile(
                      color: AppColors.red,
                    );
                  } else {
                    var a = bids[i];
                    return VolumePriceTile(
                      volume: Formatter.currency(a.v),
                      price: Formatter.currency(a.p),
                      color: AppColors.red,
                      percent: 0.35,
                    );
                  }
                },
              );
            },
          ),
        ),
        AppUiHelpers.vSpaceExtraLarge,
        Expanded(
          child: Obx(
            () {
              var asks = c.orderbook.asks;
              return ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: (c.defaultHeight / 2) ~/ AppSizes.extraLarge,
                itemBuilder: (context, i) {
                  if (asks.length <= i) {
                    return VolumePriceTile(
                      color: AppColors.green,
                    );
                  } else {
                    var a = asks[i];
                    return VolumePriceTile(
                      volume: Formatter.currency(a.v),
                      price: Formatter.currency(a.p),
                      color: AppColors.green,
                      percent: 0.35,
                    );
                  }
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
