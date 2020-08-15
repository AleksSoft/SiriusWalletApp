import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_rich_text.dart';
import 'package:antares_wallet/ui/widgets/default_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class OrderOpenData {
  final String baseAssetName;
  final String quoteAssetName;
  final double amount;
  final double remainingVolume;
  final String price;
  final String orderType;
  final String date;

  OrderOpenData({
    @required this.baseAssetName,
    @required this.quoteAssetName,
    @required this.amount,
    @required this.remainingVolume,
    @required this.price,
    @required this.date,
    @required this.orderType,
  });

  OrderOpenData.fromOrder(
      String baseName, String quoteName, LimitOrderModel order)
      : this.baseAssetName = baseName,
        this.quoteAssetName = quoteName,
        this.amount = double.tryParse(order?.volume) ?? 0.0,
        this.remainingVolume = double.tryParse(order?.remainingVolume) ?? 0.0,
        this.price = order.price,
        this.orderType = order.orderType,
        this.date = DateFormat().addPattern('dd.MM.yy HH:mm:ss').format(
              DateTime.parse(order.dateTime),
            );

  int get filled {
    if (isSell) {
      return ((amount - remainingVolume) * 100 ~/ amount).toInt();
    } else {
      return (remainingVolume * 100 ~/ amount).toInt();
    }
  }

  bool get isSell => orderType.toLowerCase() == 'sell'.toLowerCase();
}

class OrderOpenTile extends StatelessWidget {
  final VoidCallback onDismissed;
  final VoidCallback onTap;
  final OrderOpenData data;

  const OrderOpenTile({
    @required this.data,
    @required this.onTap,
    @required this.onDismissed,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyleButton = Theme.of(context).textTheme.button;

    return Dismissible(
      key: ValueKey(data),
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
  }

  Widget _buildBody(TextStyle textStyleButton) {
    return GestureDetector(
      onTap: () => onTap(),
      child: DefaultCard(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.medium,
          vertical: AppSizes.extraSmall,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: AppSizes.small,
          vertical: 6.0,
        ),
        borderRadius: BorderRadius.circular(AppSizes.small),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppUiHelpers.vSpaceSmall,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    PairRichText(
                      displayId1: data.baseAssetName,
                      displayId2: data.quoteAssetName,
                    ),
                    AppUiHelpers.hSpaceSmall,
                    Visibility(
                      visible: true,
                      child: Text(
                        data.orderType.toUpperCase(),
                        style: textStyleButton.copyWith(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: data.isSell ? AppColors.red : AppColors.green,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      data.date.toString(),
                      style: textStyleButton.copyWith(
                        fontSize: 14.0,
                        color: AppColors.secondary,
                      ),
                    ),
                  ],
                ),
                AppUiHelpers.vSpaceSmall,
                IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.medium,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        _buildInfoItem(
                          'Amount (${data.baseAssetName})',
                          data.amount.toString(),
                        ),
                        VerticalDivider(),
                        _buildInfoItem(
                          'Price (${data.quoteAssetName})',
                          data.price,
                        ),
                        VerticalDivider(),
                        _buildInfoItem(
                          'Filled',
                          '${data.filled}%',
                        ),
                      ],
                    ),
                  ),
                ),
                AppUiHelpers.vSpaceSmall,
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoItem(String title, String value) {
    return Flexible(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            value,
            style: Get.textTheme.button.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 16.0,
            ),
          ),
          AppUiHelpers.vSpaceExtraSmall,
          Text(title, style: Get.textTheme.caption),
        ],
      ),
    );
  }
}
