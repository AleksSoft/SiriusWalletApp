import 'dart:async';

import 'package:antares_wallet/app/core/common/common.dart';
import 'package:antares_wallet/app/core/error/app_error_handler.dart';
import 'package:antares_wallet/app/core/routes/app_pages.dart';
import 'package:antares_wallet/app/domain/repositories/session_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with AppErrorHandler {
  static LoginController get con => Get.find();

  final ISessionRepository sessionRepo;
  LoginController({@required this.sessionRepo});

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
    if (emailValue.nullOrEmpty ||
        !emailValue.isEmail ||
        passwordValue.isEmpty) {
      return;
    }

    loading = true;

    final response = await sessionRepo.login(
      email: emailValue,
      password: passwordValue,
      publicKey: '1111',
    );

    response.fold(
      defaultError,
      (result) async {
        if (result != null) {
          token = result.sessionId;
          await requestSmsVerification();
        } else {
          Get.snackbar(
            null,
            'Login failed',
            backgroundColor: AppColors.red,
          );
        }
      },
    );

    loading = false;
  }

  Future<void> requestSmsVerification() async {
    if (isSmsWaiting) {
      _animateToPage(1);
      return;
    }

    final response = await sessionRepo.sendLoginSms(sessionId: token);

    response.fold(
      defaultError,
      (result) {
        Get.snackbar(null, 'SMS sent');
        _animateToPage(1);
        _startTimer();
      },
    );
  }

  Future<void> verifySms() async {
    if (smsCodeValue.nullOrEmpty) return;

    loading = true;

    final response = await sessionRepo.verifyLoginSms(
      sessionId: token,
      code: smsCodeValue,
    );

    response.fold(
      defaultError,
      (result) async {
        Get.snackbar(null, 'SMS verified', backgroundColor: AppColors.green);
        _stopTimer();
        _verifyPin(token);
      },
    );

    loading = false;
  }

  void _verifyPin(String token) =>
      sessionRepo.setSessionId(token).whenComplete(() async {
        final pinCorrect = await Get.toNamed(
          Routes.LOCAL_AUTH,
          arguments: PinMode.check_initial,
        );
        if (pinCorrect ?? false) {
          Get.offAllNamed(Routes.ROOT);
        } else {
          await sessionRepo.logout();
          Get.snackbar(
            null,
            'msg_pin_wrong'.tr,
            backgroundColor: AppColors.red,
            colorText: AppColors.primary,
          );
        }
      });

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
