import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:flutter/material.dart';

class AssetPairListHeaderView extends StatelessWidget {
  const AssetPairListHeaderView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.button.copyWith(
          color: AppColors.secondary,
          fontSize: 12.0,
        );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Divider(
          color: AppColors.secondary.withOpacity(0.4),
          height: 1,
          indent: AppSizes.medium,
          endIndent: AppSizes.medium,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.medium),
          child: SizedBox(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Text('Name / Vol', style: textStyle),
                ),
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Text('Last price', style: textStyle),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Text(
                    '24h Chg %',
                    style: textStyle,
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: AppColors.secondary.withOpacity(0.4),
          height: 1,
          indent: AppSizes.medium,
          endIndent: AppSizes.medium,
        ),
      ],
    );
  }
}
