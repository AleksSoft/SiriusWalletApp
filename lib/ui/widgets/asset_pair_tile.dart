import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/models/asset_pair_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'asset_pair_rich_text.dart';

class AssetPairTile extends StatelessWidget {
  final AssetPairData data;
  final bool showTitle;
  final VoidCallback onTap;

  const AssetPairTile({
    @required this.data,
    this.showTitle = false,
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyleButton = Get.textTheme.button;

    return InkWell(
      onTap: () => onTap(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppUiHelpers.vSpaceSmall,
          Visibility(
            visible: showTitle,
            child: Padding(
              padding: const EdgeInsets.only(bottom: AppSizes.extraSmall),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(
                    data.mainAssetImgUrl,
                    height: AppSizes.medium,
                    width: AppSizes.medium,
                  ),
                  AppUiHelpers.hSpaceExtraSmall,
                  Text(
                    data.mainAssetName,
                    style: Theme.of(context).textTheme.subtitle2.copyWith(
                          fontSize: 14.0,
                          color: Colors.grey[600],
                        ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PairRichText(
                      symbol1: data.mainAssetSymbol,
                      symbol2: data.secAssetSymbol,
                    ),
                    AppUiHelpers.vSpaceExtraSmall,
                    Text(
                      'Vol ${data.volume}',
                      style: textStyleButton.copyWith(
                        fontSize: 12.0,
                        color: AppColors.secondary,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${data.mainPrice}',
                      style: textStyleButton.copyWith(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    AppUiHelpers.vSpaceExtraSmall,
                    Text(
                      '${data.mainAssetSymbol} ${data.mainPrice}',
                      style: textStyleButton.copyWith(
                        fontSize: 12.0,
                        color: AppColors.secondary,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  margin: const EdgeInsets.only(
                    left: AppSizes.small,
                    bottom: AppSizes.medium,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSizes.extraSmall,
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSizes.extraSmall),
                    color: _color.withOpacity(0.2),
                  ),
                  child: Text(
                    '${data.change}%',
                    textAlign: TextAlign.end,
                    style: textStyleButton.copyWith(
                      fontSize: 12.0,
                      color: _color,
                    ),
                  ),
                ),
              ),
            ],
          ),
          AppUiHelpers.vSpaceSmall,
          Divider(color: AppColors.secondary.withOpacity(0.4), height: 1),
        ],
      ),
    );
  }

  Color get _color {
    if (data.change > 0) {
      return AppColors.green;
    } else if (data.change < 0) {
      return AppColors.red;
    }
    return AppColors.secondary;
  }
}
