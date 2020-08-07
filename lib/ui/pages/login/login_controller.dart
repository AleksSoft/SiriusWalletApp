import 'dart:async';

import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/ui/pages/register/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  static LoginController get con => Get.find();
  static final _api = Get.find<ApiService>();
  final _storage = GetStorage();

  final pageViewController = PageController(initialPage: 0);

  Timer _codeTimer;

  final _loading = false.obs;
  bool get loading => this._loading.value;
  set loading(bool value) => this._loading.value = value;

  final _showPass = false.obs;
  bool get passwordVisible => this._loading.value;
  set passwordVisible(bool value) => this._loading.value = value;

  final _isSmsWaiting = false.obs;
  bool get isSmsWaiting => this._isSmsWaiting.value;
  set isSmsWaiting(bool value) => this._isSmsWaiting.value = value;

  final _timerValue = DateTime.fromMillisecondsSinceEpoch(60 * 1000).obs;
  DateTime get timerValue => this._timerValue.value;
  set timerValue(DateTime value) => this._timerValue.value = value;

  String emailValue = '';
  String passwordValue = '';
  String smsCode = '';

  @override
  void onClose() async {
    _stopTimer();
    super.onClose();
  }

  back() {
    int currentPage = pageViewController.page.toInt();
    if (currentPage > 0) {
      _animateToPage(currentPage - 1);
    } else {
      Get.back();
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

  _startTimer() {
    int seconds = 60;
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

  _stopTimer() {
    _codeTimer?.cancel();
    isSmsWaiting = false;
  }

  openRegister() => Get.toNamed(RegisterPage.route);

  login() {}

  verifySms() {}

  requestSmsVerification() {}
}
