import 'package:antares_wallet/models/order_data.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/common/app_sizes.dart';
import 'package:antares_wallet/ui/common/app_ui_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'asset_pair_rich_text.dart';

class OrderTile extends StatelessWidget {
  final VoidCallback onDismissed;
  final bool dismissible;
  final OrderData data;

  const OrderTile({
    @required this.data,
    this.dismissible = false,
    this.onDismissed,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyleButton = Theme.of(context).textTheme.button;

    if (dismissible) {
      return Dismissible(
        key: Key(data.id.toString()),
        onDismissed: (direction) => onDismissed(),
        direction: DismissDirection.endToStart,
        background: Container(
          color: AppColors.red,
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(right: AppSizes.small),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.close, color: AppColors.primary),
              Text(
                'Cancel order',
                style: textStyleButton.copyWith(color: AppColors.primary),
              )
            ],
          ),
        ),
        child: _buildBody(textStyleButton),
      );
    } else {
      return _buildBody(textStyleButton);
    }
  }

  Widget _buildBody(TextStyle textStyleButton) {
    return Container(
      color: data.cancelled
          ? AppColors.secondary.withOpacity(0.2)
          : AppColors.primary,
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppUiHelpers.vSpaceSmall,
          Row(
            children: [
              Flexible(
                flex: 5,
                fit: FlexFit.tight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        PairRichText(
                          symbol1: data.mainAssetSymbol,
                          symbol2: data.secAssetSymbol,
                        ),
                        AppUiHelpers.hSpaceSmall,
                        Visibility(
                          visible: !data.cancelled,
                          child: Text(
                            data.isSelling ? 'SELL' : 'BUY',
                            style: textStyleButton.copyWith(
                              fontSize: 10.0,
                              fontWeight: FontWeight.w600,
                              color: data.isSelling
                                  ? AppColors.red
                                  : AppColors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                    AppUiHelpers.vSpaceExtraSmall,
                    Text(
                      data.date,
                      style: textStyleButton.copyWith(
                        fontSize: 12.0,
                        color: AppColors.secondary,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 4,
                fit: FlexFit.tight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      data.cancelled ? '--' : data.avgPrice.toString(),
                      style: textStyleButton.copyWith(fontSize: 16.0),
                    ),
                    AppUiHelpers.vSpaceExtraSmall,
                    Text(
                      data.price.toString(),
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
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      data.cancelled ? '--' : data.filled.toString(),
                      textAlign: TextAlign.right,
                      style: textStyleButton.copyWith(fontSize: 16.0),
                    ),
                    AppUiHelpers.vSpaceExtraSmall,
                    Text(
                      data.amount.toString(),
                      textAlign: TextAlign.right,
                      style: textStyleButton.copyWith(
                        fontSize: 12.0,
                        color: AppColors.secondary,
                      ),
                    ),
                  ],
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
}
