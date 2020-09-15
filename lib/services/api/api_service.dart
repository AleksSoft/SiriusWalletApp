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
  final _storage = Get.find<LocalStorageInterface>();

  ApiServiceClient get clientSecure {
    String token = _storage.getString(AppStorageKeys.token);
    return ApiServiceClient(
      ClientChannel(baseUrl, port: 443),
      options: CallOptions(metadata: {'Authorization': 'Bearer $token'}),
    );
  }

  ApiServiceClient get client {
    return ApiServiceClient(ClientChannel(baseUrl, port: 443));
  }

  String get baseUrl {
    String url = urls[0];
    if (_storage.containsKey(AppStorageKeys.baseUrl)) {
      url = _storage.getString(AppStorageKeys.baseUrl);
    } else {
      _storage.setString(AppStorageKeys.baseUrl, url);
    }
    return url;
  }
}
