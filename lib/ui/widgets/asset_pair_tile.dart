import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/utils/formatter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'asset_pair_rich_text.dart';

class AssetPairTile extends StatelessWidget {
  final _assetC = Get.find<AssetsController>();
  final String imgUrl;
  final Asset pairBaseAsset;
  final Asset pairQuotingAsset;
  final double volume;
  final double lastPrice;
  final double change;
  final bool showTitle;
  final VoidCallback onTap;

  AssetPairTile({
    @required this.imgUrl,
    @required this.pairBaseAsset,
    @required this.pairQuotingAsset,
    @required this.volume,
    @required this.lastPrice,
    @required this.change,
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
                  Flexible(
                    child: Text(
                      pairBaseAsset.displayId,
                      overflow: TextOverflow.ellipsis,
                      style: Get.textTheme.subtitle2.copyWith(
                        fontSize: 14.0,
                        color: Colors.grey[600],
                      ),
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
                      displayId1: pairBaseAsset.displayId,
                      displayId2: pairQuotingAsset.displayId,
                    ),
                    AppUiHelpers.vSpaceExtraSmall,
                    Text(
                      'Vol $volume',
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
                      Formatter.currency(
                        lastPrice.toString(),
                        ifZeroOrNull: '—',
                      ),
                      style: textStyleButton.copyWith(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    AppUiHelpers.vSpaceExtraSmall,
                    Text(
                      Formatter.currency(
                        _assetC
                            .amountInBaseById(pairBaseAsset.id)
                            ?.amountInBase,
                        symbol: _assetC.baseAsset.displayId,
                        maxDecimal: _assetC.baseAsset.accuracy,
                        ifZeroOrNull: '—',
                      ),
                      style: textStyleButton.copyWith(
                        color: AppColors.secondary,
                        fontSize: 12.0,
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
                    '${Formatter.currency(change.toString(), maxDecimal: 2)}%',
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
    if (change > 0) {
      return AppColors.green;
    } else if (change < 0) {
      return AppColors.red;
    }
    return AppColors.secondary;
  }
}
