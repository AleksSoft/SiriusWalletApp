import 'package:antares_wallet/app/core/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DisclaimersButtonRow extends StatelessWidget {
  const DisclaimersButtonRow({
    Key key,
    @required this.onCancel,
    @required this.onSubmit,
  }) : super(key: key);
  final VoidCallback onCancel;
  final VoidCallback onSubmit;

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
              color: AppColors.red,
              padding: const EdgeInsets.all(AppSizes.medium),
              splashColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.small),
              ),
              onPressed: () => onCancel?.call(),
              child: Text(
                'Cancel',
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
              color: AppColors.green,
              padding: const EdgeInsets.all(AppSizes.medium),
              splashColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.small),
              ),
              onPressed: () => onSubmit?.call(),
              child: Text(
                'Submit',
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
