import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/common/app_sizes.dart';
import 'package:antares_wallet/ui/widgets/asset_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:easy_localization/easy_localization.dart';

import 'portfolio_assets_view_model.dart';

class PortfolioAssetsTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PortfolioAssetsViewModel>.nonReactive(
      viewModelBuilder: () => PortfolioAssetsViewModel(),
      builder: (_, __, ___) {
        return ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(bottom: AppSizes.medium),
          shrinkWrap: true,
          children: [
            _PortfolioAssetsHeader(),
            _PortfolioCategoryBlockList(),
          ],
        );
      },
    );
  }
}

class _PortfolioAssetsHeader extends ViewModelWidget<PortfolioAssetsViewModel> {
  @override
  Widget build(BuildContext context, PortfolioAssetsViewModel model) {
    final titleTheme = Theme.of(context).textTheme.headline5.copyWith(
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
            'balance'.tr(),
            style: Theme.of(context).textTheme.caption.copyWith(fontSize: 14),
          ),
          AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            child: model.isBusy
                ? Text('-', style: titleTheme)
                : Text('USD 0,00', style: titleTheme),
          ),
        ],
      ),
    );
  }
}

class _PortfolioCategoryBlockList
    extends ViewModelWidget<PortfolioAssetsViewModel> {
  const _PortfolioCategoryBlockList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, PortfolioAssetsViewModel model) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 300),
      child: model.isBusy
          ? SizedBox.shrink()
          : Column(
              children: model.categoryList
                  .map((category) => _PortfolioCategoryBlock(category))
                  .toList(),
            ),
    );
  }
}

class _PortfolioCategoryBlock
    extends ViewModelWidget<PortfolioAssetsViewModel> {
  final CategoryData category;

  _PortfolioCategoryBlock(this.category) : super(reactive: true);

  @override
  Widget build(context, model) {
    final titleTheme = Theme.of(context).textTheme.headline5.copyWith(
          fontFamily: 'Akrobat',
          fontWeight: FontWeight.w700,
        );
    final assets = model.getCategoryAssets(category.categoryId);
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
            category.categoryName,
            overflow: TextOverflow.ellipsis,
            style: titleTheme,
            maxLines: 2,
          ),
        ),
        Divider(height: 1.0, color: AppColors.secondary.withOpacity(0.2)),
        Column(
          children: assets
              .map((e) => AssetListTile(e, onTap: () => model.openAssetInfo(e)))
              .toList(),
        ),
        AnimatedSwitcher(
          duration: Duration(microseconds: 300),
          child: model.showExpandButton(category.categoryId)
              ? CupertinoButton(
                  onPressed: () => model.toggleExpand(category.categoryId),
                  child: Text(
                    model.isExpanded(category.categoryId)
                        ? 'show_less'.tr()
                        : 'show_more'.tr(
                            args: [model.moreCount(category.categoryId)],
                          ),
                  ),
                )
              : SizedBox.shrink(),
        ),
      ],
    );
  }
}
