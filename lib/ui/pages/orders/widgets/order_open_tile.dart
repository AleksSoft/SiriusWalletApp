import 'package:antares_wallet/app/common/common.dart';
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
              DateTime.fromMillisecondsSinceEpoch(
                order.dateTime.seconds.toInt() * 1000,
              ),
            );

  int get filled {
    return ((amount - remainingVolume) * 100 ~/ amount).toInt();
  }

  bool get isSell => orderType.toLowerCase() == 'sell'.toLowerCase();
}

class OrderOpenTile extends StatelessWidget {
  final ConfirmDismissCallback confirmDismiss;
  final VoidCallback onTap;
  final OrderOpenData data;

  const OrderOpenTile({
    @required this.data,
    @required this.onTap,
    @required this.confirmDismiss,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyleButton = Get.textTheme.button;

    return Dismissible(
      key: ValueKey(data),
      confirmDismiss: (direction) => confirmDismiss?.call(direction),
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
                      horizontal: AppSizes.small,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
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
    return SizedBox(
      width: (Get.width - AppSizes.extraLarge * 3) / 3,
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
