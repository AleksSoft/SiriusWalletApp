import 'dart:async';

import 'package:antares_wallet/services/repositories/register_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/local_auth/local_auth_page.dart';
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
  bool get isEmailCodeWaiting => this._isCodeWaiting.value;
  set isEmailCodeWaiting(bool value) => this._isCodeWaiting.value = value;

  final _timerValue = DateTime.fromMillisecondsSinceEpoch(60 * 1000).obs;
  DateTime get timerValue => this._timerValue.value;
  set timerValue(DateTime value) => this._timerValue.value = value;

  final _countries = List<Country>().obs;
  List<Country> get countries => this._countries.value;
  set countries(List<Country> value) => this._countries.value = value;

  // token
  String token = '';

  // email verification
  String emailValue = '';
  String emailCodeValue = '';

  // additional profile setup
  final TextEditingController countryController = TextEditingController();
  String fullNameValue = '';
  Country countryValue = Country();
  String affiliateCode = '';

  // phone setup
  final _phonePrefix = ''.obs;
  String get phonePrefix => this._phonePrefix.value;
  set phonePrefix(String value) => this._phonePrefix.value = value;
  String phoneValue = '';
  String smsCode = '';

  // password setup
  String passwordValue = '';
  String confirmPasswordValue = '';
  String passwordHintValue = '';

  @override
  void onInit() async {
    super.onInit();
    loading = true;
    countries = await RegisterRepository.getCountryPhoneCodes();
    loading = false;
  }

  @override
  void onClose() async {
    _stopTimer();
    super.onClose();
  }

  _startTimer() {
    int seconds = 60;
    _stopTimer();
    isEmailCodeWaiting = true;
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
        return;
      case 3:
        return;
      case 4:
        return;
      case 5:
        _proceedPIN();
        break;
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
    if (!isEmailCodeWaiting || !token.isNullOrBlank) {
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
        email: emailValue, code: emailCodeValue, token: token)) {
      Get.rawSnackbar(message: 'Code verified');
      _animateToPage(2);
    } else {
      Get.rawSnackbar(message: 'Code not verified');
    }
  }

  _proceedPIN() async {
    await Get.toNamed(LocalAuthPage.route);
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
    isEmailCodeWaiting = false;
  }
}
