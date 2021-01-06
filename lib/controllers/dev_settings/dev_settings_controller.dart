import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/services/api/api_service.dart';
import 'package:antares_wallet/common/common.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:meta/meta.dart';
import 'package:package_info/package_info.dart';
import 'package:share/share.dart';

class DevSettingsController extends GetxController {
  static DevSettingsController get con => Get.find();

  DevSettingsController({
    @required this.apiService,
    @required this.storage,
  });
  final ApiService apiService;
  final GetStorage storage;

  final appVersion = ''.obs;

  String _apiToken = '';
  String get token => _apiToken;

  List<String> get urlList => apiService.apiUrls;

  String get defaultUrl => apiService.defaultUrl;

  @override
  void onInit() {
    _apiToken = storage.read(AppStorageKeys.token) ?? '';
    _getAppVersionString().then((String version) => appVersion.value = version);
    super.onInit();
  }

  void updateBaseUrl(String url) =>
      apiService.update(url: url).whenComplete(() => update());

  void shareToken() => Share.share(token);

  void showLogs() => AppLog.showConsole();

  Future<String> _getAppVersionString() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String version = packageInfo.version;
    String buildNumber = packageInfo.buildNumber;
    return 'v$version ($buildNumber)';
  }
}
