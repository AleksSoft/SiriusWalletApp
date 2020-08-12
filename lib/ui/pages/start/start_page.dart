import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/ui/pages/login/login_controller.dart';
import 'package:antares_wallet/ui/pages/login/login_page.dart';
import 'package:antares_wallet/ui/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartPage extends StatelessWidget {
  static final String route = '/';

  @override
  Widget build(BuildContext context) {
    final style = Get.textTheme.headline6;

    return Scaffold(
      body: SafeArea(
        child: GetX<LoginController>(
          builder: (_) {
            return Stack(
              children: [
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: _.loading
                      ? Center(
                          child: CircularProgressIndicator(
                            valueColor: new AlwaysStoppedAnimation<Color>(
                              Colors.black,
                            ),
                          ),
                        )
                      : Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              flex: 2,
                              child: Center(
                                  child:
                                      Text('Welcome to Lykke', style: style)),
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
                                      onPressed: () => _.openRegister(),
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
                                        "REGISTER",
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                            Get.toNamed(LoginPage.route),
                                        child: Text(
                                          "SIGN IN",
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
                Visibility(
                  visible: true,
                  child: Positioned(
                    top: AppSizes.small,
                    right: AppSizes.small,
                    child: DropdownButton<String>(
                      value: _.currentBaseUrl,
                      focusColor: AppColors.accent,
                      onChanged: (String s) => _.currentBaseUrl = s,
                      items: ApiService.urls.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
