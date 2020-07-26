import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/controllers/portfolio_controller.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/widgets/asset_list_tile.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class PortfolioAssetsTabView extends StatelessWidget {
  final c = PortfolioController.con;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => c.getWalletAssets(),
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(bottom: AppSizes.medium),
        shrinkWrap: true,
        children: [
          _PortfolioAssetsHeader(),
          GetX<PortfolioController>(
            initState: (state) => c.getWalletAssets(),
            builder: (_) => Column(
              children: c.categoryAssetsMap.keys
                  .map((category) => _PortfolioCategoryBlock(category))
                  .toList(),
            ),
          ),
        ],
      ),
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
          Text(
            '${AssetsController.con.baseAssetId} ${NumberFormat.currency(locale: 'eu', symbol: '').format(PortfolioController.con.balance)}',
            style: titleTheme,
          ),
        ],
      ),
    );
  }
}

class _PortfolioCategoryBlock extends StatelessWidget {
  final AssetCategory category;
  final c = PortfolioController.con;

  _PortfolioCategoryBlock(this.category);

  @override
  Widget build(BuildContext context) {
    final assets = c.categoryAssetsMap[category];
    final titleTheme = Get.textTheme.headline5.copyWith(
      fontFamily: 'Akrobat',
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
              collapsed: _buildCollapsed(category.iconUrl, assets),
              expanded: _buildExpanded(category.iconUrl, assets),
            ),
          ),
          Visibility(
            visible: assets.length >= 3,
            child: Builder(
              builder: (context) {
                var controller = ExpandableController.of(context);
                return CupertinoButton(
                  onPressed: () => controller.toggle(),
                  child: Text(
                    controller.expanded
                        ? 'show_less'.tr
                        : 'show_more'.trArgs(['0']),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Column _buildExpanded(
      String iconUrl, List<WalletsResponse_WalletAsset> assets) {
    List<WalletsResponse_WalletAsset> list =
        assets.length > 3 ? assets.sublist(3) : List();
    return Column(
      children: <Widget>[
        _buildCollapsed(iconUrl, assets),
        Container(
          color: AppColors.secondary.withOpacity(0.1),
          child: Column(
            children: list
                .map((a) => AssetListTile(
                      iconUrl,
                      a.name,
                      a.symbol,
                      double.parse(a.balance, (_) => 0.0),
                      double.parse(a.amountInBase, (_) => 0.0),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }

  Column _buildCollapsed(
      String iconUrl, List<WalletsResponse_WalletAsset> assets) {
    var list = assets.length > 3 ? assets.sublist(0, 3) : assets;
    return Column(
      children: list
          .map((a) => AssetListTile(
                iconUrl,
                a.name,
                a.symbol,
                double.parse(a.balance, (_) => 0.0),
                double.parse(a.amountInBase, (_) => 0.0),
              ))
          .toList(),
    );
  }
}
