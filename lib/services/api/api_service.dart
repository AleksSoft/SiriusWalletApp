import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:cross_local_storage/cross_local_storage.dart';
import 'package:get/get.dart';
import 'package:grpc/grpc.dart';

class ApiService {
  static final List<String> urls = <String>[
    '10c7a3ce-ce6c-4146-b31a-e1c83fc98e53.lykkex.com',
    'antares-api-grpc-ex.swisschain.info',
    'antares-api-grpc-dev.lykkex.net',
    'antares-api-grpc-test.lykkex.net',
  ];
  static final timeoutDuration = const Duration(seconds: 30);
  final _storage = Get.find<LocalStorageInterface>();

  ApiServiceClient _clientSecure;
  ApiServiceClient _client;

  ApiServiceClient get clientSecure => this._clientSecure;
  ApiServiceClient get client => this._client;

  /// Updates grpc clients with given [url]
  ///
  /// If [url] is null the stored value is used
  Future<void> update({String url}) async {
    if (url.isNullOrBlank) url = defaultUrl;
    await _storage.setString(AppStorageKeys.baseUrl, url);
    print('---- Base Url: $url');

    var channel = ClientChannel(url, port: 443);

    _clientSecure = ApiServiceClient(
      channel,
      options: CallOptions(
        metadata: {
          'Authorization': 'Bearer ${_storage.getString(AppStorageKeys.token)}',
        },
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

  static String get defaultUrl {
    String url = Get.find<LocalStorageInterface>().getString(
      AppStorageKeys.baseUrl,
    );
    return url.isNullOrBlank ? urls[0] : url;
  }
}
