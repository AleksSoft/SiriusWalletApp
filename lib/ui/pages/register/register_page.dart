import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/register/register_controller.dart';
import 'package:antares_wallet/ui/widgets/gradient_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:search_page/search_page.dart';

class RegisterPage extends StatelessWidget {
  static final String route = '/register';
  final c = RegisterController.con;

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
              // physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                _EmailScreen(),
                _VerifyEmailScreen(),
                _AdditionalDataScreen(),
                _PhoneScreen(),
                _VerifyPhoneScreen(),
                _PasswordScreen(),
              ],
            ),
            Obx(
              () => AnimatedSwitcher(
                duration: const Duration(milliseconds: 150),
                child: c.loading
                    ? Center(
                        child: CircularProgressIndicator(
                          valueColor: new AlwaysStoppedAnimation<Color>(
                            Colors.black,
                          ),
                        ),
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

class _EmailScreen extends StatelessWidget {
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
              'Enter your email',
              style: subtitleTheme,
              textAlign: TextAlign.center,
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          Theme(
            data: Get.theme.copyWith(primaryColor: AppColors.accent),
            child: TextFormField(
              onChanged: (String s) => c.emailValue = s,
              validator: (String value) {
                if (value.isEmpty || value.isEmail) {
                  return null;
                } else {
                  return 'Email is wrong';
                }
              },
              autovalidate: true,
              obscureText: false,
              initialValue: c.emailValue,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          RaisedGradientButton(
            onPressed: () => c.proceed(),
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
        ],
      ),
    );
  }
}

class _VerifyEmailScreen extends StatelessWidget {
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
            child: TextFormField(
              onChanged: (String s) => c.emailCodeValue = s,
              obscureText: false,
              initialValue: c.emailCodeValue,
              decoration: InputDecoration(
                labelText: 'Code',
              ),
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          RaisedGradientButton(
            onPressed: () => c.proceed(),
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
              child: c.isEmailCodeWaiting
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
                      onPressed: () => c.proceedEmail(),
                      child: Text('Haven\'t received the code?'),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AdditionalDataScreen extends StatelessWidget {
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
              'Specify additional profile data',
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
                  onChanged: (String s) => c.fullNameValue = s,
                  obscureText: false,
                  initialValue: c.fullNameValue,
                  autovalidate: true,
                  validator: (String value) {
                    if (value.length < 4) {
                      return 'Too short';
                    } else
                      return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'First and last name',
                  ),
                ),
                AppUiHelpers.vSpaceSmall,
                TextFormField(
                  controller: c.countryController,
                  onTap: () => _showSearch(),
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Country of residence',
                    suffixIcon: Icon(Icons.keyboard_arrow_down),
                  ),
                ),
                AppUiHelpers.vSpaceSmall,
                TextFormField(
                  onChanged: (String s) => c.affiliateCodeValue = s,
                  obscureText: false,
                  initialValue: c.passwordHintValue,
                  decoration: InputDecoration(
                    labelText: 'Affiliate code (optional)',
                  ),
                ),
              ],
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          RaisedGradientButton(
            onPressed: () => c.proceed(),
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
        ],
      ),
    );
  }

  _showSearch() {
    return showSearch(
      context: Get.overlayContext,
      delegate: SearchPage<Country>(
        showItemsOnEmpty: true,
        items: c.countries,
        searchLabel: 'search'.tr,
        filter: (country) => [
          country.name,
          country.prefix,
        ],
        builder: (country) => ListTile(
          title: Text(country.name),
          subtitle: Text(country.prefix),
          onTap: () {
            c.countryValue = country;
            c.countryController.text = country.name;
            c.phonePrefix = country.prefix;
            Get.back();
          },
        ),
      ),
    );
  }
}

class _PhoneScreen extends StatelessWidget {
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
              'Enter your phone',
              style: subtitleTheme,
              textAlign: TextAlign.center,
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          Theme(
            data: Get.theme.copyWith(primaryColor: AppColors.accent),
            child: TextFormField(
              onChanged: (String s) => c.phoneValue = s,
              obscureText: false,
              initialValue: c.phoneValue,
              decoration: InputDecoration(
                labelText: 'Phone number',
                prefix: InkWell(
                  onTap: () => _showSearch(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Obx(() => Text(c.phonePrefix)),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          RaisedGradientButton(
            onPressed: () => c.proceed(),
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
        ],
      ),
    );
  }

  _showSearch() {
    return showSearch(
      context: Get.overlayContext,
      delegate: SearchPage<Country>(
        showItemsOnEmpty: true,
        items: c.countries,
        searchLabel: 'search'.tr,
        filter: (country) => [
          country.name,
          country.prefix,
        ],
        builder: (country) => ListTile(
          title: Text(country.name),
          subtitle: Text(country.prefix),
          onTap: () {
            c.phonePrefix = country.prefix;
            Get.back();
          },
        ),
      ),
    );
  }
}

class _VerifyPhoneScreen extends StatelessWidget {
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
              'Please enter the verification code you recieved via sms',
              style: subtitleTheme,
              textAlign: TextAlign.center,
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          Theme(
            data: Get.theme.copyWith(primaryColor: AppColors.accent),
            child: TextFormField(
              onChanged: (String s) => c.smsCode = s,
              obscureText: false,
              initialValue: c.smsCode,
              decoration: InputDecoration(
                labelText: 'Sms code',
              ),
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          RaisedGradientButton(
            onPressed: () => c.proceed(),
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
              child: c.isEmailCodeWaiting
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
                      onPressed: () => c.proceedEmail(),
                      child: Text('Haven\'t received the code?'),
                    ),
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
                TextFormField(
                  onChanged: (String s) => c.passwordValue = s,
                  obscureText: true,
                  initialValue: c.passwordValue,
                  autovalidate: true,
                  validator: (String value) {
                    if (value == value.toUpperCase()) {
                      return 'Needs at least 1 lowercase letter';
                    } else if (value == value.toLowerCase()) {
                      return 'Needs at least 1 uppercase letter';
                    } else if (value.isAlphabetOnly) {
                      return 'Needs at least 1 special symbol';
                    } else if (value.isAlphabetOnly) {
                      return 'Needs at least 1 special symbol';
                    } else
                      return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                AppUiHelpers.vSpaceSmall,
                TextFormField(
                  onChanged: (String s) => c.confirmPasswordValue = s,
                  obscureText: true,
                  initialValue: c.confirmPasswordValue,
                  autovalidate: true,
                  validator: (String value) {
                    if (value != c.passwordValue) {
                      return 'Passwords didn\'t match';
                    } else
                      return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Confirm password',
                  ),
                ),
                AppUiHelpers.vSpaceSmall,
                TextFormField(
                  onChanged: (String s) => c.passwordHintValue = s,
                  obscureText: false,
                  initialValue: c.passwordHintValue,
                  autovalidate: true,
                  validator: (String value) {
                    if (value.length < 4) {
                      return 'Hint is too short';
                    } else
                      return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Password hint',
                  ),
                ),
              ],
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          RaisedGradientButton(
            onPressed: () => c.proceed(),
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
        ],
      ),
    );
  }
}
