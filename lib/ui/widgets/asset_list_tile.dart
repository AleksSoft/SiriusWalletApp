import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/utils/utils.dart';
import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/controllers/portfolio_controller.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'asset_icon.dart';

class AssetListTile extends StatelessWidget {
  final VoidCallback onTap;
  final Asset asset;

  const AssetListTile(
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
          onTap: () => onTap?.call(),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSizes.medium,
            vertical: AppSizes.extraSmall,
          ),
          leading: AssetIcon(asset.iconUrl, AppSizes.large),
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
                  prefix: asset.displayId,
                  fractionDigits: asset.accuracy,
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
                  prefix: AssetsController.con.baseAsset?.displayId,
                  fractionDigits: AssetsController.con.baseAsset?.accuracy,
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
