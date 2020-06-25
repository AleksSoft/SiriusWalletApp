import 'package:antares_wallet/app/routers/router.gr.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/common/app_sizes.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  final TextStyle style = TextStyle(fontFamily: 'Proxima_Nova', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
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
    );
    final passwordField = TextField(
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
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.grey[300],
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () =>
            ExtendedNavigator.ofRouter<Router>().pushReplacementNamed(
          Routes.rootRoute,
        ),
        child: Text(
          "Sign in",
          textAlign: TextAlign.center,
          style: style.copyWith(
            color: AppColors.secondary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(elevation: 0.0),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 72.0,
                  child: Image.asset(
                    "assets/images/logo_lykke.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 45.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 35.0,
                ),
                loginButon,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
