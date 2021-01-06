import 'dart:async';

import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/domain/repositories/session_repository.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get con => Get.find();

  final ISessionRepository repository;
  LoginController({@required this.repository});

  final pageViewController = PageController(initialPage: 0);

  Timer _codeTimer;

  final _loading = false.obs;
  bool get loading => this._loading.value;
  set loading(bool value) => this._loading.value = value;

  final hidePassword = true.obs;

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
  Future<void> onClose() async {
    _stopTimer();
    pageViewController?.dispose();
    super.onClose();
  }

  Future<bool> back() async {
    pageViewController?.jumpToPage(0);
    emailValue = '';
    passwordValue = '';
    smsCodeValue = '';
    token = '';
    _stopTimer();
    Get.back();
    return false;
  }

  Future<void> signIn() async {
    if (emailValue.isNullOrBlank ||
        !emailValue.isEmail ||
        passwordValue.isEmpty) {
      return;
    }

    loading = true;

    final response = await repository.login(
      email: emailValue,
      password: passwordValue,
      publicKey: '1111',
    );

    response.fold((error) {
      Get.rawSnackbar(
        message: 'Login failed',
        backgroundColor: AppColors.red,
      );
    }, (result) async {
      token = result.sessionId;
      await requestSmsVerification();
    });

    loading = false;
  }

  Future<void> requestSmsVerification() async {
    if (isSmsWaiting) {
      _animateToPage(1);
      return;
    }

    final response = await repository.sendLoginSms(sessionId: token);

    response.fold((error) {
      Get.rawSnackbar(
        title: 'SMS sending failed',
        message: error.message,
        backgroundColor: AppColors.red,
      );
    }, (result) {
      Get.rawSnackbar(message: 'SMS sent');
      _animateToPage(1);
      _startTimer();
    });
  }

  Future<void> verifySms() async {
    if (smsCodeValue.isNullOrBlank) return;

    loading = true;

    final response = await repository.verifyLoginSms(
      sessionId: token,
      code: smsCodeValue,
    );

    response.fold((error) {
      Get.rawSnackbar(
        title: 'SMS not verified',
        message: error.message,
        backgroundColor: AppColors.red,
      );
    }, (result) async {
      Get.rawSnackbar(message: 'SMS verified');
      _stopTimer();
      await _verifyPin(token);
    });

    loading = false;
  }

  Future<void> _verifyPin(String token) async {
    await repository.saveSessionId(token);
    var pinCorrect = await Get.toNamed(
      Routes.LOCAL_AUTH,
      arguments: PinMode.check,
    );
    if (pinCorrect ?? false) {
      Get.offAllNamed(Routes.ROOT);
    } else {
      await repository.logout();
      Get.rawSnackbar(
        message: 'msg_pin_wrong'.tr,
        backgroundColor: AppColors.red,
      );
    }
  }

  _animateToPage(int page) {
    WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
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
