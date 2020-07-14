import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/widgets/asset_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'portfolio_assets_controller.dart';

class PortfolioAssetsTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PortfolioAssetsController>(
      init: PortfolioAssetsController(),
      builder: (_) {
        if (_.categoryList.isEmpty) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(bottom: AppSizes.medium),
          shrinkWrap: true,
          children: [
            _PortfolioAssetsHeader(),
            Column(
              children: _.categoryList
                  .map((category) => _PortfolioCategoryBlock(
                        category,
                        _.getCategoryAssets(category.id),
                      ))
                  .toList(),
            ),
          ],
        );
      },
    );
  }
}

class _PortfolioAssetsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleTheme = Get.textTheme.headline5.copyWith(
      fontFamily: 'Akrobat',
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
          Text('USD 0,00', style: titleTheme),
        ],
      ),
    );
  }
}

class _PortfolioCategoryBlock extends StatelessWidget {
  final c = PortfolioAssetsController.con;
  final AssetCategory category;
  final List<Asset> assets;

  _PortfolioCategoryBlock(this.category, this.assets);

  @override
  Widget build(BuildContext context) {
    final titleTheme = Theme.of(context).textTheme.headline5.copyWith(
          fontFamily: 'Akrobat',
          fontWeight: FontWeight.w700,
        );
    return Column(
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
        Column(
          children: assets
              .map((e) => AssetListTile(e, onTap: () => c.openAssetInfo(e)))
              .toList(),
        ),
        AnimatedSwitcher(
          duration: Duration(microseconds: 300),
          child: c.showExpandButton(category.id)
              ? CupertinoButton(
                  onPressed: () => c.toggleExpand(category.id),
                  child: Text(
                    c.isExpanded(category.id)
                        ? 'show_less'.tr
                        : 'show_more'.trArgs([c.moreCount(category.id)]),
                  ),
                )
              : SizedBox.shrink(),
        ),
      ],
    );
  }
}
