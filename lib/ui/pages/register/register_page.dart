import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/widgets/gradient_button.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/register/register_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:search_page/search_page.dart';
import 'package:string_validator/string_validator.dart' as stringValidator;

class RegisterPage extends GetView<RegisterController> {
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

class _EmailScreen extends GetView<RegisterController> {
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
              onChanged: (String s) => controller.emailValue = s,
              validator: (String value) {
                if (value.isEmpty || value.isEmail) {
                  return null;
                } else {
                  return 'Email is wrong';
                }
              },
              obscureText: false,
              initialValue: controller.emailValue,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          RaisedGradientButton(
            onPressed: () => controller.proceed(),
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
        ],
      ),
    );
  }
}

class _VerifyEmailScreen extends GetView<RegisterController> {
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
              onChanged: (String s) => controller.emailCodeValue = s,
              obscureText: false,
              initialValue: controller.emailCodeValue,
              decoration: InputDecoration(
                labelText: 'Code',
              ),
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          RaisedGradientButton(
            onPressed: () => controller.proceed(),
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
              child: controller.isEmailCodeWaiting
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
                      onPressed: () => controller.proceedEmail(),
                      child: Text('Haven\'t received the code?'),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AdditionalDataScreen extends GetView<RegisterController> {
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
                  onChanged: (String s) => controller.fullNameValue = s,
                  obscureText: false,
                  initialValue: controller.fullNameValue,
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
                  controller: controller.countryController,
                  onTap: () => _showSearch(),
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Country of residence',
                    suffixIcon: Icon(Icons.keyboard_arrow_down),
                  ),
                ),
                AppUiHelpers.vSpaceSmall,
                TextFormField(
                  onChanged: (String s) => controller.affiliateCodeValue = s,
                  obscureText: false,
                  initialValue: controller.passwordHintValue,
                  decoration: InputDecoration(
                    labelText: 'Affiliate code (optional)',
                  ),
                ),
              ],
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          RaisedGradientButton(
            onPressed: () => controller.proceed(),
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
        ],
      ),
    );
  }

  _showSearch() {
    return showSearch(
      context: Get.context,
      delegate: SearchPage<Country>(
        showItemsOnEmpty: true,
        items: controller.countries,
        searchLabel: 'search'.tr,
        filter: (country) => [
          country.name,
          country.prefix,
        ],
        builder: (country) => ListTile(
          title: Text(
            country.name,
            style: TextStyle(
              color: AppColors.dark,
            ),
          ),
          subtitle: Text(
            country.prefix,
            style: TextStyle(
              color: AppColors.secondary,
            ),
          ),
          onTap: () {
            controller.countryValue = country;
            controller.countryController.text = country.name;
            controller.phonePrefix = country.prefix;
            Get.back();
          },
        ),
      ),
    );
  }
}

class _PhoneScreen extends GetView<RegisterController> {
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
              onChanged: (String s) => controller.phoneValue = s,
              obscureText: false,
              initialValue: controller.phoneValue,
              decoration: InputDecoration(
                labelText: 'Phone number',
                prefix: InkWell(
                  onTap: () => _showSearch(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Obx(() => Text(controller.phonePrefix)),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ),
              keyboardType: TextInputType.phone,
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          RaisedGradientButton(
            onPressed: () => controller.proceed(),
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
        ],
      ),
    );
  }

  _showSearch() {
    return showSearch(
      context: Get.context,
      delegate: SearchPage<Country>(
        showItemsOnEmpty: true,
        items: controller.countries,
        searchLabel: 'search'.tr,
        filter: (country) => [
          country.name,
          country.prefix,
        ],
        builder: (country) => ListTile(
          title: Text(
            country.name,
            style: TextStyle(
              color: AppColors.dark,
            ),
          ),
          subtitle: Text(
            country.prefix,
            style: TextStyle(
              color: AppColors.secondary,
            ),
          ),
          onTap: () {
            controller.phonePrefix = country.prefix;
            Get.back();
          },
        ),
      ),
    );
  }
}

class _VerifyPhoneScreen extends GetView<RegisterController> {
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
              onChanged: (String s) => controller.smsCode = s,
              obscureText: false,
              initialValue: controller.smsCode,
              decoration: InputDecoration(
                labelText: 'Sms code',
              ),
            ),
          ),
          AppUiHelpers.vSpaceExtraLarge,
          RaisedGradientButton(
            onPressed: () => controller.proceed(),
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
                      onPressed: () => controller.proceedEmail(),
                      child: Text('Haven\'t received the code?'),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PasswordScreen extends GetView<RegisterController> {
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
                Obx(
                  () => TextFormField(
                    onChanged: (String s) => controller.passwordValue = s,
                    obscureText: controller.hidePassword.value,
                    initialValue: controller.passwordValue,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (String value) {
                      if (stringValidator.isUppercase(value)) {
                        return 'Needs at least 1 lowercase letter';
                      } else if (stringValidator.isLowercase(value)) {
                        return 'Needs at least 1 uppercase letter';
                      } else if (stringValidator.isAlpha(value)) {
                        return 'Needs at least 1 digit ';
                      } else if (stringValidator.isAlphanumeric(value)) {
                        return 'Needs at least 1 special symbol';
                      } else if (value.length < 8) {
                        return 'Should be at least 8 characters long';
                      } else
                        return null;
                    },
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
                AppUiHelpers.vSpaceSmall,
                Obx(
                  () => TextFormField(
                    onChanged: (String s) =>
                        controller.confirmPasswordValue = s,
                    obscureText: controller.hidePassword.value,
                    initialValue: controller.confirmPasswordValue,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (String value) {
                      if (value != controller.passwordValue) {
                        return 'Passwords didn\'t match';
                      } else
                        return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Confirm password',
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
                AppUiHelpers.vSpaceSmall,
                TextFormField(
                  onChanged: (String s) => controller.passwordHintValue = s,
                  obscureText: false,
                  initialValue: controller.passwordHintValue,
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
            onPressed: () => controller.proceed(),
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
        ],
      ),
    );
  }
}
