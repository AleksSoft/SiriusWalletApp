import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/controllers/portfolio_controller.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/utils/formatter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AssetListTile extends StatelessWidget {
  final VoidCallback onTap;
  final String iconUrl;
  final Asset asset;

  const AssetListTile(
    this.iconUrl,
    this.asset, {
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var balance = PortfolioController.con.assetBalance(asset.id);

    return Column(
      children: [
        ListTile(
          onTap: onTap,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSizes.medium,
            vertical: AppSizes.extraSmall,
          ),
          leading: Image.network(
            iconUrl,
            height: AppSizes.large,
            width: AppSizes.large,
          ),
          title: Text(
            asset.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Get.textTheme.subtitle1.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                Formatter.currency(
                  balance?.available,
                  symbol: asset.displayId,
                ),
                style: Get.textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              AppUiHelpers.vSpaceSmall,
              Text(
                Formatter.currency(
                  AssetsController.con
                      .countBalanceInBase(asset.id, balance)
                      .toString(),
                  symbol: AssetsController.con.baseAsset.displayId,
                ),
                style: Get.textTheme.caption,
              )
            ],
          ),
        ),
        Divider(height: 1.0, color: AppColors.secondary.withOpacity(0.4)),
      ],
    );
  }
}
