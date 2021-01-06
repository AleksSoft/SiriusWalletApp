import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/controllers/deposit_controller.dart';
import 'package:antares_wallet/controllers/withdrawal_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DepositWithdrawalButtonRow extends StatelessWidget {
  final Asset asset;

  const DepositWithdrawalButtonRow({Key key, this.asset}) : super(key: key);

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
              onPressed: () => this.asset == null
                  ? DepositController.con.search()
                  : DepositController.con.tryDeposit(
                      asset,
                      closeOverlays: false,
                    ),
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
              onPressed: () => this.asset == null
                  ? WithdrawalController.con.search()
                  : WithdrawalController.con.tryWithdraw(
                      asset,
                      closeOverlays: false,
                    ),
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
