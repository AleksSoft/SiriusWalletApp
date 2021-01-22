import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pbgrpc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

class ApiService {
  static final timeoutDuration = const Duration(seconds: 30);

  List<String> apiUrls = [];

  final FlutterSecureStorage storage;
  ApiService({@required this.storage});

  ApiServiceClient _clientSecure;
  ApiServiceClient _client;

  ApiServiceClient get clientSecure => this._clientSecure;
  ApiServiceClient get client => this._client;

  Future<String> getDefaultUrl() async {
    String url = await storage.read(key: AppStorageKeys.baseUrl);
    return url == null || url.isBlank ? apiUrls[0] : url;
  }

  Future<ApiService> init(AppConfig appConfig) async {
    // init urls from config
    apiUrls = appConfig.apiUrls;
    AppLog.logger.i('API urls:\n$apiUrls');

    // update services
    await update();
    return this;
  }

  /// Updates grpc clients with given [url]
  ///
  /// If [url] is null the stored value is used
  Future<void> update({String url}) async {
    if (url == null || url.isBlank) url = await getDefaultUrl();
    await storage.write(key: AppStorageKeys.baseUrl, value: url);
    AppLog.logger.i('Base Url: $url');

    final channel = ClientChannel(url, port: 443);

    final token = await storage.read(key: AppStorageKeys.token);

    _clientSecure = ApiServiceClient(
      channel,
      options: CallOptions(
        metadata: {'Authorization': 'Bearer $token'},
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
