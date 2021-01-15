import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/domain/repositories/local_auth_repository.dart';
import 'package:antares_wallet/app/domain/repositories/session_repository.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class LocalAuthController extends GetxController {
  static LocalAuthController get con => Get.find();

  final ILocalAuthRepository localAuthRepo;
  final ISessionRepository sessionRepo;
  LocalAuthController({
    @required this.localAuthRepo,
    @required this.sessionRepo,
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

    localAuthRepo
        .getLocalAuthType()
        .then(localAuthType)
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
      Get.rawSnackbar(
        title: 'Error ${error.code}',
        message: error.message,
        backgroundColor: AppColors.red,
        snackbarStatus: (status) {
          if (status == SnackbarStatus.CLOSED) _navigateBack(false);
        },
      );
    }, (result) {
      if (result) {
        _navigateBack(true);
      } else {
        Get.rawSnackbar(
          title: 'Wrong PIN',
          message: 'Try again',
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
      Get.rawSnackbar(
        title: 'PIN\'s are not equal',
        message: 'Try again',
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

  void _navigateBack(bool result) => Get.back<bool>(result: result);
}
