import 'package:antares_wallet/app/routers/router.gr.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/common/app_sizes.dart';
import 'package:antares_wallet/ui/views/root/root_view.dart';
import 'package:antares_wallet/ui/widgets/gradient_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'initial_view_model.dart';

class InitialView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<InitialViewModel>.reactive(
      viewModelBuilder: () => InitialViewModel(),
      builder: (_, model, __) {
        if (model.isBusy) {
          return Center(child: CircularProgressIndicator());
        } else {
          if (model.loggedIn) {
            return RootView();
          } else {
            return ChooseAuthView();
          }
        }
      },
    );
  }
}

class ChooseAuthView extends StatelessWidget {
  final TextStyle style = TextStyle(fontFamily: 'Proxima_Nova', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              flex: 2,
              child: Center(child: Text('Welcome to Lykke', style: style)),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.large,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RaisedGradientButton(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Colors.yellowAccent,
                          Colors.orangeAccent,
                          Colors.red,
                          Colors.redAccent,
                          Colors.purpleAccent,
                          Colors.purple,
                        ],
                      ),
                      child: Text(
                        "Register",
                        textAlign: TextAlign.center,
                        style: style.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: AppSizes.small,
                        top: AppSizes.medium,
                        left: AppSizes.small,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              color: AppColors.dark,
                              height: 1,
                              endIndent: AppSizes.medium,
                            ),
                          ),
                          Text('or'),
                          Expanded(
                            child: Divider(
                              color: AppColors.dark,
                              height: 1,
                              indent: AppSizes.medium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                      child: FlatButton(
                        onPressed: () =>
                            ExtendedNavigator.ofRouter<Router>().pushNamed(
                          Routes.loginViewRoute,
                        ),
                        child: Text(
                          "Sign in",
                          textAlign: TextAlign.center,
                          style: style.copyWith(
                            color: AppColors.secondary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
