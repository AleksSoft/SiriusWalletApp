import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/presentation/widgets/gradient_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../login_controller.dart';

class VerifySmsView extends GetView<LoginController> {
  final subtitleTheme = Get.textTheme.subtitle1.copyWith(
    color: AppColors.secondary,
    fontWeight: FontWeight.w600,
    fontSize: 16.0,
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.large),
      child: Column(
        children: <Widget>[
          Text(
            'msg_verify_phone_number'.tr,
            style: Get.textTheme.headline6.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          AppUiHelpers.vSpaceSmall,
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.extraLarge,
            ),
            child: Text(
              'msg_verify_phone_number_subtitle'.tr,
              style: subtitleTheme,
              textAlign: TextAlign.center,
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          Theme(
            data: Get.theme.copyWith(primaryColor: AppColors.accent),
            child: TextFormField(
              onChanged: (String s) => controller.smsCodeValue = s,
              obscureText: false,
              initialValue: controller.smsCodeValue,
              decoration: InputDecoration(
                labelText: 'sms_code'.tr,
              ),
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          RaisedGradientButton(
            onPressed: () => controller.verifySms(),
            gradient: LinearGradient(
              colors: [AppColors.accent, AppColors.accent],
            ),
            child: Text(
              'proceed'.tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: AppColors.primary,
              ),
            ),
          ),
          AppUiHelpers.vSpaceMedium,
          Obx(
            () => AnimatedSwitcher(
              duration: Get.defaultTransitionDuration,
              child: controller.isSmsWaiting
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.timer, color: AppColors.secondary),
                        AppUiHelpers.hSpaceExtraSmall,
                        Text(
                          'msg_request_code_args_date'.trArgs([
                            DateFormat('mm:ss').format(controller.timerValue),
                          ]),
                          style: subtitleTheme,
                        ),
                      ],
                    )
                  : CupertinoButton(
                      onPressed: () => controller.requestSmsVerification(),
                      child: Text('msg_no_verification_code'.tr),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
