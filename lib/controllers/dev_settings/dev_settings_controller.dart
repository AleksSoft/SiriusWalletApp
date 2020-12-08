import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/utils/utils.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:share/share.dart';

class DevSettingsController extends GetxController {
  static DevSettingsController get con => Get.find();

  final _api = Get.find<ApiService>();
  final _storage = GetStorage();

  String _apiToken = '';
  String get token => _apiToken;

  List<String> get urlList => _api.apiUrls;

  String get defaultUrl => _api.defaultUrl;

  @override
  void onInit() {
    _apiToken = _storage.read(AppStorageKeys.token) ?? '';
    super.onInit();
  }

  void updateBaseUrl(String url) =>
      _api.update(url: url).whenComplete(() => update());

  void shareToken() => Share.share(token);

  void showLogs() => AppLog.showConsole();
}
