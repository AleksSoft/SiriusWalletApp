import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/orders/widgets/order_history_tile.dart';
import 'package:antares_wallet/ui/pages/trading/trading_page.dart';
import 'package:antares_wallet/ui/widgets/asset_list_tile.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_list_title_view.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_tile.dart';
import 'package:antares_wallet/ui/widgets/buy_sell_button_row.dart';
import 'package:antares_wallet/ui/widgets/empty_view.dart';
import 'package:antares_wallet/ui/widgets/transaction_tile.dart';
import 'package:antares_wallet/utils/formatter.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:get/get.dart';
import 'package:search_page/search_page.dart';

import 'asset_info_controller.dart';

class AssetInfoPage extends StatelessWidget {
  static final String route = '/asset-info';
  final c = AssetInfoController.con;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          title: Text('asset_info'.tr),
          bottom: TabBar(
            indicatorWeight: 1.0,
            indicatorColor: Colors.black,
            tabs: <Widget>[
              Tab(text: 'details'.tr),
              Tab(text: 'trades'.tr),
              Tab(text: 'transfers'.tr),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: <Widget>[
              _Details(),
              RefreshIndicator(
                color: AppColors.dark,
                onRefresh: () => c.getTrades(),
                child: GetX<AssetInfoController>(
                  initState: (state) => c.getTrades(),
                  builder: (_) {
                    return EmptyView(
                      header: 'No trades history yet',
                      message: '',
                      condition: _.trades.isEmpty,
                      child: ListView(
                        padding: const EdgeInsets.only(top: AppSizes.small),
                        shrinkWrap: true,
                        children: c.trades
                            .map((trade) => OrderHistoryTile(data: trade))
                            .toList(),
                      ),
                    );
                  },
                ),
              ),
              RefreshIndicator(
                color: AppColors.dark,
                onRefresh: () => c.getTrades(),
                child: GetX<AssetInfoController>(
                  initState: (state) => c.getTrades(),
                  builder: (_) {
                    return EmptyView(
                      header: 'No transfers history yet',
                      message: '',
                      condition: _.funds.isEmpty,
                      child: ListView(
                        padding: const EdgeInsets.only(top: AppSizes.small),
                        shrinkWrap: true,
                        children: c.funds
                            .map((trade) => TransactionTile(trade))
                            .toList(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Details extends StatelessWidget {
  final c = AssetInfoController.con;
  @override
  Widget build(BuildContext context) {
    final titleTheme = Get.textTheme.headline5.copyWith(
      fontFamily: 'Akrobat',
      fontWeight: FontWeight.w700,
    );
    return Stack(
      children: [
        ListView(
          children: [
            AssetListTile(c.asset),
            SizedBox(
              height: AppSizes.extraLarge * 2,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: AppSizes.small,
                  left: AppSizes.medium,
                  right: AppSizes.medium,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Obx(
                          () => Text(
                            Formatter.currency(
                              c.selectedMarket.price.toString(),
                              maxDecimal:
                                  c.selectedMarket.pairQuotingAsset.accuracy,
                              symbol:
                                  c.selectedMarket.pairQuotingAsset.displayId,
                            ),
                            style: titleTheme.copyWith(fontSize: 16.0),
                          ),
                        ),
                        Obx(
                          () => Text(
                            '${Formatter.currency(c.selectedMarket.volume.toString())} ${Formatter.currency(c.selectedMarket.change.toString(), maxDecimal: 2)}%',
                            style: Get.textTheme.button.copyWith(
                              color: _color(c.selectedMarket.change),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Obx(
                      () => DropdownButton<MarketModel>(
                        value: c.selectedMarket,
                        focusColor: AppColors.accent,
                        onChanged: (MarketModel m) => c.selectedMarket = m,
                        items: c.marketsShort.map((MarketModel model) {
                          return DropdownMenuItem<MarketModel>(
                            value: model,
                            child: Text(model.pairId),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Obx(
              () => ChipsChoice<AssetInfoPeriod>.single(
                value: c.selectedPeriod,
                itemConfig: ChipsChoiceItemConfig(
                  selectedColor: AppColors.accent,
                  unselectedColor: AppColors.secondary,
                  showCheckmark: false,
                  elevation: 3.0,
                  unselectedBorderOpacity: 0.0,
                ),
                options: ChipsChoiceOption.listFrom<AssetInfoPeriod, String>(
                  source: AssetInfoPeriod.values
                      .map((e) => c.getPeriodStr(e))
                      .toList(),
                  value: (i, v) => AssetInfoPeriod.values[i],
                  label: (i, v) => v,
                ),
                onChanged: (val) => c.selectedPeriod = val,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.medium),
              child: Obx(() => _ChartView(c.candles.value)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.medium),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text('asset_pairs'.tr, style: titleTheme),
                  Obx(
                    () => CupertinoButton(
                      child: Text('see_all'.tr),
                      onPressed: c.seeAllActive ? () => _showSearch() : null,
                    ),
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
              child: Obx(
                () => Column(
                  children: c.marketsShort
                      .map((e) => AssetPairTile(
                            imgUrl: e.pairBaseAsset.iconUrl,
                            pairBaseAsset: e.pairBaseAsset,
                            pairQuotingAsset: e.pairQuotingAsset,
                            volume: e.volume,
                            lastPrice: e.price,
                            change: e.change,
                            onTap: () => Get.toNamed(
                              TradingPage.route,
                              arguments: e,
                            ),
                          ))
                      .toList(),
                ),
              ),
            ),
            SizedBox(height: AppSizes.extraLarge * 2),
          ],
        ),
        Positioned(
          bottom: 0,
          child: BuySellButtonRow(
            onBuyTap: () => c.openOrderDetails(true),
            onSellTap: () => c.openOrderDetails(false),
          ),
        ),
      ],
    );
  }

  Color _color(double change) {
    if (change > 0) {
      return AppColors.green;
    } else if (change < 0) {
      return AppColors.red;
    }
    return AppColors.secondary;
  }

  Future<MarketModel> _showSearch() {
    return showSearch(
      context: Get.overlayContext,
      delegate: SearchPage<MarketModel>(
        showItemsOnEmpty: true,
        items: AssetInfoController.con.markets.value,
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
              Get.toNamed(TradingPage.route, arguments: model);
            },
          ),
        ),
      ),
    );
  }
}

class _ChartView extends StatelessWidget {
  _ChartView(this.candles, {Key key}) : super(key: key);
  final List<Candle> candles;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 150),
      child: candles.isNotEmpty
          ? Sparkline(
              data:
                  candles.map((e) => double.tryParse(e.close) ?? 0.0).toList(),
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
              child: CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(
                  Colors.black,
                ),
              ),
            ),
    );
  }
}
