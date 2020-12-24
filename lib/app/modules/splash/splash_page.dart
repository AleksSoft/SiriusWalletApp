import 'package:antares_wallet/app/common/app_colors.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () => Get.offAndToNamed(Routes.START));
  }

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
