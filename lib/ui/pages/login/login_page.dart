import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
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
            child: GetBuilder<LoginController>(
              init: LoginController(),
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
                  TextFormField(
                    obscureText: false,
                    style: style,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(
                        0.0,
                        AppSizes.small,
                        AppSizes.medium,
                        AppSizes.small,
                      ),
                      hintText: "Email",
                    ),
                  ),
                  AppUiHelpers.vSpaceLarge,
                  TextFormField(
                    obscureText: true,
                    style: style,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(
                        0.0,
                        AppSizes.small,
                        AppSizes.medium,
                        AppSizes.small,
                      ),
                      hintText: "Password",
                    ),
                  ),
                  AppUiHelpers.vSpaceExtraLarge,
                  RaisedGradientButton(
                    onPressed: () => _.login(),
                    gradient: LinearGradient(
                      colors: [Colors.grey[300], Colors.grey[300]],
                    ),
                    child: Text(
                      "Sign in",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Proxima_Nova',
                        fontSize: 20.0,
                        color: AppColors.secondary,
                        fontWeight: FontWeight.bold,
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
