import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/ui/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'initial_controller.dart';

class InitialPage extends StatelessWidget {
  static final String route = '/';

  @override
  Widget build(BuildContext context) {
    final style = Get.textTheme.headline6;

    return GetBuilder<InitialController>(
      init: InitialController(),
      builder: (_) {
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
                          onPressed: () => _.register(),
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
                            onPressed: () => _.login(),
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
      },
    );
  }
}

class Router {}
