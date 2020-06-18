import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
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
            horizontal: 16.0,
            vertical: 4.0,
          ),
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
        Divider(height: 1.0, color: AppColors.secondary.withOpacity(0.4)),
      ],
    );
  }
}
