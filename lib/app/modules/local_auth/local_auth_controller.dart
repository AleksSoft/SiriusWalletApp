import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/repositories/session_repository.dart';
import 'package:antares_wallet/app/modules/local_auth/local_auth_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

enum PinMode { CHECK, CREATE, UPDATE }

enum LocalAuthState { CHECK_PIN, CREATE_PIN, UPDATE_PIN }

class LocalAuthController extends GetxController {
  static LocalAuthController get con => Get.find();

  final _storage = GetStorage();

  final _state = LocalAuthState.CHECK_PIN.obs;
  final _pinValue = ''.obs;
  final showBack = false.obs;
  final loading = false.obs;
  final showLocalAuth = false.obs;

  PinMode _mode = PinMode.CHECK;
  String _prevPIN = '';

  int get fieldsCount => 4;

  String get header => _getViewTitle();
  String get pinValue => _pinValue.value;

  @override
  void onInit() {
    ever(_pinValue, (pin) {
      if (pin?.length == fieldsCount) submit(pin);
    });
    super.onInit();
  }

  @override
  void onReady() {
    initWithMode(Get.arguments as PinMode);
    super.onReady();
  }

  void initWithMode(PinMode mode) {
    _mode = mode ?? PinMode.CHECK;
    showBack(_mode != PinMode.CHECK);

    switch (_mode) {
      case PinMode.CREATE:
        _state(LocalAuthState.CREATE_PIN);
        break;
      case PinMode.UPDATE:
        _state(LocalAuthState.UPDATE_PIN);
        break;
      case PinMode.CHECK:
      default:
        _state(LocalAuthState.CHECK_PIN);
        break;
    }

    LocalAuthService.canCheckBiometrics.then((canCheck) {
      showLocalAuth(canCheck);
      tryToggleLocalAuth();
    });
  }

  void tryToggleLocalAuth() {
    if (showLocalAuth.value) {
      loading(true);
      LocalAuthService.authenticate().then((authorized) {
        if (authorized) {
          _pinValue(_storage.read<String>(AppStorageKeys.pinCode));
          _submitPIN();
        }
        loading(false);
      });
    }
  }

  void setValue(String val) {
    if (pinValue.length < fieldsCount) {
      _pinValue.value += val;
    }
  }

  void backspace() {
    if (pinValue.length > 0) {
      _pinValue(pinValue.split('').sublist(0, pinValue.length - 1).join(''));
    }
  }

  void submit(String pin) {
    switch (_state.value) {
      case LocalAuthState.CREATE_PIN:
        _createPIN();
        break;
      case LocalAuthState.UPDATE_PIN:
        _saveNewPIN();
        break;
      case LocalAuthState.CHECK_PIN:
      default:
        _submitPIN();
        break;
    }
  }

  void _createPIN() {
    _prevPIN = pinValue;
    _pinValue('');
    _state(LocalAuthState.UPDATE_PIN);
  }

  Future<void> _submitPIN() async {
    loading(true);
    String token = _storage.read(AppStorageKeys.token);
    bool result = await SessionRepository.checkPin(
      sessionId: token,
      pin: pinValue,
    );
    if (result) {
      navigateBack(true);
    } else {
      Get.defaultDialog(
        title: 'Wrong PIN',
        middleText: 'Try again',
        buttonColor: AppColors.dark,
        confirmTextColor: AppColors.primary,
        onConfirm: () {
          _state(LocalAuthState.CHECK_PIN);
          _pinValue('');
          Get.back();
        },
      );
    }
    loading(false);
  }

  Future<void> _saveNewPIN() async {
    if (_prevPIN == pinValue) {
      await _storage.write(AppStorageKeys.pinCode, pinValue);
      navigateBack(true);
    } else {
      Get.defaultDialog(
        title: 'PIN\'s are not equal',
        middleText: 'Try again',
        buttonColor: AppColors.dark,
        confirmTextColor: AppColors.primary,
        onConfirm: () {
          _state(LocalAuthState.CREATE_PIN);
          _pinValue('');
          Get.back();
        },
      );
    }
  }

  String _getViewTitle() {
    switch (_state.value) {
      case LocalAuthState.CREATE_PIN:
        return 'Create new PIN';
      case LocalAuthState.UPDATE_PIN:
        return 'Repeat PIN';
      case LocalAuthState.CHECK_PIN:
      default:
        return 'Enter PIN';
    }
  }

  void navigateBack(bool result) => Get.back<bool>(result: result);
}
