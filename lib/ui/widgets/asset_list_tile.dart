import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:flutter/material.dart';

class AssetListTile extends StatelessWidget {
  final VoidCallback onTap;
  final AssetData asset;
  const AssetListTile(this.asset, {this.onTap, Key key}) : super(key: key);

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
          leading: Image.asset(
            'assets/images/logo_lykke.png',
            height: AppSizes.large,
            width: AppSizes.large,
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
              AppUiHelpers.vSpaceSmall,
              Text(
                'USD 0,00',
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
