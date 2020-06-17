import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
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
      onModelReady: (model) => model.initialise(),
      builder: (_, __, ___) {
        return ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(bottom: 16.0),
          shrinkWrap: true,
          children: [
            PortfolioAssetsHeader(),
            PortfolioCategoryBlockList(),
          ],
        );
      },
    );
  }
}

class PortfolioAssetsHeader extends ViewModelWidget<PortfolioAssetsViewModel> {
  @override
  Widget build(BuildContext context, PortfolioAssetsViewModel model) {
    final titleTheme = Theme.of(context).textTheme.headline5.copyWith(
          fontFamily: 'Akrobat',
          fontWeight: FontWeight.w700,
        );
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 16.0),
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

class PortfolioCategoryBlockList
    extends ViewModelWidget<PortfolioAssetsViewModel> {
  const PortfolioCategoryBlockList({
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

  _PortfolioCategoryBlock(this.category) : super(reactive: false);

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
            left: 16.0,
            top: 16.0,
            right: 16.0,
            bottom: 8.0,
          ),
          child: Text(
            category.categoryName,
            overflow: TextOverflow.ellipsis,
            style: titleTheme,
            maxLines: 2,
          ),
        ),
        Divider(height: 1.0, color: AppColors.secondary.withOpacity(0.2)),
        Column(children: assets.map((e) => _buildListTile(e)).toList()),
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

  Widget _buildListTile(AssetData asset) {
    return Builder(
      builder: (context) {
        return Column(
          children: [
            ListTile(
              onTap: () {},
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
              leading: Image.asset(
                'assets/images/logo_lykke.png',
                height: 24.0,
                width: 24.0,
              ),
              title: Text(
                asset.displayName,
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${asset.symbol} 0,00',
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'USD 0,00',
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              ),
            ),
            Divider(
              height: 1.0,
              color: AppColors.secondary.withOpacity(0.2),
            ),
          ],
        );
      },
    );
  }
}
