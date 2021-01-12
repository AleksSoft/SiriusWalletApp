import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/services/api/api_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:meta/meta.dart';
import 'package:package_info/package_info.dart';
import 'package:share/share.dart';

class DevSettingsController extends GetxController {
  static DevSettingsController get con => Get.find();

  final ApiService apiService;
  DevSettingsController({@required this.apiService});

  final appVersion = ''.obs;
  final selectedUrl = ''.obs;
  final urlList = <String>[].obs;

  final _apiToken = ''.val(AppStorageKeys.token);
  final _fcmToken = ''.val(AppStorageKeys.fcmToken);

  String get apiToken => _apiToken.val;
  String get fcmToken => _fcmToken.val;

  @override
  void onInit() {
    urlList(apiService.apiUrls);
    selectedUrl(apiService.defaultUrl);
    _getAppVersionString().then(appVersion);
    super.onInit();
  }

  void updateBaseUrl(String url) =>
      apiService.update(url: url).whenComplete(() => selectedUrl(url));

  void shareApiToken() => Share.share(apiToken);

  void shareFcmToken() => Share.share(fcmToken);

  void showLogs() => AppLog.showConsole();

  Future<String> _getAppVersionString() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String version = packageInfo.version;
    String buildNumber = packageInfo.buildNumber;
    return 'v$version ($buildNumber)';
  }
}
