import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/services/api/api_service.dart';
import 'package:antares_wallet/app/data/services/push_service.dart';
import 'package:antares_wallet/app/domain/repositories/session_repository.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:package_info/package_info.dart';
import 'package:share/share.dart';

class DevSettingsController extends GetxController {
  static DevSettingsController get con => Get.find();

  final ApiService apiService;
  final PushService pushService;
  final ISessionRepository sessionRepo;
  DevSettingsController({
    @required this.apiService,
    @required this.pushService,
    @required this.sessionRepo,
  });

  final urlList = <String>[].obs;
  final selectedUrl = ''.obs;
  final appVersion = ''.obs;
  final apiToken = ''.obs;
  final fcmToken = ''.obs;

  @override
  void onInit() {
    apiService.getDefaultUrl().then((value) {
      selectedUrl(value);
      urlList(apiService.apiUrls);
    });

    sessionRepo.getSessionId().then(apiToken);
    fcmToken(pushService.fcmToken);

    _getAppVersionString().then(appVersion);

    super.onInit();
  }

  void updateBaseUrl(String url) =>
      apiService.update(url: url).whenComplete(() => selectedUrl(url));

  void shareApiToken() => Share.share(apiToken.value);

  void shareFcmToken() => Share.share(fcmToken.value);

  void showLogs() => AppLog.showConsole();

  Future<String> _getAppVersionString() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String version = packageInfo.version;
    String buildNumber = packageInfo.buildNumber;
    return 'v$version ($buildNumber)';
  }
}
