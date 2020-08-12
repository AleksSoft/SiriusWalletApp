import 'dart:async';

import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/services/repositories/session_repository.dart';
import 'package:antares_wallet/ui/pages/local_auth/local_auth_page.dart';
import 'package:antares_wallet/ui/pages/register/register_page.dart';
import 'package:antares_wallet/ui/pages/root/root_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  static LoginController get con => Get.find();
  final _storage = GetStorage();

  final pageViewController = PageController(initialPage: 0);

  Timer _codeTimer;

  final _loading = true.obs;
  bool get loading => this._loading.value;
  set loading(bool value) => this._loading.value = value;

  final _hidePassword = true.obs;
  bool get hidePassword => this._hidePassword.value;
  set hidePassword(bool value) => this._hidePassword.value = value;

  final _isSmsWaiting = false.obs;
  bool get isSmsWaiting => this._isSmsWaiting.value;
  set isSmsWaiting(bool value) => this._isSmsWaiting.value = value;

  final _timerValue = DateTime.fromMillisecondsSinceEpoch(60 * 1000).obs;
  DateTime get timerValue => this._timerValue.value;
  set timerValue(DateTime value) => this._timerValue.value = value;

  String emailValue = '';
  String passwordValue = '';
  String smsCodeValue = '';
  String token = '';

  @override
  void onReady() async {
    super.onReady();
    String sessionId = _storage.read(AppStorageKeys.token);
    if (!sessionId.isNullOrBlank) {
      _verifyPin(sessionId).whenComplete(() => loading = false);
    } else {
      loading = false;
    }
  }

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

  openRegister() => Get.toNamed(RegisterPage.route);

  signIn() async {
    loading = true;
    var response = await SessionRepository.login(
      email: emailValue,
      password: passwordValue,
      publicKey: '1111',
    );
    if (response.isNull) {
      Get.rawSnackbar(message: 'Login failed', backgroundColor: AppColors.red);
    } else {
      token = response.sessionId;
      await requestSmsVerification();
    }
    loading = false;
  }

  requestSmsVerification() async {
    if (!isSmsWaiting) {
      if (await SessionRepository.sendLoginSms(sessionId: token)) {
        Get.rawSnackbar(message: 'Sms sent');
        _animateToPage(1);
        _startTimer();
      } else {
        Get.rawSnackbar(
          message: 'Sms send failed',
          backgroundColor: AppColors.red,
        );
      }
    } else {
      _animateToPage(1);
    }
  }

  verifySms() async {
    loading = true;
    if (await SessionRepository.varifyLoginSms(
        sessionId: token, code: smsCodeValue)) {
      Get.rawSnackbar(message: 'Sms verified');
      _stopTimer();
      _verifyPin(token);
    } else {
      Get.rawSnackbar(
        message: 'Sms not verified',
        backgroundColor: AppColors.red,
      );
    }
    loading = false;
  }

  Future _verifyPin(String token) async {
    var pinCorrect = await Get.toNamed(LocalAuthPage.route);
    if (pinCorrect) {
      var pin = _storage.read(AppStorageKeys.pinCode);
      if (await SessionRepository.checkPin(sessionId: token, pin: pin)) {
        _storage.write(AppStorageKeys.token, token);
        Get.offAllNamed(RootPage.route);
      }
    } else {
      _verifyPin(token);
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
    isSmsWaiting = true;
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
}
