import 'dart:async';
import 'dart:convert';

import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/domain/repositories/local_auth_repository.dart';
import 'package:antares_wallet/app/domain/repositories/session_repository.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  static RegisterController get con => Get.find();

  final ISessionRepository sessionRepo;
  final ILocalAuthRepository localAuthRepo;
  RegisterController({
    @required this.sessionRepo,
    @required this.localAuthRepo,
  });

  final pageViewController = PageController(initialPage: 0);

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

  final countries = <Country>[].obs;

  // token
  String token = '';

  // email verification
  String emailValue = '';
  String emailCodeValue = '';

  // additional profile setup
  final countryController = TextEditingController();
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
  void onReady() {
    _fetchCountry();
    super.onReady();
  }

  @override
  Future<void> onClose() async {
    _stopTimer();
    super.onClose();
  }

  void _startTimer() {
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

  Future<void> proceed() async {
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
        loading = false;
        break;
    }
  }

  Future<bool> back() async {
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
    return false;
  }

  Future<void> proceedEmail() async {
    if (emailValue.nullOrEmpty || !emailValue.isEmail) return;

    if (!isEmailCodeWaiting) {
      final response = await sessionRepo.sendVerificationEmail(
        email: emailValue,
      );
      response.fold((error) {
        AppLog.logger.e(error.toProto3Json());
        Get.snackbar(
          error.code.toString(),
          error.message,
          backgroundColor: AppColors.red,
          colorText: AppColors.primary,
        );
        _stopTimer();
      }, (result) async {
        if (result != null) {
          token = result;
          Get.snackbar(null, 'Code sent');
          await _animateToPage(1);
          isEmailCodeWaiting = true;
          _startTimer();
        }
      });
    } else {
      await _animateToPage(1);
    }
  }

  Future<void> _fetchCountry() async {
    loading = true;

    final response = await sessionRepo.getCountryPhoneCodes();
    response.fold(
      (error) {
        AppLog.logger.e(error.toProto3Json());
        Get.snackbar(
          error.code.toString(),
          error.message,
          backgroundColor: AppColors.red,
          colorText: AppColors.primary,
        );
      },
      (result) => countries.assignAll(result.countriesList),
    );

    loading = false;
  }

  Future<void> _proceedEmailCode() async {
    if (emailCodeValue.nullOrEmpty) {
      return;
    }

    final response = await sessionRepo.verifyEmail(
      email: emailValue,
      code: emailCodeValue,
      token: token,
    );
    response.fold(
      (error) {
        AppLog.logger.e(error.toProto3Json());
        Get.snackbar(
          'Code not verified',
          error.toProto3Json(),
          backgroundColor: AppColors.red,
          colorText: AppColors.primary,
        );
      },
      (result) async {
        if (result) {
          Get.snackbar(
            'Success!',
            'Code verified',
            backgroundColor: AppColors.green,
          );
          _stopTimer();
          await _animateToPage(2);
        }
      },
    );
  }

  Future<void> _proceedAdditionalData() async {
    if (fullNameValue.nullOrEmpty ||
        fullNameValue.length < 4 ||
        countryController.text.nullOrEmpty) {
      return;
    }
    await _animateToPage(3);
  }

  Future<void> _proceedPhone() async {
    if (phoneValue.nullOrEmpty) return;

    if (!isSmsWaiting) {
      final response = await sessionRepo.sendVerificationSms(
        phone: phonePrefix + phoneValue,
        token: token,
      );
      response.fold(
        (error) {
          AppLog.logger.e(error.toProto3Json());
          Get.snackbar(
            'Phone not accepted',
            error.toProto3Json(),
            backgroundColor: AppColors.red,
            colorText: AppColors.primary,
          );
          _stopTimer();
        },
        (result) async {
          if (result) {
            Get.snackbar(null, 'Sms sent');
            await _animateToPage(4);
            isSmsWaiting = true;
            _startTimer();
          }
        },
      );
    } else {
      await _animateToPage(4);
    }
  }

  Future<void> _proceedPhoneSms() async {
    if (smsCode.nullOrEmpty) return;

    final response = await sessionRepo.verifyPhone(
      phone: phonePrefix + phoneValue,
      code: smsCode,
      token: token,
    );
    response.fold(
      (error) {
        AppLog.logger.e(error.toProto3Json());
        Get.snackbar(
          'Sms not verified',
          error.toProto3Json(),
          backgroundColor: AppColors.red,
          colorText: AppColors.primary,
        );
      },
      (result) async {
        if (result) {
          Get.snackbar(null, 'Sms verified', backgroundColor: AppColors.green);
          _stopTimer();
          await _animateToPage(5);
        }
      },
    );
  }

  Future<void> _proceedPassword() async {
    var pinCreated = await Get.toNamed(
      Routes.LOCAL_AUTH,
      arguments: PinMode.create,
    );
    if (pinCreated ?? false) {
      Get.toNamed(Routes.REGISTER_RESULT);
    } else {
      Get.snackbar(
        null,
        'msg_pin_create_fail'.tr,
        backgroundColor: AppColors.red,
        colorText: AppColors.primary,
      );
    }

    List<int> utf8Password = utf8.encode(passwordValue);
    String shaPassword = sha256.convert(utf8Password).toString();
    String pinCode = await localAuthRepo.getPIN();
    String phone = phonePrefix + phoneValue;
    String countryIso3code = countryValue.id;

    final response = await sessionRepo.register(
      fullName: fullNameValue,
      email: emailValue,
      phone: phone,
      password: shaPassword,
      hint: passwordHintValue,
      countryIso3Code: countryIso3code,
      affiliateCode: affiliateCodeValue,
      pin: pinCode,
      token: token,
      publicKey: '1111',
    );
    response.fold(
      (error) {
        AppLog.logger.e(error.toProto3Json());
        Get.snackbar(
          'Registration failed',
          error.toProto3Json(),
          backgroundColor: AppColors.red,
          colorText: AppColors.primary,
        );
        Get.back();
      },
      (result) {
        if (result != null) {
          Get.offAllNamed(Routes.ROOT);
        } else {
          Get.snackbar(
            null,
            'Registration failed',
            backgroundColor: AppColors.red,
            colorText: AppColors.primary,
          );
          Get.back();
        }
      },
    );
  }

  Future<void> _animateToPage(int page) async {
    WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
    int currentPage = pageViewController.page.toInt();
    await pageViewController.animateToPage(
      page,
      duration: Get.defaultTransitionDuration,
      curve: page > currentPage ? Curves.easeInCubic : Curves.easeOutCubic,
    );
  }

  void _stopTimer() {
    _codeTimer?.cancel();
    isEmailCodeWaiting = false;
    isSmsWaiting = false;
  }
}
