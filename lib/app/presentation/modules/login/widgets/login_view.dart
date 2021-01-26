import 'package:antares_wallet/app/core/common/common.dart';
import 'package:antares_wallet/app/presentation/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.large),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'sign_in'.tr,
            style: Get.textTheme.headline6.copyWith(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          AppUiHelpers.vSpaceSmall,
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.extraLarge,
            ),
            child: Text(
              'sign_in_subtitle'.tr,
              style: Get.textTheme.subtitle1.copyWith(
                color: AppColors.secondary,
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          Theme(
            data: Get.theme.copyWith(primaryColor: AppColors.accent),
            child: Column(
              children: <Widget>[
                TextFormField(
                  onChanged: (String s) => controller.emailValue = s,
                  initialValue: controller.emailValue,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  validator: (String value) {
                    if (value.isEmail) {
                      return null;
                    } else {
                      return 'msg_wrong_email'.tr;
                    }
                  },
                  decoration: InputDecoration(
                    labelText: 'email'.tr,
                  ),
                ),
                AppUiHelpers.vSpaceSmall,
                Obx(
                  () => TextFormField(
                    onChanged: (String s) => controller.passwordValue = s,
                    obscureText: controller.hidePassword.value,
                    initialValue: controller.passwordValue,
                    decoration: InputDecoration(
                      labelText: 'password'.tr,
                      suffix: InkWell(
                        onTap: () => controller.hidePassword.toggle(),
                        child: Icon(
                          controller.hidePassword.value
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          size: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          RaisedGradientButton(
            onPressed: () => controller.signIn(),
            gradient: LinearGradient(
              colors: [AppColors.accent, AppColors.accent],
            ),
            child: Text(
              'sign_in_upper'.tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
