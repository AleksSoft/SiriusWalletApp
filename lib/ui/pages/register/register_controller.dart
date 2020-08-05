import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  static RegisterController get con => Get.find();

  final pageViewController = PageController(initialPage: 0);

  bool get isCodeWaiting => true;

  double get timerValue => 0.0;

  @override
  void onInit() {
    super.onInit();
  }

  back() {
    int currentPage = pageViewController.page.toInt();
    if (currentPage > 0) {
      pageViewController.animateToPage(
        currentPage - 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    } else {
      Get.back();
    }
  }
}
