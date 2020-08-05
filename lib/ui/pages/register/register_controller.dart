import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  static RegisterController get con => Get.find();

  final pageViewController = PageController(initialPage: 0);

  bool get isCodeWaiting => true;

  double get timerValue => 0.0;

  @override
  back() {}
}
