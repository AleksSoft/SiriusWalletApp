import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pbgrpc.dart';
import 'package:antares_wallet/common/common.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:grpc/grpc.dart';

class ApiService {
  static final timeoutDuration = const Duration(seconds: 30);

  List<String> apiUrls = [];

  final _storage = GetStorage();

  ApiServiceClient _clientSecure;
  ApiServiceClient _client;

  ApiServiceClient get clientSecure => this._clientSecure;
  ApiServiceClient get client => this._client;

  String get defaultUrl {
    String url = _storage.read(AppStorageKeys.baseUrl);
    return url.isNullOrBlank ? apiUrls[0] : url;
  }

  Future<ApiService> init(AppConfig appConfig) async {
    // init urls from config
    apiUrls = appConfig.apiUrls;
    AppLog.loggerNoStack.i('API urls:\n$apiUrls');

    // update services
    await update();
    return this;
  }

  /// Updates grpc clients with given [url]
  ///
  /// If [url] is null the stored value is used
  Future<void> update({String url}) async {
    if (url.isNullOrBlank) url = defaultUrl;
    await _storage.write(AppStorageKeys.baseUrl, url);
    AppLog.loggerNoStack.i('Base Url: $url');

    final channel = ClientChannel(url, port: 443);

    String authToken = 'Bearer ${_storage.read(AppStorageKeys.token)}';

    _clientSecure = ApiServiceClient(
      channel,
      options: CallOptions(
        metadata: {'Authorization': authToken},
        timeout: timeoutDuration,
      ),
    );

    _client = ApiServiceClient(
      channel,
      options: CallOptions(
        timeout: timeoutDuration,
      ),
    );
  }
}
