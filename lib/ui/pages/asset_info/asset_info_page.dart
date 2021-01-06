import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/presentation/widgets/asset_list_tile.dart';
import 'package:antares_wallet/app/presentation/widgets/asset_pair_sort_tile.dart';
import 'package:antares_wallet/app/presentation/widgets/asset_pair_tile.dart';
import 'package:antares_wallet/app/presentation/widgets/buy_sell_button_row.dart';
import 'package:antares_wallet/app/presentation/widgets/deposit_withdraw_button_row.dart';
import 'package:antares_wallet/app/presentation/widgets/empty_reloading_view.dart';
import 'package:antares_wallet/app/presentation/widgets/transaction_tile.dart';
import 'package:antares_wallet/common/common.dart';
import 'package:antares_wallet/controllers/asset_info_controller.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/ui/pages/orders/widgets/order_history_tile.dart';
import 'package:antares_wallet/ui/pages/trading/trading_page.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:get/get.dart';
import 'package:search_page/search_page.dart';

class AssetInfoPage extends StatelessWidget {
  static final String route = '/asset-info';
  final c = AssetInfoController.con;

  final _tabBarContent = <Tab, GetView>{
    Tab(text: 'details'.tr): _Details(),
    Tab(text: 'trades'.tr): _TradingHistory(),
    Tab(text: 'transfers'.tr): _TransfersHistory(),
  };

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('asset_info'.tr),
          bottom: TabBar(
            indicatorWeight: 1.0,
            indicatorColor: Colors.black,
            tabs: _tabBarContent.keys.toList(),
          ),
        ),
        body: TabBarView(children: _tabBarContent.values.toList()),
      ),
    );
  }
}

class _Details extends GetView<AssetInfoController> {
  @override
  Widget build(BuildContext context) {
    final titleTheme = Get.textTheme.headline5.copyWith(
      fontWeight: FontWeight.w700,
    );
    return Stack(
      children: [
        ListView(
          children: [
            AssetListTile(controller.asset),
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
                              controller.selectedMarket.price.toString(),
                              fractionDigits: controller
                                  .selectedMarket.pairQuotingAsset.accuracy,
                              prefix: controller
                                  .selectedMarket.pairQuotingAsset.displayId,
                            ),
                            style: titleTheme.copyWith(fontSize: 16.0),
                          ),
                        ),
                        Obx(
                          () => Text(
                            '${Formatter.currency(controller.selectedMarket.volume.toString())} ${Formatter.currency(controller.selectedMarket.change.toString(), fractionDigits: 2)}%',
                            style: Get.textTheme.button.copyWith(
                              color: _color(controller.selectedMarket.change),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Obx(
                      () => DropdownButton<MarketModel>(
                        value: controller.selectedMarket,
                        focusColor: AppColors.accent,
                        onChanged: (MarketModel m) =>
                            controller.selectedMarket = m,
                        items: controller.markets.map((MarketModel model) {
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
                value: controller.selectedPeriod,
                itemConfig: ChipsChoiceItemConfig(
                  selectedColor: AppColors.accent,
                  unselectedColor: AppColors.secondary,
                  showCheckmark: false,
                  elevation: 3.0,
                  unselectedBorderOpacity: 0.0,
                ),
                options: ChipsChoiceOption.listFrom<AssetInfoPeriod, String>(
                  source: AssetInfoPeriod.values
                      .map((e) => controller.getPeriodStr(e))
                      .toList(),
                  value: (i, v) => AssetInfoPeriod.values[i],
                  label: (i, v) => v,
                ),
                onChanged: (val) => controller.selectedPeriod = val,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.medium),
              child: _ChartView(),
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
                      onPressed:
                          controller.seeAllActive ? () => _showSearch() : null,
                    ),
                  ),
                ],
              ),
            ),
            AssetPairSortTile(),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSizes.medium,
                0.0,
                AppSizes.medium,
                AppSizes.medium,
              ),
              child: Obx(
                () => Column(
                  children: controller.markets
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
            onBuyTap: () => controller.openOrderDetails(true),
            onSellTap: () => controller.openOrderDetails(false),
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
      context: Get.context,
      delegate: SearchPage<MarketModel>(
        showItemsOnEmpty: true,
        items: AssetInfoController.con.markets,
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

class _ChartView extends GetView<AssetInfoController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedSwitcher(
        duration: const Duration(milliseconds: 150),
        child: !controller.loading
            ? controller.candles.isNotEmpty
                ? Obx(
                    () => Sparkline(
                      data: controller.candles
                          .map((e) => double.tryParse(e.close) ?? 0.0)
                          .toList(),
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
                    ),
                  )
                : Container(
                    height: 160.0,
                    alignment: Alignment.center,
                    child: Text(
                      'No candle data available',
                      textAlign: TextAlign.center,
                    ),
                  )
            : Container(
                height: 160.0,
                alignment: Alignment.center,
                child: AppUiHelpers.circularProgress,
              ),
      ),
    );
  }
}

class _TradingHistory extends GetView<AssetInfoController> {
  @override
  Widget build(BuildContext context) {
    return GetX<AssetInfoController>(
      initState: (state) => controller.getTrades(),
      builder: (_) {
        return EmptyReloadingView(
          emptyHeader: 'No trades history yet',
          emptyMessage: '',
          isEmpty: _.trades.isEmpty,
          onRefresh: () => controller.getTrades(),
          child: ListView(
            padding: const EdgeInsets.only(top: AppSizes.small),
            shrinkWrap: true,
            children: controller.trades
                .map((trade) => OrderHistoryTile(data: trade))
                .toList(),
          ),
        );
      },
    );
  }
}

class _TransfersHistory extends GetView<AssetInfoController> {
  @override
  Widget build(BuildContext context) {
    return GetX<AssetInfoController>(
      initState: (state) => controller.getFunds(),
      builder: (_) => Stack(
        children: [
          EmptyReloadingView(
            emptyHeader: 'No transfers history yet',
            emptyMessage: '',
            isEmpty: _.funds.isEmpty,
            onRefresh: () => controller.getFunds(),
            child: ListView(
              padding: const EdgeInsets.only(top: AppSizes.small),
              shrinkWrap: true,
              children: controller.funds
                  .map((trade) => TransactionTile(trade))
                  .toList(),
            ),
          ),
          Positioned(
            bottom: 0,
            child: DepositWithdrawalButtonRow(asset: controller.asset),
          ),
        ],
      ),
    );
  }
}
