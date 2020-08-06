import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:grpc/grpc.dart';

class ApiService {
  static final List<String> urls = <String>[
    'antares-api-grpc-dev.lykkex.net',
    'antares-api-grpc-test.lykkex.net',
    null,
  ];
  final _storage = GetStorage();

  ApiServiceClient get clientSecure {
    String url = _storage.read(AppStorageKeys.baseUrl);
    String token = _storage.read(AppStorageKeys.token);
    return ApiServiceClient(
      ClientChannel(url, port: 443),
      options: CallOptions(metadata: {'Authorization': 'Bearer $token'}),
    );
  }

  ApiServiceClient get client {
    String url = urls[0];
    if (_storage.hasData(AppStorageKeys.baseUrl)) {
      url = _storage.read(AppStorageKeys.baseUrl);
    } else {
      _storage.write(AppStorageKeys.baseUrl, url);
    }
    return ApiServiceClient(ClientChannel(url, port: 443));
  }
}
