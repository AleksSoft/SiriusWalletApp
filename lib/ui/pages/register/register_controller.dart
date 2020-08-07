import 'dart:async';
import 'dart:convert';

import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/services/repositories/register_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/local_auth/local_auth_page.dart';
import 'package:antares_wallet/ui/pages/register/register_result_page.dart';
import 'package:antares_wallet/ui/pages/root/root_page.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RegisterController extends GetxController {
  static RegisterController get con => Get.find();

  final _box = GetStorage();

  final pageViewController = PageController(initialPage: 0);

  Timer _codeTimer;

  final _loading = false.obs;
  bool get loading => this._loading.value;
  set loading(bool value) => this._loading.value = value;

  final _isCodeWaiting = false.obs;
  bool get isEmailCodeWaiting => this._isCodeWaiting.value;
  set isEmailCodeWaiting(bool value) => this._isCodeWaiting.value = value;

  final _isSmsWaiting = false.obs;
  bool get isSmsWaiting => this._isSmsWaiting.value;
  set isSmsWaiting(bool value) => this._isSmsWaiting.value = value;

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
  String affiliateCodeValue = '';

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
        loading = false;
        break;
      case 1:
        await _proceedEmailCode();
        loading = false;
        break;
      case 2:
        await _proceedAdditionalData();
        loading = false;
        return;
      case 3:
        await _proceedPhone();
        loading = false;
        return;
      case 4:
        await _proceedPhoneSms();
        loading = false;
        return;
      case 5:
        await _proceedPassword();
        loading = false;
        break;
      default:
        return;
    }
  }

  back() {
    int currentPage = pageViewController.page.toInt();
    if (currentPage > 0) {
      _animateToPage(currentPage - 1);
    } else {
      Get.back();
    }
  }

  backResult() {}

  proceedEmail() async {
    if (!isEmailCodeWaiting || !token.isNullOrBlank) {
      token = await RegisterRepository.sendVerificationEmail(email: emailValue);
      if (token.isNullOrBlank) {
        Get.rawSnackbar(message: 'Email not verified');
        _stopTimer();
      } else {
        Get.rawSnackbar(message: 'Code sent');
        _animateToPage(1);
        isEmailCodeWaiting = true;
        _startTimer();
      }
    } else {
      _animateToPage(1);
    }
  }

  _proceedEmailCode() async {
    if (await RegisterRepository.verifyEmail(
        email: emailValue, code: emailCodeValue, token: token)) {
      Get.rawSnackbar(message: 'Code verified');
      _animateToPage(2);
    } else {
      Get.rawSnackbar(message: 'Code not verified');
    }
  }

  _proceedAdditionalData() async {
    await _animateToPage(3);
  }

  _proceedPhone() async {
    if (!isSmsWaiting || !token.isNullOrBlank) {
      if (await RegisterRepository.sendVerificationSms(
          phone: phonePrefix + phoneValue, token: token)) {
        Get.rawSnackbar(message: 'Sms sent');
        _animateToPage(4);
        isSmsWaiting = true;
        _startTimer();
      } else {
        Get.rawSnackbar(message: 'Phone not accepted');
        _stopTimer();
      }
    } else {
      _animateToPage(4);
    }
  }

  _proceedPhoneSms() async {
    if (await RegisterRepository.verifyPhone(
        phone: phonePrefix + phoneValue, code: smsCode, token: token)) {
      Get.rawSnackbar(message: 'Sms verified');
      _animateToPage(5);
    } else {
      Get.rawSnackbar(message: 'Sms not verified');
    }
  }

  _proceedPassword() async {
    await Get.toNamed(LocalAuthPage.route);
    Get.to(RegisterResultPage(), fullscreenDialog: true);
    var registerPayload = await RegisterRepository.register(
      fullName: fullNameValue,
      email: emailValue,
      phone: phonePrefix + phoneValue,
      password: sha256.convert(utf8.encode(passwordValue)).toString(),
      hint: passwordHintValue,
      countryIso3Code: countryValue.id,
      affiliateCode: affiliateCodeValue,
      pin: _box.read(AppStorageKeys.pinCode),
      token: token,
      publicKey: '1111',
    );
    if (!registerPayload.isNull) {
      _box.write(AppStorageKeys.token, registerPayload.sessionId);
      Get.offAllNamed(RootPage.route);
    } else {
      Get.rawSnackbar(message: 'Registration failed!');
      await _box.erase();
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

  _stopTimer() {
    _codeTimer?.cancel();
    isEmailCodeWaiting = false;
    isSmsWaiting = false;
  }
}
