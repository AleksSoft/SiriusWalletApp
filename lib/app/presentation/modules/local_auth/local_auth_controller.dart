import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/core/utils/app_log.dart';
import 'package:antares_wallet/app/domain/repositories/local_auth_repository.dart';
import 'package:antares_wallet/app/domain/repositories/session_repository.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class LocalAuthController extends GetxController {
  static LocalAuthController get con => Get.find();

  final showBack = false.obs;
  final loading = false.obs;
  final localAuthType = LocalAuthType.none.obs;
  final _state = LocalAuthState.checkPIN.obs;
  final _pinValue = ''.obs;

  final ILocalAuthRepository localAuthRepo;
  final ISessionRepository sessionRepo;
  final PinMode mode;
  LocalAuthController({
    @required this.localAuthRepo,
    @required this.sessionRepo,
    this.mode = PinMode.check,
  });

  String _prevPIN = '';

  int get fieldsCount => 4;
  String get header => _getViewTitle();
  String get pinValue => _pinValue.value;
  bool get showLocalAuth =>
      localAuthType.value != LocalAuthType.none &&
      mode != PinMode.check_initial;
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
    initWithMode();
    super.onReady();
  }

  void initWithMode() {
    showBack(mode != PinMode.check || mode != PinMode.check_initial);

    switch (mode) {
      case PinMode.create:
        _state(LocalAuthState.createPIN);
        break;
      case PinMode.update:
        _state(LocalAuthState.updatePIN);
        break;
      case PinMode.check:
      case PinMode.check_initial:
      default:
        _state(LocalAuthState.checkPIN);
        break;
    }

    localAuthRepo
        .getLocalAuthType()
        .then((type) => localAuthType(type))
        .whenComplete(() => tryToggleLocalAuth());
  }

  void tryToggleLocalAuth() {
    if (showLocalAuth) {
      loading(true);
      localAuthRepo.authenticate('msg_local_auth'.tr).then((authorized) {
        if (authorized) {
          _pinValue(localAuthRepo.getPIN());
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

    final response = await sessionRepo.checkPin(pin: pinValue);

    response.fold((error) {
      AppLog.logger.e(error.toProto3Json());
      Get.snackbar(
        'Error ${error.code}',
        error.message,
        backgroundColor: AppColors.red,
        snackbarStatus: (status) {
          if (status == SnackbarStatus.CLOSING) _navigateBack(false);
        },
      );
    }, (result) {
      if (result ?? false) {
        _navigateBack(true);
      } else {
        Get.snackbar(
          'Wrong PIN',
          'Try again',
          backgroundColor: AppColors.red,
        );
        _state(LocalAuthState.checkPIN);
        _pinValue('');
      }
    });

    loading(false);
  }

  Future<void> _saveNewPIN() async {
    if (_prevPIN == pinValue) {
      localAuthRepo.savePIN(pinValue).whenComplete(() => _navigateBack(true));
    } else {
      Get.snackbar(
        'PIN\'s are not equal',
        'Try again',
        backgroundColor: AppColors.red,
      );
      _state(LocalAuthState.createPIN);
      _pinValue('');
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

  void _navigateBack(bool result) => Get.back<bool>(
        result: result,
        closeOverlays: true,
      );
}
