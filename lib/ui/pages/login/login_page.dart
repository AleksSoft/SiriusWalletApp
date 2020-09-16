import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/login_controller.dart';
import 'package:antares_wallet/ui/widgets/gradient_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class LoginPage extends StatelessWidget {
  static final String route = '/login';
  final c = LoginController.con;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => c.back(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: BackButton(
            color: AppColors.dark,
            onPressed: () => c.back(),
          ),
          elevation: 0.0,
        ),
        body: Stack(
          children: <Widget>[
            PageView(
              controller: c.pageViewController,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                _LoginScreen(),
                _VerifySmsScreen(),
              ],
            ),
            Obx(
              () => AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: c.loading
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

class _LoginScreen extends StatelessWidget {
  final c = LoginController.con;
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
                  onChanged: (String s) => c.emailValue = s,
                  initialValue: c.emailValue,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  autovalidate: true,
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
                    onChanged: (String s) => c.passwordValue = s,
                    obscureText: c.hidePassword,
                    initialValue: c.passwordValue,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffix: InkWell(
                        onTap: () => c.hidePassword = !c.hidePassword,
                        child: FaIcon(
                          c.hidePassword
                              ? FontAwesomeIcons.eyeSlash
                              : FontAwesomeIcons.eye,
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
            onPressed: () => c.signIn(),
            gradient: LinearGradient(
              colors: [AppColors.accent, AppColors.accent],
            ),
            child: Text(
              'SIGN IN',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Proxima_Nova',
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

class _VerifySmsScreen extends StatelessWidget {
  final c = LoginController.con;
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
              onChanged: (String s) => c.smsCodeValue = s,
              obscureText: false,
              initialValue: c.smsCodeValue,
              decoration: InputDecoration(
                labelText: 'Sms code',
              ),
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          RaisedGradientButton(
            onPressed: () => c.verifySms(),
            gradient: LinearGradient(
              colors: [AppColors.accent, AppColors.accent],
            ),
            child: Text(
              'PROCEED',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Proxima_Nova',
                fontSize: 20.0,
                color: AppColors.primary,
              ),
            ),
          ),
          AppUiHelpers.vSpaceMedium,
          Obx(
            () => AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: c.isSmsWaiting
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.timer, color: AppColors.secondary),
                        AppUiHelpers.hSpaceExtraSmall,
                        Text(
                          'Request new code in ${DateFormat('mm:ss').format(c.timerValue)}',
                          style: subtitleTheme,
                        ),
                      ],
                    )
                  : CupertinoButton(
                      onPressed: () => c.requestSmsVerification(),
                      child: Text('Haven\'t received the code?'),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
