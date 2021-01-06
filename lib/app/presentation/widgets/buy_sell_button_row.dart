import 'package:antares_wallet/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuySellButtonRow extends StatelessWidget {
  const BuySellButtonRow({
    Key key,
    @required this.onBuyTap,
    @required this.onSellTap,
  }) : super(key: key);
  final VoidCallback onBuyTap;
  final VoidCallback onSellTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: AppSizes.extraLarge * 2,
      width: Get.width,
      color: AppColors.primary,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          AppUiHelpers.hSpaceLarge,
          Expanded(
            child: FlatButton(
              color: AppColors.green,
              padding: const EdgeInsets.all(AppSizes.medium),
              splashColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.small),
              ),
              onPressed: () => onBuyTap?.call(),
              child: Text(
                'Buy',
                style: Get.textTheme.button.copyWith(
                  color: AppColors.primary,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          AppUiHelpers.hSpaceLarge,
          Expanded(
            child: FlatButton(
              color: AppColors.red,
              padding: const EdgeInsets.all(AppSizes.medium),
              splashColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.small),
              ),
              onPressed: () => onSellTap?.call(),
              child: Text(
                'Sell',
                style: Get.textTheme.button.copyWith(
                  color: AppColors.primary,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          AppUiHelpers.hSpaceLarge,
        ],
      ),
    );
  }
}
