import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/ui/pages/root/root_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  static LoginController get con => Get.find();
  final _storage = GetStorage();

  static final List<String> urls = <String>[
    'antares-api-grpc-dev.lykkex.net',
    'antares-api-grpc-test.lykkex.net',
    null,
  ];

  final _loading = false.obs;
  get loading => this._loading.value;
  set loading(value) => this._loading.value = value;

  final _urlDropValue = urls[0].obs;
  String get urlDropValue => this._urlDropValue.value;
  set urlDropValue(String value) => this._urlDropValue.value = value;

  final _cusomUrl = ''.obs;
  String get customUrl => this._cusomUrl.value;
  set customUrl(String value) => this._cusomUrl.value = value;

  final _tokenValue = ''.obs;
  get tokenValue => this._tokenValue.value;
  set tokenValue(value) => this._tokenValue.value = value;

  bool get loginAllowed {
    if (urlDropValue == null) {
      return !GetUtils.isNullOrBlank(customUrl) &&
          !GetUtils.isNullOrBlank(tokenValue);
    } else {
      return !GetUtils.isNullOrBlank(tokenValue);
    }
  }

  @override
  void onReady() async {
    super.onReady();
    if (_storage.hasData(AppStorageKeys.token) &&
        _storage.hasData(AppStorageKeys.baseUrl)) {
      _login();
    }
  }

  saveTokenAndLogin() async {
    _storage.write(AppStorageKeys.token, tokenValue);
    _storage.write(AppStorageKeys.baseUrl, urlDropValue);
    await _login();
  }

  _login() async {
    loading = true;
    try {
      // TODO: replace with actual login logics
      await Get.find<ApiService>().client.getAppSettings(Empty());
      Get.offAllNamed(RootPage.route);
    } catch (e) {
      _storage.remove(AppStorageKeys.token);
      _storage.remove(AppStorageKeys.baseUrl);
      Future.delayed(Duration()).then(
        (_) => Get.defaultDialog(
          title: 'Error',
          middleText: e.message,
          onConfirm: () => Get.back(),
        ),
      );
    }
    loading = false;
  }
}
