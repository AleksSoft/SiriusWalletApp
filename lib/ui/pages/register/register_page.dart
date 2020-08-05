import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/ui/pages/register/register_controller.dart';
import 'package:antares_wallet/ui/widgets/gradient_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  static final String route = '/register';
  final c = RegisterController.con;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: BackButton(
          color: AppColors.dark,
          onPressed: () => c.back(),
        ),
        elevation: 0.0,
      ),
      body: PageView(
        controller: c.pageViewController,
        children: <Widget>[
          _EmailScreen(),
          _CodeScreen(),
          _PasswordScreen(),
          _CompleteProfileScreen(),
        ],
      ),
    );
  }
}

class _EmailScreen extends StatelessWidget {
  final c = RegisterController.con;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.large),
      child: Column(
        children: <Widget>[
          Text(
            'Register',
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
              'Enter your email',
              style: Get.textTheme.subtitle1.copyWith(
                color: AppColors.secondary,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          Theme(
            data: Get.theme.copyWith(primaryColor: AppColors.accent),
            child: TextField(
              // onChanged: (String s) => _.tokenValue = s,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: AppColors.secondary),
              ),
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          RaisedGradientButton(
            gradient: LinearGradient(
              colors: [AppColors.accent, AppColors.accent],
            ),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
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
          ),
        ],
      ),
    );
  }
}

class _CodeScreen extends StatelessWidget {
  final c = RegisterController.con;
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
            'Register',
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
              'Please enter the verification code you recieved via email',
              style: subtitleTheme,
              textAlign: TextAlign.center,
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          Theme(
            data: Get.theme.copyWith(primaryColor: AppColors.accent),
            child: TextField(
              // onChanged: (String s) => _.tokenValue = s,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Code',
                labelStyle: TextStyle(color: AppColors.secondary),
              ),
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          RaisedGradientButton(
            gradient: LinearGradient(
              colors: [AppColors.accent, AppColors.accent],
            ),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
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
          ),
          AppUiHelpers.vSpaceMedium,
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: c.isCodeWaiting
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.timer, color: AppColors.secondary),
                      AppUiHelpers.hSpaceExtraSmall,
                      Text(
                        'Request new code in ${c.timerValue}',
                        style: subtitleTheme,
                      )
                    ],
                  )
                : CupertinoButton(
                    onPressed: () {},
                    child: Text('Havent\'t received the code?'),
                  ),
          ),
        ],
      ),
    );
  }
}

class _PasswordScreen extends StatelessWidget {
  final c = RegisterController.con;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.large),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Register',
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
              'Create a password',
              style: Get.textTheme.subtitle1.copyWith(
                color: AppColors.secondary,
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          AppUiHelpers.vSpaceLarge,
          Text(
            'Minimum 8 characters and must include 1 uppercase letter, 1 lowercase letter and 1 special character',
            style: Get.textTheme.subtitle1.copyWith(color: AppColors.secondary),
            textAlign: TextAlign.start,
          ),
          AppUiHelpers.vSpaceLarge,
          Theme(
            data: Get.theme.copyWith(primaryColor: AppColors.accent),
            child: Column(
              children: <Widget>[
                TextField(
                  // onChanged: (String s) => _.tokenValue = s,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: AppColors.secondary),
                  ),
                ),
                AppUiHelpers.vSpaceSmall,
                TextField(
                  // onChanged: (String s) => _.tokenValue = s,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirm password',
                    labelStyle: TextStyle(color: AppColors.secondary),
                  ),
                ),
                AppUiHelpers.vSpaceSmall,
                TextField(
                  // onChanged: (String s) => _.tokenValue = s,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Password hint',
                    labelStyle: TextStyle(color: AppColors.secondary),
                  ),
                ),
              ],
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          RaisedGradientButton(
            gradient: LinearGradient(
              colors: [AppColors.accent, AppColors.accent],
            ),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
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
          ),
        ],
      ),
    );
  }
}

class _CompleteProfileScreen extends StatelessWidget {
  final c = RegisterController.con;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.large),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Register',
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
              'Complete your profile',
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
                TextField(
                  // onChanged: (String s) => _.tokenValue = s,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'First and last name',
                    labelStyle: TextStyle(color: AppColors.secondary),
                  ),
                ),
                AppUiHelpers.vSpaceSmall,
                TextField(
                  // onChanged: (String s) => _.tokenValue = s,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Country of residence',
                    labelStyle: TextStyle(color: AppColors.secondary),
                  ),
                ),
                AppUiHelpers.vSpaceSmall,
                TextField(
                  // onChanged: (String s) => _.tokenValue = s,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Affiliate code (optional)',
                    labelStyle: TextStyle(color: AppColors.secondary),
                  ),
                ),
              ],
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          RaisedGradientButton(
            gradient: LinearGradient(
              colors: [AppColors.accent, AppColors.accent],
            ),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
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
          ),
        ],
      ),
    );
  }
}
