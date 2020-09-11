import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/deposit_controller.dart';
import 'package:antares_wallet/controllers/withdrawal_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DepositWithdrawalButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: AppSizes.extraLarge * 1.5,
      width: Get.width,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black54,
              blurRadius: AppSizes.extraSmall,
              offset: Offset(0.0, 0.4))
        ],
        color: AppColors.primary,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          AppUiHelpers.hSpaceLarge,
          Expanded(
            child: FlatButton(
              color: AppColors.accent,
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.medium,
              ),
              splashColor: Colors.white10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.small),
              ),
              onPressed: () => DepositController.con.search(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RotatedBox(
                    quarterTurns: 3,
                    child: Icon(
                      Icons.exit_to_app,
                      size: 18.0,
                      color: AppColors.primary,
                    ),
                  ),
                  AppUiHelpers.hSpaceMedium,
                  Text(
                    'deposit'.tr,
                    style: Get.textTheme.button.copyWith(
                      color: AppColors.primary,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          AppUiHelpers.hSpaceLarge,
          Expanded(
            child: FlatButton(
              color: AppColors.accent,
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.medium,
              ),
              splashColor: Colors.white10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.small),
              ),
              onPressed: () => WithdrawalController.con.search(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.exit_to_app,
                      size: 18.0,
                      color: AppColors.primary,
                    ),
                  ),
                  AppUiHelpers.hSpaceMedium,
                  Text(
                    'withdrawal'.tr,
                    style: Get.textTheme.button.copyWith(
                      color: AppColors.primary,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          AppUiHelpers.hSpaceLarge,
        ],
      ),
    );
  }
}
