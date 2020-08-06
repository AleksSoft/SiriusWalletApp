import 'dart:async';

import 'package:antares_wallet/services/repositories/register_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  static RegisterController get con => Get.find();

  final pageViewController = PageController(initialPage: 0);

  Timer _codeTimer;

  final _loading = false.obs;
  bool get loading => this._loading.value;
  set loading(bool value) => this._loading.value = value;

  final _isCodeWaiting = false.obs;
  bool get isCodeWaiting => this._isCodeWaiting.value;
  set isCodeWaiting(bool value) => this._isCodeWaiting.value = value;

  final _timerValue = DateTime.fromMillisecondsSinceEpoch(60 * 1000).obs;
  DateTime get timerValue => this._timerValue.value;
  set timerValue(DateTime value) => this._timerValue.value = value;

  String token = '';
  String emailValue = '';
  String codeValue = '';

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    _stopTimer();
    super.onClose();
  }

  _startTimer() {
    int seconds = 60;
    _stopTimer();
    isCodeWaiting = true;
    _codeTimer = Timer.periodic(
      Duration(seconds: 1),
      (Timer _) {
        timerValue = DateTime.fromMillisecondsSinceEpoch(
          (seconds - _.tick) * 1000,
        );
        if (_.tick == seconds) {
          _stopTimer();
        }
      },
    );
  }

  proceed() async {
    loading = true;
    int currentPage = pageViewController.page.toInt();
    switch (currentPage) {
      case 0:
        await proceedEmail();
        break;
      case 1:
        await _proceedCode();
        break;
      case 2:
      case 3:
      default:
        return;
    }
    loading = false;
  }

  back() {
    int currentPage = pageViewController.page.toInt();
    if (currentPage > 0) {
      _animateToPage(currentPage - 1);
    } else {
      Get.back();
    }
  }

  proceedEmail() async {
    if (!isCodeWaiting) {
      token = await RegisterRepository.sendVerificationEmail(email: emailValue);
      if (token.isNullOrBlank) {
        Get.rawSnackbar(message: 'Email not verified');
        _stopTimer();
      } else {
        Get.rawSnackbar(message: 'Code sent');
        _animateToPage(1);
        _startTimer();
      }
    } else {
      _animateToPage(1);
    }
  }

  _proceedCode() async {
    if (await RegisterRepository.verifyEmail(
        email: emailValue, code: codeValue, token: token)) {
      Get.rawSnackbar(message: 'Code verified');
      _animateToPage(2);
    } else {
      Get.rawSnackbar(message: 'Code not verified');
    }
  }

  _animateToPage(int page) {
    int currentPage = pageViewController.page.toInt();
    pageViewController.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: page > currentPage ? Curves.easeInCubic : Curves.easeOutCubic,
    );
  }

  _stopTimer() {
    _codeTimer?.cancel();
    isCodeWaiting = false;
  }
}
