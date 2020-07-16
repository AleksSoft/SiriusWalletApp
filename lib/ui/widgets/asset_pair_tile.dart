import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'asset_pair_rich_text.dart';

class AssetPairTile extends StatelessWidget {
  final String imgUrl;
  final Asset mainAsset;
  final Asset quotingAsset;
  final bool showTitle;
  final VoidCallback onTap;

  const AssetPairTile({
    @required this.imgUrl,
    @required this.mainAsset,
    @required this.quotingAsset,
    this.showTitle = false,
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyleButton = Get.textTheme.button;

    return InkWell(
      onTap: onTap,
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
                    imgUrl,
                    height: AppSizes.medium,
                    width: AppSizes.medium,
                  ),
                  AppUiHelpers.hSpaceExtraSmall,
                  Text(
                    mainAsset.name,
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
                      symbol1: mainAsset.symbol,
                      symbol2: quotingAsset.symbol,
                    ),
                    AppUiHelpers.vSpaceExtraSmall,
                    Text(
                      'Vol volume',
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
                      'mainPrice',
                      style: textStyleButton.copyWith(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    AppUiHelpers.vSpaceExtraSmall,
                    Text(
                      '${mainAsset.symbol} mainPrice',
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
                    'change%',
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
    return AppColors.secondary;
    // if (data.change > 0) {
    //   return AppColors.green;
    // } else if (data.change < 0) {
    //   return AppColors.red;
    // }
    // return AppColors.secondary;
  }
}
