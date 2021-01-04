import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/repository/local_auth_repository.dart';
import 'package:antares_wallet/app/data/repository/session_repository.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:meta/meta.dart';

enum PinMode { check, create, update }

enum LocalAuthState { checkPIN, createPIN, updatePIN }

class LocalAuthController extends GetxController {
  static LocalAuthController get con => Get.find();

  final ILocalAuthRepository repository;
  final GetStorage storage;
  LocalAuthController({
    @required this.repository,
    @required this.storage,
  });

  final showBack = false.obs;
  final loading = false.obs;
  final localAuthType = LocalAuthType.none.obs;
  final _state = LocalAuthState.checkPIN.obs;
  final _pinValue = ''.obs;

  PinMode _mode = PinMode.check;
  String _prevPIN = '';

  int get fieldsCount => 4;
  String get header => _getViewTitle();
  String get pinValue => _pinValue.value;
  bool get showLocalAuth => localAuthType.value != LocalAuthType.none;
  bool get isFingerprint => localAuthType.value == LocalAuthType.fingerprint;
  bool get isFace => localAuthType.value == LocalAuthType.face;

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
    _mode = mode ?? PinMode.check;
    showBack(_mode != PinMode.check);

    switch (_mode) {
      case PinMode.create:
        _state(LocalAuthState.createPIN);
        break;
      case PinMode.update:
        _state(LocalAuthState.updatePIN);
        break;
      case PinMode.check:
      default:
        _state(LocalAuthState.checkPIN);
        break;
    }

    repository
        .getLocalAuthType()
        .then(localAuthType)
        .whenComplete(() => tryToggleLocalAuth());
  }

  void tryToggleLocalAuth() {
    if (showLocalAuth) {
      loading(true);
      repository.authenticate('msg_local_auth'.tr).then((authorized) {
        if (authorized) {
          _pinValue(storage.read<String>(AppStorageKeys.pinCode));
          _submitPIN();
        }
      }).whenComplete(() => loading(false));
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
      case LocalAuthState.createPIN:
        _createPIN();
        break;
      case LocalAuthState.updatePIN:
        _saveNewPIN();
        break;
      case LocalAuthState.checkPIN:
      default:
        _submitPIN();
        break;
    }
  }

  void _createPIN() {
    _prevPIN = pinValue;
    _pinValue('');
    _state(LocalAuthState.updatePIN);
  }

  Future<void> _submitPIN() async {
    loading(true);
    String token = storage.read(AppStorageKeys.token);
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
          _state(LocalAuthState.checkPIN);
          _pinValue('');
          Get.back();
        },
      );
    }
    loading(false);
  }

  Future<void> _saveNewPIN() async {
    if (_prevPIN == pinValue) {
      await storage.write(AppStorageKeys.pinCode, pinValue);
      navigateBack(true);
    } else {
      Get.defaultDialog(
        title: 'PIN\'s are not equal',
        middleText: 'Try again',
        buttonColor: AppColors.dark,
        confirmTextColor: AppColors.primary,
        onConfirm: () {
          _state(LocalAuthState.createPIN);
          _pinValue('');
          Get.back();
        },
      );
    }
  }

  String _getViewTitle() {
    switch (_state.value) {
      case LocalAuthState.createPIN:
        return 'Create new PIN';
      case LocalAuthState.updatePIN:
        return 'Repeat PIN';
      case LocalAuthState.checkPIN:
      default:
        return 'Enter PIN';
    }
  }

  void navigateBack(bool result) => Get.back<bool>(result: result);
}
