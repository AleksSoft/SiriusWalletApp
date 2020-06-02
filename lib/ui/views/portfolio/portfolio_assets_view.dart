import 'package:antares_wallet/business/dto/asset_dictionary_data.dart';
import 'package:antares_wallet/business/view_models/portfolio/portfolio_assets_view_model.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PortfolioAssetsTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => PortfolioAssetsViewModel(),
      onModelReady: (PortfolioAssetsViewModel model) async =>
          await model.initialise(),
      disposeViewModel: false,
      builder: (context, PortfolioAssetsViewModel model, child) {
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
            'Balance',
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
          : ListView(
              shrinkWrap: true,
              children: model.categoryList
                  .map((category) => PortfolioCategoryBlock(category))
                  .toList(),
            ),
    );
  }
}

class PortfolioCategoryBlock extends ViewModelWidget<PortfolioAssetsViewModel> {
  final CategoryData category;

  const PortfolioCategoryBlock(this.category);

  @override
  Widget build(BuildContext context, PortfolioAssetsViewModel model) {
    final titleTheme = Theme.of(context).textTheme.headline5.copyWith(
          fontFamily: 'Akrobat',
          fontWeight: FontWeight.w700,
        );
    final assets = model.getAssetsByCategoryId(category.categoryId);
    return ExpandableNotifier(
      child: Column(
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
          Expandable(
            collapsed: _buildCollapsed(assets),
            expanded: _buildExpanded(assets),
          ),
          Builder(
            builder: (context) {
              var con = ExpandableController.of(context);
              return assets.length <= 3
                  ? SizedBox.shrink()
                  : CupertinoButton(
                      onPressed: () => con.toggle(),
                      child: Text(
                        con.expanded
                            ? 'Show less'
                            : 'Show more (${assets.sublist(3).length})',
                      ),
                    );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCollapsed(List<AssetData> assets) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: assets.length <= 3 ? assets.length : 3,
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      itemBuilder: (context, index) => Column(
        children: [
          _buildListTile(assets[index]),
          Divider(height: 1.0, color: AppColors.secondary.withOpacity(0.2)),
        ],
      ),
    );
  }

  Widget _buildExpanded(List<AssetData> assets) {
    return Column(
      children: [
        _buildCollapsed(assets),
        Container(
          color: AppColors.secondary.withOpacity(0.1),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: assets.sublist(3).length,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            itemBuilder: (context, index) => Column(
              children: [
                _buildListTile(assets.sublist(3)[index]),
                Divider(
                  height: 1.0,
                  color: AppColors.secondary.withOpacity(0.2),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildListTile(AssetData asset) {
    return Builder(
      builder: (BuildContext context) {
        return ListTile(
          onTap: () {},
          contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 4.0),
          leading: Image.asset(
            'assets/logo_lykke.png',
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
        );
      },
    );
  }
}
