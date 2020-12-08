import 'dart:async';
import 'dart:convert';

import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/utils/gesture_utils.dart';
import 'package:antares_wallet/repositories/session_repository.dart';
import 'package:antares_wallet/services/api/api_service.dart';
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

  final _storage = GetStorage();

  final pageViewController = PageController(initialPage: 5);

  Timer _codeTimer;

  final _loading = false.obs;
  bool get loading => this._loading.value;
  set loading(bool value) => this._loading.value = value;

  final hidePassword = true.obs;

  final _isCodeWaiting = false.obs;
  bool get isEmailCodeWaiting => this._isCodeWaiting.value;
  set isEmailCodeWaiting(bool value) => this._isCodeWaiting.value = value;

  final _isSmsWaiting = false.obs;
  bool get isSmsWaiting => this._isSmsWaiting.value;
  set isSmsWaiting(bool value) => this._isSmsWaiting.value = value;

  final _timerValue = DateTime.fromMillisecondsSinceEpoch(60 * 1000).obs;
  DateTime get timerValue => this._timerValue.value;
  set timerValue(DateTime value) => this._timerValue.value = value;

  final countries = List<Country>().obs;

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
    countries.assignAll(
        (await SessionRepository.getCountryPhoneCodes()).countriesList);
    loading = false;
  }

  @override
  Future<void> onClose() async {
    _stopTimer();
    super.onClose();
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
      Get.defaultDialog(
        title: 'Cancel',
        middleText: 'Are you sure to cancel registration?',
        buttonColor: AppColors.red,
        onConfirm: () {
          GestureUtils.unfocus();
          Get.back(closeOverlays: true);
        },
      );
    } else {
      Get.back();
    }
  }

  proceedEmail() async {
    if (emailValue.isNullOrBlank || !emailValue.isEmail) {
      return;
    }
    if (!isEmailCodeWaiting) {
      token = await SessionRepository.sendVerificationEmail(email: emailValue);
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
    if (emailCodeValue.isNullOrBlank) {
      return;
    }
    if (await SessionRepository.verifyEmail(
        email: emailValue, code: emailCodeValue, token: token)) {
      Get.rawSnackbar(message: 'Code verified');
      _stopTimer();
      _animateToPage(2);
    } else {
      Get.rawSnackbar(message: 'Code not verified');
    }
  }

  _proceedAdditionalData() async {
    if (fullNameValue.isNullOrBlank ||
        fullNameValue.length < 4 ||
        countryController.text.isNullOrBlank) {
      return;
    }
    await _animateToPage(3);
  }

  _proceedPhone() async {
    if (phoneValue.isNullOrBlank) {
      return;
    }
    if (!isSmsWaiting) {
      if (await SessionRepository.sendVerificationSms(
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
    if (smsCode.isNullOrBlank) {
      return;
    }
    if (await SessionRepository.verifyPhone(
        phone: phonePrefix + phoneValue, code: smsCode, token: token)) {
      Get.rawSnackbar(message: 'Sms verified');
      _stopTimer();
      _animateToPage(5);
    } else {
      Get.rawSnackbar(message: 'Sms not verified');
    }
  }

  _proceedPassword() async {
    await Get.to(LocalAuthPage(
      isCreatePin: true,
      checkLocalAuth: false,
      isCloseVisible: false,
    ));
    Get.to(RegisterResultPage(), fullscreenDialog: true);

    List<int> utf8Password = utf8.encode(passwordValue);
    String shaPassword = sha256.convert(utf8Password).toString();
    String pinCode = _storage.read(AppStorageKeys.pinCode);

    final registerPayload = await SessionRepository.register(
      fullName: fullNameValue,
      email: emailValue,
      phone: phonePrefix + phoneValue,
      password: shaPassword,
      hint: passwordHintValue,
      countryIso3Code: countryValue.id,
      affiliateCode: affiliateCodeValue,
      pin: pinCode,
      token: token,
      publicKey: '1111',
    );
    if (registerPayload != null) {
      await _storage.write(AppStorageKeys.token, registerPayload.sessionId);
      await Get.find<ApiService>().update();
      Get.offAllNamed(RootPage.route);
    } else {
      Get.rawSnackbar(message: 'Registration failed!');
      await _storage.erase();
      Get.back();
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

  _stopTimer() {
    _codeTimer?.cancel();
    isEmailCodeWaiting = false;
    isSmsWaiting = false;
  }
}
