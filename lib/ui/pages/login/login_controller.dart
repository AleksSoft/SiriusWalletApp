import 'dart:async';

import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/repositories/session_repository.dart';
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

  final _currentBaseUrl = ''.obs;
  String get currentBaseUrl => this._currentBaseUrl.value;
  set currentBaseUrl(String url) {
    if (url != currentBaseUrl) {
      _currentBaseUrl.value = url;
      _storage.write(AppStorageKeys.baseUrl, url);
    }
  }

  @override
  void onInit() {
    currentBaseUrl = Get.find<ApiService>().baseUrl;
    super.onInit();
  }

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
  void onClose() {
    _stopTimer();
    pageViewController?.dispose();
    super.onClose();
  }

  back() {
    pageViewController?.jumpToPage(0);
    emailValue = '';
    passwordValue = '';
    smsCodeValue = '';
    token = '';
    _stopTimer();
    Get.back();
  }

  openRegister() => Get.toNamed(RegisterPage.route);

  signIn() async {
    if (emailValue.isNullOrBlank ||
        !emailValue.isEmail ||
        passwordValue.isEmpty) {
      return;
    }
    loading = true;
    var response = await SessionRepository.login(
      email: emailValue,
      password: passwordValue,
      publicKey: '1111',
    );
    if (response == null) {
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
    if (smsCodeValue.isNullOrBlank) {
      return;
    }
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
    loading = true;
    _storage.write(AppStorageKeys.token, token);
    var pinCorrect = (await Get.toNamed(LocalAuthPage.route)) ?? false;
    if (pinCorrect) {
      Get.offAllNamed(RootPage.route);
    } else {
      _storage.erase().whenComplete(() {
        Get.rawSnackbar(
          message: 'Pin not verified',
          backgroundColor: AppColors.red,
        );
      });
    }
    loading = false;
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
