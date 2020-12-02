import 'dart:math' as math;

import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/utils/utils.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_tile.dart';
import 'package:antares_wallet/ui/widgets/volume_price_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:search_page/search_page.dart';

import '../../../../controllers/order_details_controller.dart';

class OrderDetailsPage extends StatelessWidget {
  static final String route = '/order-details';
  final c = OrderDetailsController.con;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: FlatButton(
          onPressed: c.isEdit ? null : () => _showSearch(),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Obx(
                () => Text(
                  c.assetPairHeader,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Visibility(
                visible: !c.isEdit,
                child: Padding(
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
      context: Get.context,
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
            imgUrl: model.pairBaseAsset.iconUrl,
            pairBaseAsset: model.pairBaseAsset,
            pairQuotingAsset: model.pairQuotingAsset,
            volume: model.volume,
            lastPrice: model.price,
            change: model.change,
            showTitle: true,
            onTap: () {
              Get.back();
              c.reloadUiWithPairId(model.pairId);
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
        Visibility(
          visible: !c.isEdit,
          child: _BuySellHeaderView(),
        ),
        AppUiHelpers.vSpaceSmall,
        Text('Type of order', style: Get.textTheme.caption),
        Obx(
          () => DropdownButton<String>(
            value: c.orderType,
            disabledHint: Text(c.orderType, style: Get.textTheme.caption),
            isExpanded: true,
            focusColor: AppColors.accent,
            onChanged: c.isEdit ? null : (String s) => c.orderType = s,
            icon: c.isEdit ? null : Icon(Icons.keyboard_arrow_down),
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
                      onChanged: (String s) => c.priceChanged(s),
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
              onChanged: (String s) => c.amountChanged(s),
              controller: c.amountTextController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText:
                    '${c.isBuy ? 'Buy' : 'Sell'} (${c.marketModel.pairBaseAsset.displayId})',
              ),
            ),
          ),
        ),
        AppUiHelpers.vSpaceMedium,
        Obx(
          () => AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: c.isBuy
                ? Text(
                    '${c.marketModel.pairQuotingAsset.displayId} ${Formatter.currency(c.quotingBalance, fractionDigits: c.marketModel.pairQuotingAsset.accuracy)} available',
                    style: Get.textTheme.caption.copyWith(
                      color: c.locked ? AppColors.red : AppColors.secondary,
                    ),
                  )
                : Text(
                    '${c.marketModel.pairBaseAsset.displayId} ${Formatter.currency(c.baseBalance, fractionDigits: c.marketModel.pairBaseAsset.accuracy)} available',
                    style: Get.textTheme.caption.copyWith(
                      color: c.locked ? AppColors.red : AppColors.secondary,
                    ),
                  ),
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
            children: <double>[0.25, 0.5, 0.75, 1.0]
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
              onChanged: (String s) => c.totalChanged(s),
              controller: c.totalTextController,
              keyboardType: TextInputType.number,
              validator: (_) =>
                  c.liquidityError ? 'Not enough liquidity' : null,
              decoration: InputDecoration(
                labelText:
                    'Total (${c.marketModel.pairQuotingAsset.displayId})',
                suffixIcon: c.liquidityError
                    ? Icon(Icons.error, color: AppColors.red)
                    : null,
              ),
            ),
          ),
        ),
        AppUiHelpers.vSpaceMedium,
        c.isEdit ? _ModifyButton() : _ActionButton(),
      ],
    );
  }
}

class _ModifyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetX<OrderDetailsController>(
      builder: (_) => RaisedButton(
        onPressed: _.actionAllowed && !_.loading ? () => _.perform() : null,
        padding: const EdgeInsets.symmetric(vertical: AppSizes.small),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: _.actionAllowed ? AppColors.accent : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(AppSizes.small),
        ),
        color: AppColors.accent,
        disabledColor: AppColors.secondary.withOpacity(0.3),
        disabledTextColor: AppColors.secondary,
        textColor: AppColors.primary,
        splashColor: Colors.blue,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: !_.loading
              ? Text(
                  'Modify',
                  style: Get.textTheme.caption.copyWith(
                    color: _.actionAllowed
                        ? AppColors.primary
                        : AppColors.secondary,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : Center(
                  child: CircularProgressIndicator(
                  backgroundColor: AppColors.primary,
                )),
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetX<OrderDetailsController>(
      builder: (_) => RaisedButton(
        onPressed: _.actionAllowed && !_.loading ? () => _.perform() : null,
        padding: const EdgeInsets.symmetric(vertical: AppSizes.small),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: _.actionAllowed ? AppColors.accent : AppColors.secondary,
          ),
          borderRadius: BorderRadius.circular(AppSizes.small),
        ),
        color: AppColors.accent,
        disabledColor: AppColors.primary,
        disabledTextColor: AppColors.secondary,
        textColor: AppColors.primary,
        splashColor: Colors.blue,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: !_.loading
              ? Column(
                  children: <Widget>[
                    Text(
                      '${Formatter.currency(_.amount, fractionDigits: _.marketModel.pairQuotingAsset.accuracy)} ${_.marketModel.pairBaseAsset.displayId}',
                    ),
                    Text(
                      _.isBuy ? 'Buy' : 'Sell',
                      style: Get.textTheme.caption.copyWith(
                        color: _.actionAllowed
                            ? AppColors.primary
                            : AppColors.secondary,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              : Center(
                  child: CircularProgressIndicator(
                  backgroundColor: AppColors.primary,
                )),
        ),
      ),
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
                onPressed: () => c.updateTradeMode(true),
              ),
            ),
            AppUiHelpers.hSpaceSmall,
            Expanded(
              child: _buildSelectBtn(
                text: 'Sell',
                color: Colors.red,
                selected: !c.isBuy,
                onPressed: () => c.updateTradeMode(false),
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
                  'Price (${c.marketModel.pairQuotingAsset.displayId})',
                  style: titleStyle,
                ),
              ),
              Obx(
                () => Text(
                  'Volume (${c.marketModel.pairBaseAsset.displayId})',
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
              itemCount: c.asks.length == c.orderbookItemsCount
                  ? c.asks.length
                  : c.orderbookItemsCount,
              shrinkWrap: true,
              itemBuilder: (context, i) {
                if (c.asks.length <= i) {
                  return VolumePriceTile(color: AppColors.red);
                } else {
                  var a = c.asks[i];
                  return VolumePriceTile(
                    volume: Formatter.currency(
                      a.v,
                      fractionDigits: c.marketModel.pairBaseAsset.accuracy,
                    ),
                    price: Formatter.currency(
                      a.p,
                      fractionDigits: c.marketModel.pairQuotingAsset.accuracy,
                    ),
                    color: AppColors.red,
                    percent: c.volumeAskPercent(i),
                    onPricePressed: () => c.askPricePressed(a.p),
                    onVolumePressed: () => c.askVolumePressed(a.v),
                  );
                }
              },
            ),
          ),
        ),
        SizedBox(
          height: AppSizes.extraLarge,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  '${Formatter.currency(c.mid.toString(), fractionDigits: c.marketModel.pairQuotingAsset.accuracy)}',
                  style: Get.textTheme.headline6.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Obx(
                () => Text(
                  '${Formatter.currency(c.midPercent.toString(), fractionDigits: 2)}%',
                  style: Get.textTheme.caption,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Obx(
            () => ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: c.bids.length == c.orderbookItemsCount
                  ? c.bids.length
                  : c.orderbookItemsCount,
              itemBuilder: (context, i) {
                if (c.bids.length <= i) {
                  return VolumePriceTile(color: AppColors.green);
                } else {
                  var a = c.bids[i];
                  return VolumePriceTile(
                    volume: Formatter.currency(
                      a.v,
                      fractionDigits: c.marketModel.pairBaseAsset.accuracy,
                    ),
                    price: Formatter.currency(
                      a.p,
                      fractionDigits: c.marketModel.pairQuotingAsset.accuracy,
                    ),
                    color: AppColors.green,
                    percent: c.volumeBidPercent(i),
                    onPricePressed: () => c.bidPricePressed(a.p),
                    onVolumePressed: () => c.bidVolumePressed(a.v),
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
