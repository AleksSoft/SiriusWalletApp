import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'initial_controller.dart';

class InitialPage extends StatelessWidget {
  static final String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<InitialController>(
            init: InitialController(),
            builder: (_) {
              return Stack(
                children: <Widget>[
                  Positioned(
                    left: AppSizes.large,
                    top: Get.height / 10,
                    right: AppSizes.large,
                    child: Text(
                      'app_title'.tr,
                      style: Get.textTheme.headline5,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Positioned(
                    left: AppSizes.large,
                    right: AppSizes.large,
                    bottom: Get.height / 5,
                    child: Column(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () => _.login(),
                          child: Text('login'.tr),
                        ),
                        FlatButton(
                          onPressed: () => _.register(),
                          child: Text('register'.tr),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
