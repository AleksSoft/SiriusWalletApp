import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_tile.dart';
import 'package:antares_wallet/ui/widgets/volume_price_tile.dart';
import 'package:antares_wallet/utils/formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        AppUiHelpers.vSpaceSmall,
        _BuySellHeaderView(),
        AppUiHelpers.vSpaceSmall,
        Text('Type of order', style: Get.textTheme.caption),
        Obx(
          () => DropdownButton<String>(
            value: c.orderType,
            isExpanded: true,
            focusColor: AppColors.accent,
            onChanged: (String s) => c.orderType = s,
            items: OrderDetailsController.orderTypes.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        Obx(
          () => AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: c.orderType.toLowerCase() == 'limit'
                ? Theme(
                    data: Get.theme.copyWith(primaryColor: AppColors.accent),
                    child: TextFormField(
                      controller: c.priceTextController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Price',
                      ),
                    ),
                  )
                : SizedBox.shrink(),
          ),
        ),
        AppUiHelpers.vSpaceSmall,
        Obx(
          () => Theme(
            data: Get.theme.copyWith(primaryColor: AppColors.accent),
            child: TextFormField(
              controller: c.buyTextController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText:
                    '${c.isBuy ? 'Buy' : 'Sell'} (${c.initialMarket.pairBaseAsset.displayId})',
              ),
            ),
          ),
        ),
        AppUiHelpers.vSpaceMedium,
        Obx(
          () => Text(
            '${c.initialMarket.pairQuotingAsset.displayId} ${Formatter.currency(c.quotingBalance, maxDecimal: 2)} available',
            style: Get.textTheme.caption,
          ),
        ),
        AppUiHelpers.vSpaceSmall,
        SizedBox(
          height: AppSizes.extraLarge * 2 + AppSizes.small,
          child: GridView.count(
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: 3,
            mainAxisSpacing: AppSizes.small,
            crossAxisSpacing: AppSizes.small,
            children: [0.25, 0.5, 0.75, 1]
                .map((e) => SizedBox(
                      height: AppSizes.extraLarge,
                      child: OutlineButton(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: AppColors.secondary,
                          ),
                          borderRadius: BorderRadius.circular(AppSizes.small),
                        ),
                        onPressed: () => c.updatePercent(e),
                        child: Text('${e * 100}%'),
                      ),
                    ))
                .toList(),
          ),
        ),
        Obx(
          () => Theme(
            data: Get.theme.copyWith(primaryColor: AppColors.accent),
            child: TextFormField(
              controller: c.totalTextController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText:
                    'Total (${c.initialMarket.pairQuotingAsset.displayId})',
              ),
            ),
          ),
        ),
        AppUiHelpers.vSpaceMedium,
        OutlineButton(
          padding: const EdgeInsets.symmetric(
            vertical: AppSizes.medium,
          ),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: AppColors.secondary),
            borderRadius: BorderRadius.circular(AppSizes.small),
          ),
          onPressed: () => c.perform(),
          child: Column(
            children: <Widget>[
              Obx(() => Text(
                  '${Formatter.currency(c.amount.toString(), maxDecimal: 2)} ${c.initialMarket.pairQuotingAsset.displayId}')),
              Obx(
                () => Text(
                  c.isBuy ? 'Buy' : 'Sell',
                  style: Get.textTheme.caption.copyWith(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class _BuySellHeaderView extends StatelessWidget {
  final c = OrderDetailsController.con;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        alignment: Alignment.center,
        height: AppSizes.extraLarge,
        width: Get.width,
        color: AppColors.primary,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            AppUiHelpers.hSpaceSmall,
            Expanded(
              child: _buildSelectBtn(
                text: 'Buy',
                color: Colors.green,
                selected: c.isBuy,
                onPressed: () => c.isBuy = true,
              ),
            ),
            AppUiHelpers.hSpaceSmall,
            Expanded(
              child: _buildSelectBtn(
                text: 'Sell',
                color: Colors.red,
                selected: !c.isBuy,
                onPressed: () => c.isBuy = false,
              ),
            ),
            AppUiHelpers.hSpaceSmall,
          ],
        ),
      ),
    );
  }

  FlatButton _buildSelectBtn({
    @required String text,
    @required Color color,
    @required bool selected,
    @required VoidCallback onPressed,
  }) {
    return FlatButton(
      color: selected ? color : AppColors.primary,
      splashColor: color,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: selected ? color : AppColors.secondary,
        ),
        borderRadius: BorderRadius.circular(AppSizes.extraLarge),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: Get.textTheme.button.copyWith(
          color: selected ? AppColors.primary : AppColors.secondary,
          fontSize: 16.0,
        ),
      ),
    );
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
              Obx(
                () => Text(
                  'Price (${c.initialMarket.pairQuotingAsset.displayId})',
                  style: titleStyle,
                ),
              ),
              Obx(
                () => Text(
                  'Volume (${c.initialMarket.pairBaseAsset.displayId})',
                  style: titleStyle,
                ),
              ),
            ],
          ),
        ),
        Divider(color: AppColors.secondary.withOpacity(0.4), height: 1),
        AppUiHelpers.vSpaceExtraSmall,
        Expanded(
          child: Obx(
            () => ListView.builder(
              reverse: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: c.bids.length == c.orderbookItemsCount
                  ? c.bids.length
                  : c.orderbookItemsCount,
              shrinkWrap: true,
              itemBuilder: (context, i) {
                if (c.bids.length <= i) {
                  return VolumePriceTile(color: AppColors.red);
                } else {
                  var a = c.bids[i];
                  return VolumePriceTile(
                    volume: Formatter.currency(a.v),
                    price: Formatter.currency(a.p),
                    color: AppColors.red,
                    percent: 0.50,
                  );
                }
              },
            ),
          ),
        ),
        AppUiHelpers.vSpaceExtraLarge,
        Expanded(
          child: Obx(
            () => ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: c.asks.length == c.orderbookItemsCount
                  ? c.asks.length
                  : c.orderbookItemsCount,
              itemBuilder: (context, i) {
                if (c.asks.length <= i) {
                  return VolumePriceTile(color: AppColors.green);
                } else {
                  var a = c.asks[i];
                  return VolumePriceTile(
                    volume: Formatter.currency(a.v),
                    price: Formatter.currency(a.p),
                    color: AppColors.green,
                    percent: 0.50,
                  );
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
