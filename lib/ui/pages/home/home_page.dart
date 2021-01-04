import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/widgets/asset_icon.dart';
import 'package:antares_wallet/app/widgets/asset_pair_rich_text.dart';
import 'package:antares_wallet/app/widgets/default_card.dart';
import 'package:antares_wallet/controllers/home_controller.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/controllers/portfolio_controller.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  static final String route = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: false,
        title: Text('app_title'.tr),
      ),
      body: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) {
          return ListView(
            children: [
              _AssetsView(),
              _ExchangeView(),
              _MyLykkeView(),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  AppSizes.medium,
                  AppSizes.small,
                  AppSizes.medium,
                  AppSizes.medium,
                ),
                child: Text(
                  'copyright'.tr,
                  textAlign: TextAlign.center,
                  style: Get.textTheme.button.copyWith(
                    color: AppColors.secondary,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class _AssetsView extends GetView<HomeController> {
  _AssetsView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: AppSizes.medium,
              right: AppSizes.medium,
              top: AppSizes.medium,
            ),
            child: Row(
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Assets',
                  style: Get.textTheme.headline6.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                CupertinoButton(
                  onPressed: () => controller.hidden.toggle(),
                  minSize: 10,
                  padding: const EdgeInsets.all(0.0),
                  child: Obx(() => Text(controller.shoHideTitle)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.medium),
            child: SizedBox(
              height: AppSizes.large,
              child: Row(
                children: [
                  Obx(
                    () => AnimatedSwitcher(
                      duration: Get.defaultTransitionDuration,
                      child: !controller.hidden.value
                          ? Text(
                              Formatter.currency(
                                controller.portfolioCon.balanceSum.toString(),
                                prefix:
                                    controller.assetsCon.baseAsset?.displayId,
                                fractionDigits:
                                    controller.assetsCon.baseAsset?.accuracy ??
                                        2,
                              ),
                              style: Get.textTheme.caption,
                            )
                          : Container(
                              width: AppSizes.extraLarge * 2,
                              height: AppSizes.medium,
                              decoration: BoxDecoration(
                                color: AppColors.secondary.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(
                                  AppSizes.small,
                                ),
                              ),
                            ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          AppUiHelpers.vSpaceSmall,
          ListTile(
            onTap: () => controller.openPortfolio(),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: AppSizes.medium,
            ),
            leading: Container(
              width: AppSizes.extraLarge,
              height: AppSizes.extraLarge,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.accent,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: AppSizes.small,
                    color: AppColors.accent.withOpacity(0.4),
                  ),
                ],
              ),
              child: Icon(
                Icons.account_balance_wallet,
                color: AppColors.primary,
                size: AppSizes.medium,
              ),
            ),
            title: Text('portfolio'.tr),
            trailing: Obx(
              () => AnimatedSwitcher(
                duration: Get.defaultTransitionDuration,
                child: !controller.hidden.value
                    ? Text(
                        Formatter.currency(
                          controller.portfolioCon.balanceSum.toString(),
                          prefix: controller.assetsCon.baseAsset?.displayId,
                          fractionDigits:
                              controller.assetsCon.baseAsset?.accuracy ?? 2,
                        ),
                        style: TextStyle(
                          fontSize: AppSizes.medium,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    : Container(
                        width: AppSizes.extraLarge * 2.5,
                        height: AppSizes.large,
                        decoration: BoxDecoration(
                          color: AppColors.secondary.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(AppSizes.small),
                        ),
                      ),
              ),
            ),
          ),
          Divider(
            height: 0.5,
            indent: AppSizes.medium,
            endIndent: AppSizes.medium,
          ),
          Container(
            height: AppSizes.extraLarge * 2,
            decoration: BoxDecoration(
              color: AppColors.accent,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(AppSizes.medium),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CupertinoButton(
                  onPressed: () => controller.deposit(),
                  padding: EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RotatedBox(
                        quarterTurns: 3,
                        child: Icon(
                          Icons.exit_to_app,
                          size: 18.0,
                          color: AppColors.primary,
                        ),
                      ),
                      AppUiHelpers.vSpaceExtraSmall,
                      Text(
                        'deposit'.tr,
                        style: Get.textTheme.button.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  indent: AppSizes.medium,
                  endIndent: AppSizes.medium,
                  color: AppColors.primary.withOpacity(0.5),
                ),
                CupertinoButton(
                  onPressed: () => controller.withdraw(),
                  padding: EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RotatedBox(
                        quarterTurns: 1,
                        child: Icon(
                          Icons.exit_to_app,
                          size: 18.0,
                          color: AppColors.primary,
                        ),
                      ),
                      AppUiHelpers.vSpaceExtraSmall,
                      Text(
                        'withdraw'.tr,
                        style: Get.textTheme.button.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  indent: AppSizes.medium,
                  endIndent: AppSizes.medium,
                  color: AppColors.primary.withOpacity(0.5),
                ),
                CupertinoButton(
                  onPressed: () => controller.openSupport(),
                  padding: EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.headset_mic,
                        size: 18.0,
                        color: AppColors.primary,
                      ),
                      AppUiHelpers.vSpaceExtraSmall,
                      Text(
                        'Support',
                        style: Get.textTheme.button.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ExchangeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.medium),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Exchange',
                  style: Get.textTheme.headline6.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                CupertinoButton(
                  onPressed: () => controller.openPortfolio(),
                  minSize: 10,
                  padding: const EdgeInsets.all(0.0),
                  child: Text('More'),
                ),
              ],
            ),
            AppUiHelpers.vSpaceLarge,
            GetBuilder<MarketsController>(
              builder: (_) => AnimatedSwitcher(
                duration: Get.defaultTransitionDuration,
                child: _.watchedMarkets.isNotEmpty
                    ? GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        childAspectRatio: 2 / 1,
                        mainAxisSpacing: AppSizes.small,
                        crossAxisSpacing: AppSizes.small,
                        children: _
                            .marketModelsUpTo(6)
                            .map((e) => _ExchangePairView(e))
                            .toList(),
                      )
                    : Center(child: AppUiHelpers.linearProgress),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ExchangePairView extends GetView<HomeController> {
  _ExchangePairView(this.model, {Key key}) : super(key: key);

  final MarketModel model;
  final textStyle = Get.textTheme.button;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => controller.trade(model),
      child: Container(
        height: AppSizes.extraLarge * 2,
        padding: EdgeInsets.all(AppSizes.small),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(AppSizes.small)),
          border: Border.all(color: AppColors.secondary.withOpacity(0.2)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textBaseline: TextBaseline.ideographic,
              children: [
                PairRichText(
                  displayId1: model.pairBaseAsset.displayId,
                  displayId2: model.pairQuotingAsset.displayId,
                ),
                AssetIcon(model.pairBaseAsset.iconUrl, 20.0),
              ],
            ),
            Text(
              model.pairBaseAsset.name,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.start,
              style: textStyle.copyWith(
                fontSize: 12.0,
                color: AppColors.secondary,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Formatter.currency(
                    model.price.toString(),
                    fractionDigits: model.pairQuotingAsset.accuracy,
                  ),
                  style: textStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.0,
                  ),
                ),
                Text(
                  '${Formatter.currency(model.change.toString(), fractionDigits: 2)}%',
                  style: textStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0,
                    color: _color(model.change),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
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
}

class _MyLykkeView extends GetView<HomeController> {
  const _MyLykkeView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.medium),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'My lykke',
              style: Get.textTheme.headline6.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            AppUiHelpers.vSpaceLarge,
            Divider(height: 1.0),
            GetX<PortfolioController>(
              builder: (_) {
                var list = _.assetsByCategoryName('Lykke');
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: !_.loading
                      ? ListView.separated(
                          shrinkWrap: true,
                          itemCount: 3 >= list.length || list.length < 3
                              ? list.length
                              : 3,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (_, i) => _LykkeListTile(list[i]),
                          separatorBuilder: (_, i) => Divider(height: 1.0),
                        )
                      : Center(child: AppUiHelpers.linearProgress),
                );
              },
            ),
            AppUiHelpers.vSpaceLarge,
            CupertinoButton.filled(
              padding: EdgeInsets.all(0.0),
              child: Text('buy_now'.tr),
              onPressed: () => controller.openMyLykke(),
            )
          ],
        ),
      ),
    );
  }
}

class _LykkeListTile extends GetView<HomeController> {
  _LykkeListTile(this.asset, {Key key}) : super(key: key);
  final Asset asset;
  @override
  Widget build(BuildContext context) {
    final balance = controller.portfolioCon.assetBalance(asset.id);
    return ListTile(
      onTap: () => controller.openAssetInfo(asset),
      dense: true,
      contentPadding: const EdgeInsets.all(0.0),
      title: Text(
        asset.displayId,
        style: Get.textTheme.subtitle1.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AssetIcon(asset.iconUrl, AppSizes.medium),
          AppUiHelpers.hSpaceExtraSmall,
          LimitedBox(
            maxWidth: 120,
            child: Text(
              asset.name,
              maxLines: 1,
              softWrap: false,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: Get.textTheme.caption,
            ),
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            Formatter.currency(
              balance?.available,
              prefix: asset.displayId,
              fractionDigits: asset.accuracy,
            ),
            style: Get.textTheme.subtitle1.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          AppUiHelpers.vSpaceExtraSmall,
          Text(
            Formatter.currency(
              controller.assetsCon
                  .countBalanceInBase(asset.id, balance)
                  .toString(),
              prefix: controller.assetsCon.baseAsset?.displayId,
              fractionDigits: controller.assetsCon.baseAsset?.accuracy,
            ),
            style: Get.textTheme.caption,
          )
        ],
      ),
    );
  }
}
