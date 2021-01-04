import 'package:antares_wallet/app/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      alignment: Alignment.center,
      child: Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/logo.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
