import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/ui/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  static final String route = '/login';
  final TextStyle style = TextStyle(fontFamily: 'Proxima_Nova', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(elevation: 0.0),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: GetX<LoginController>(
              builder: (_) => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: AppSizes.extraLarge * 2,
                    child: Image.asset(
                      "assets/images/logo_lykke.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  AppUiHelpers.vSpaceExtraLarge,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Url:', style: Get.textTheme.headline6),
                      AppUiHelpers.hSpaceMedium,
                      DropdownButton<String>(
                        value: _.urlDropValue,
                        isDense: true,
                        onChanged: (String s) => _.urlDropValue = s,
                        items: ApiService.urls.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value ?? 'Custom'),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  AppUiHelpers.vSpaceLarge,
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: _.urlDropValue == null
                        ? Theme(
                            data: Get.theme.copyWith(
                              primaryColor: AppColors.accent,
                            ),
                            child: TextField(
                              onChanged: (String s) => _.customUrl = s,
                              obscureText: false,
                              style: style,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(
                                  0.0,
                                  AppSizes.small,
                                  AppSizes.medium,
                                  AppSizes.small,
                                ),
                                labelText: "Custom url",
                              ),
                            ),
                          )
                        : SizedBox.shrink(),
                  ),
                  AppUiHelpers.vSpaceLarge,
                  Theme(
                    data: Get.theme.copyWith(primaryColor: AppColors.accent),
                    child: TextField(
                      onChanged: (String s) => _.tokenValue = s,
                      obscureText: false,
                      style: style,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(
                          0.0,
                          AppSizes.small,
                          AppSizes.medium,
                          AppSizes.small,
                        ),
                        labelText: "Token (without 'Bearer' word)",
                      ),
                    ),
                  ),
                  AppUiHelpers.vSpaceExtraLarge,
                  RaisedGradientButton(
                    onPressed:
                        _.loginAllowed ? () => _.saveTokenAndLogin() : null,
                    gradient: LinearGradient(
                      colors: [Colors.grey[300], Colors.grey[300]],
                    ),
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: !_.loading
                          ? Text(
                              "SIGN IN",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Proxima_Nova',
                                fontSize: 20.0,
                                color: AppColors.secondary,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : CircularProgressIndicator(
                              valueColor: new AlwaysStoppedAnimation<Color>(
                                Colors.black,
                              ),
                            ),
                    ),
                  ),
                  AppUiHelpers.vSpaceLarge,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
