import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/presentation/widgets/gradient_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => controller.back(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: BackButton(
            color: AppColors.dark,
            onPressed: () => controller.back(),
          ),
          elevation: 0.0,
        ),
        body: Stack(
          children: <Widget>[
            PageView(
              controller: controller.pageViewController,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                SingleChildScrollView(child: _LoginScreen()),
                _VerifySmsScreen(),
              ],
            ),
            Obx(
              () => AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: controller.loading
                    ? Container(
                        color: AppColors.primary.withOpacity(0.9),
                        alignment: Alignment.center,
                        child: AppUiHelpers.circularProgress,
                      )
                    : SizedBox.shrink(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.large),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Sign in',
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
              'Login using email and password',
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
                      return 'Email is wrong';
                    }
                  },
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                AppUiHelpers.vSpaceSmall,
                Obx(
                  () => TextFormField(
                    onChanged: (String s) => controller.passwordValue = s,
                    obscureText: controller.hidePassword.value,
                    initialValue: controller.passwordValue,
                    decoration: InputDecoration(
                      labelText: 'Password',
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
              'SIGN IN',
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

class _VerifySmsScreen extends GetView<LoginController> {
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
            'Verify phone number',
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
              'Please enter the verification code you recieved via sms',
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
                labelText: 'Sms code',
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
              'PROCEED',
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
              duration: const Duration(milliseconds: 300),
              child: controller.isSmsWaiting
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.timer, color: AppColors.secondary),
                        AppUiHelpers.hSpaceExtraSmall,
                        Text(
                          'Request new code in ${DateFormat('mm:ss').format(controller.timerValue)}',
                          style: subtitleTheme,
                        ),
                      ],
                    )
                  : CupertinoButton(
                      onPressed: () => controller.requestSmsVerification(),
                      child: Text('Haven\'t received the code?'),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
