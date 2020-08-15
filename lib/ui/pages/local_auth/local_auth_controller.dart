import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/services/local_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

enum PinViewState { DEFAULT, CREATE_PIN, REPEAT_PIN }

class LocalAuthController extends GetxController {
  static LocalAuthController get con => Get.find();

  final _box = GetStorage();
  final _localAuthService = Get.find<LocalAuthService>();

  final TextEditingController pinPutController = TextEditingController();
  final FocusNode pinPutFocusNode = FocusNode();

  final _viewState = PinViewState.CREATE_PIN.obs;
  get viewState => this._viewState.value;

  final _pinValue = ''.obs;
  get pinValue => this._pinValue.value;
  set pinValue(value) => this._pinValue.value = value;

  String _prevPIN = '';

  String get header => _getHeaderStr();

  bool _showBack;
  bool get showBack => _showBack;

  int get fieldsCount => 4;

  @override
  void onInit() {
    _showBack = (Get.arguments as bool) ?? false;
    _viewState.value = _box.hasData(AppStorageKeys.pinCode)
        ? PinViewState.DEFAULT
        : PinViewState.CREATE_PIN;
    ever(_pinValue, (pin) {
      if (pin?.length == fieldsCount) {
        submit(pin);
      }
    });
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    pinPutFocusNode.requestFocus();
    toggleLocalAuth();
  }

  void toggleLocalAuth() async {
    if (_box.hasData(AppStorageKeys.pinCode)) {
      bool authorized = await _localAuthService.authenticate();
      if (authorized) navigateBack(true);
    }
  }

  submit(String pin) {
    switch (_viewState.value) {
      case PinViewState.CREATE_PIN:
        _createPIN();
        break;
      case PinViewState.REPEAT_PIN:
        _saveNewPIN();
        break;
      case PinViewState.DEFAULT:
      default:
        _submitPIN();
        break;
    }
  }

  _createPIN() {
    _prevPIN = pinValue;
    pinValue = '';
    pinPutController.clear();
    _viewState.value = PinViewState.REPEAT_PIN;
  }

  _submitPIN() {
    String pinCode = _box.read(AppStorageKeys.pinCode);
    if (pinCode == pinValue) {
      navigateBack(true);
    } else {
      Get.defaultDialog(
        title: 'Wrong PIN',
        middleText: 'Try again',
        buttonColor: Colors.black,
        confirmTextColor: Colors.white,
        onConfirm: () {
          _viewState.value = PinViewState.DEFAULT;
          pinValue = '';
          pinPutController.clear();
          Get.back();
        },
      );
    }
  }

  _saveNewPIN() {
    if (_prevPIN == pinValue) {
      _box.write(AppStorageKeys.pinCode, _prevPIN);
      _submitPIN();
    } else {
      Get.defaultDialog(
        title: 'PIN\'s not equal',
        middleText: 'Try again',
        buttonColor: Colors.black,
        confirmTextColor: Colors.white,
        onConfirm: () {
          _viewState.value = PinViewState.CREATE_PIN;
          pinValue = '';
          pinPutController.clear();
          Get.back();
        },
      );
    }
  }

  String _getHeaderStr() {
    switch (_viewState.value) {
      case PinViewState.CREATE_PIN:
        return 'Create new PIN';
      case PinViewState.REPEAT_PIN:
        return 'Repeat new PIN';
      case PinViewState.DEFAULT:
      default:
        return 'Enter PIN';
    }
  }

  void navigateBack(bool result) => Get.back(result: result);
}
