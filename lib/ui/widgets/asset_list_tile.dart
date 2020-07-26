import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AssetListTile extends StatelessWidget {
  final VoidCallback onTap;
  final String imgUrl;
  final String name;
  final String symbol;
  final double balance;
  final double amountInBase;

  const AssetListTile(
    this.imgUrl,
    this.name,
    this.symbol,
    this.balance,
    this.amountInBase, {
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSizes.medium,
            vertical: AppSizes.extraSmall,
          ),
          leading: Image.network(
            imgUrl,
            height: AppSizes.large,
            width: AppSizes.large,
          ),
          title: Text(
            name,
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '$symbol ${NumberFormat.currency(locale: 'eu', symbol: '').format(balance)}',
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              AppUiHelpers.vSpaceSmall,
              Text(
                '${AssetsController.con.baseAssetId} ${NumberFormat.currency(locale: 'eu', symbol: '').format(amountInBase)}',
                style: Theme.of(context).textTheme.caption,
              )
            ],
          ),
        ),
        Divider(height: 1.0, color: AppColors.secondary.withOpacity(0.4)),
      ],
    );
  }
}
