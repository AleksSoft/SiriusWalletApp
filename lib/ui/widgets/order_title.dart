import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'asset_pair_rich_text.dart';

class OrderTile extends StatelessWidget {
  final VoidCallback onDismissed;
  final LimitOrderModel data;

  const OrderTile({
    @required this.data,
    this.onDismissed,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyleButton = Theme.of(context).textTheme.button;

    if (onDismissed != null) {
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
      color: AppColors.primary,
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
                          symbol1: data.asset,
                          symbol2: data.asset,
                        ),
                        AppUiHelpers.hSpaceSmall,
                        // Visibility(
                        //   visible: !data.cancelled,
                        //   child: Text(
                        //     data.isSelling ? 'SELL' : 'BUY',
                        //     style: textStyleButton.copyWith(
                        //       fontSize: 10.0,
                        //       fontWeight: FontWeight.w600,
                        //       color: data.isSelling
                        //           ? AppColors.red
                        //           : AppColors.green,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    AppUiHelpers.vSpaceExtraSmall,
                    Text(
                      'some date',
                      // data.date,
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
                      // data.cancelled ? '--' : data.avgPrice.toString(),
                      data.totalCost,
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
                      // data.cancelled ? '--' : data.filled.toString(),
                      data.remainingVolume,
                      textAlign: TextAlign.right,
                      style: textStyleButton.copyWith(fontSize: 16.0),
                    ),
                    AppUiHelpers.vSpaceExtraSmall,
                    Text(
                      data.remainingOtherVolume,
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
