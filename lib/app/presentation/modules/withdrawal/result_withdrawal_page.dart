import 'package:antares_wallet/app/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'withdrawal_controller.dart';

class ResultWithdrawalPage extends StatelessWidget {
  ResultWithdrawalPage({
    @required this.success,
    Key key,
  }) : super(key: key);
  final bool success;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => WithdrawalController.con.okResult(),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AppUiHelpers.vSpaceExtraLarge,
            AppUiHelpers.vSpaceExtraLarge,
            Image.asset(
              this.success
                  ? 'assets/images/success_image.jpg'
                  : 'assets/images/unsuccess_image.jpg',
              height: Get.height / 3,
            ),
            AppUiHelpers.vSpaceLarge,
            Text(
              this.success ? 'Successful!' : 'Failed!',
              style: Get.textTheme.headline6.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            AppUiHelpers.vSpaceSmall,
            Text(
              'Your request will be processed as soon as possible.',
              style: Get.textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            AppUiHelpers.vSpaceLarge,
            Center(
              child: RaisedButton(
                onPressed: () => WithdrawalController.con.okResult(),
                color: this.success ? AppColors.accent : AppColors.red,
                child: Text(
                  'ok'.tr,
                  style: Get.textTheme.button.copyWith(
                    color: AppColors.primary,
                  ),
                ),
              ),
            ),
            Center(
              child: FlatButton(
                onPressed: () => WithdrawalController.con.tryAgainResult(),
                child: Text(
                  this.success ? 'Repeat' : 'Try again',
                  style: Get.textTheme.button.copyWith(
                    color:
                        this.success ? AppColors.accent : AppColors.secondary,
                  ),
                ),
              ),
            ),
            Spacer(),
            Visibility(
              visible: this.success,
              child: Text(
                'Please contact our support team if you did not receive payment on time.',
                style: Get.textTheme.caption,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
