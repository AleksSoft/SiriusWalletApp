import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/common/app_sizes.dart';
import 'package:antares_wallet/ui/common/app_ui_helpers.dart';
import 'package:antares_wallet/ui/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_view_model.dart';

class LoginView extends StatelessWidget {
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
            child: ViewModelBuilder<LoginViewModel>.nonReactive(
              viewModelBuilder: () => LoginViewModel(),
              builder: (_, __, ___) => Column(
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
                  _LoginButton(),
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

class _LoginButton extends ViewModelWidget<LoginViewModel> {
  const _LoginButton({Key key}) : super(key: key);

  @override
  Widget build(context, model) {
    return RaisedGradientButton(
      onPressed: () => model.login(),
      gradient: LinearGradient(
        colors: [Colors.grey[300], Colors.grey[300]],
      ),
      child: !model.isBusy
          ? Text(
              "Sign in",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Proxima_Nova',
                fontSize: 20.0,
                color: AppColors.secondary,
                fontWeight: FontWeight.bold,
              ),
            )
          : CircularProgressIndicator(),
    );
  }
}
