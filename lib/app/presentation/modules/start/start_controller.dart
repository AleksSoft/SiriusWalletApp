import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartController extends GetxController {
  final PageController pageViewController = PageController(initialPage: 0);

  StartController({@required this.appConfig});
  final AppConfig appConfig;

  bool get isDevSettingsVisible => !appConfig.isProd;

  void openPageByIndex(int index) => pageViewController.jumpToPage(index);

  void openLogin() => Get.toNamed(Routes.LOGIN);

  void openRegister() => Get.toNamed(Routes.REGISTER);

  void openDevSettings() => Get.toNamed(Routes.DEV_SETTINGS);
}
