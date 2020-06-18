import 'package:antares_wallet/models/asset_pair_data.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:flutter/material.dart';

class AssetPairTile extends StatelessWidget {
  final AssetPairData data;
  final bool showTitle;

  const AssetPairTile({
    @required this.data,
    this.showTitle = false,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyleButton = Theme.of(context).textTheme.button;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 8.0),
        Visibility(
          visible: showTitle,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(data.mainAssetImgUrl, height: 16.0, width: 16.0),
              SizedBox(width: 4.0),
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
        Row(
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  RichText(
                    text: TextSpan(
                      style: textStyleButton.copyWith(
                        fontSize: 14.0,
                      ),
                      children: [
                        TextSpan(
                          text: data.mainAssetSymbol,
                          style: textStyleButton.copyWith(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(text: ' / '),
                        TextSpan(text: data.secAssetSymbol),
                      ],
                    ),
                  ),
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
                margin: EdgeInsets.only(left: 8.0, bottom: 16.0),
                padding: EdgeInsets.symmetric(vertical: 3.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
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
        SizedBox(height: 8.0),
        Divider(color: AppColors.secondary.withOpacity(0.4), height: 1),
      ],
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
