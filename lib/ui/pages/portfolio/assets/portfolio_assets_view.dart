import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/widgets/asset_list_tile.dart';
import 'package:antares_wallet/app/widgets/deposit_withdraw_button_row.dart';
import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/controllers/portfolio_controller.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/asset_info/asset_info_page.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PortfolioAssetsTabView extends GetView<PortfolioController> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: AppSizes.extraLarge * 1.5),
          child: Scaffold(
            floatingActionButton: FloatingActionButton.extended(
              heroTag: 'portfolio-assets-filter-fab',
              label: Obx(() => Text(controller.hideZerosButtonTitle)),
              onPressed: () => controller.hideZeros.toggle(),
            ),
            body: RefreshIndicator(
              color: AppColors.dark,
              onRefresh: () => controller.rebuildPortfolioAssets(),
              child: ListView(
                padding: EdgeInsets.only(bottom: AppSizes.medium),
                children: [
                  _PortfolioAssetsHeader(),
                  Obx(
                    () => AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: controller.loading &&
                              controller.categoryAssetsMap.isEmpty
                          ? Center(child: AppUiHelpers.circularProgress)
                          : Column(
                              children: controller.categoryAssetsMap.keys
                                  .map((category) =>
                                      _PortfolioCategoryBlock(category))
                                  .toList(),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0.0,
          child: DepositWithdrawalButtonRow(),
        ),
      ],
    );
  }
}

class _PortfolioAssetsHeader extends GetView<PortfolioController> {
  final assetsCon = AssetsController.con;
  @override
  Widget build(BuildContext context) {
    final titleTheme = Get.textTheme.headline5.copyWith(
      fontWeight: FontWeight.w700,
    );
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: AppSizes.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'balance'.tr,
            style: Get.textTheme.caption.copyWith(fontSize: 14),
          ),
          Obx(
            () => Text(
              Formatter.currency(
                controller.balanceSum.toString(),
                prefix: assetsCon.baseAsset?.displayId,
                fractionDigits: assetsCon.baseAsset?.accuracy,
              ),
              style: titleTheme,
            ),
          ),
        ],
      ),
    );
  }
}

class _PortfolioCategoryBlock extends GetView<PortfolioController> {
  final AssetCategory category;

  _PortfolioCategoryBlock(this.category, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final assets = controller.categoryAssetsMap[category];
    final titleTheme = Get.textTheme.headline5.copyWith(
      fontWeight: FontWeight.w700,
    );
    return ExpandableNotifier(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: AppSizes.medium,
              top: AppSizes.medium,
              right: AppSizes.medium,
              bottom: AppSizes.small,
            ),
            child: Text(
              category.name,
              overflow: TextOverflow.ellipsis,
              style: titleTheme,
              maxLines: 2,
            ),
          ),
          Divider(height: 1.0, color: AppColors.secondary.withOpacity(0.2)),
          ScrollOnExpand(
            scrollOnExpand: true,
            scrollOnCollapse: true,
            child: ExpandablePanel(
              collapsed: _buildCollapsed(assets),
              expanded: _buildExpanded(assets),
            ),
          ),
          Visibility(
            visible: (assets?.length ?? 0) > 3,
            child: Builder(
              builder: (context) {
                var controller = ExpandableController.of(context);
                return CupertinoButton(
                  onPressed: () => controller.toggle(),
                  child: Text(
                    controller.expanded
                        ? 'show_less'.tr
                        : 'show_more'.trArgs(['${assets.length - 3}']),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Column _buildExpanded(List<Asset> assets) {
    List<Asset> list = (assets?.length ?? 0) > 3 ? assets.sublist(3) : [];
    return Column(
      children: <Widget>[
        _buildCollapsed(assets),
        Container(
          color: AppColors.secondary.withOpacity(0.1),
          child: Column(
            children: list
                .map((a) => AssetListTile(
                      a,
                      onTap: () => Get.toNamed(
                        AssetInfoPage.route,
                        arguments: a,
                      ),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }

  Column _buildCollapsed(List<Asset> assets) {
    List<Asset> list =
        (assets?.length ?? 0) > 3 ? assets.sublist(0, 3) : assets;
    return Column(
      children: (list ?? <Asset>[])
          .map((a) => AssetListTile(
                a,
                onTap: () => Get.toNamed(AssetInfoPage.route, arguments: a),
              ))
          .toList(),
    );
  }
}
