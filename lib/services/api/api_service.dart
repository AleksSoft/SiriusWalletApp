import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:grpc/grpc.dart';

class ApiService {
  final _storage = GetStorage();

  ApiServiceClient get client {
    String url = _storage.read(AppStorageKeys.baseUrl);
    String token = _storage.read(AppStorageKeys.token);
    return ApiServiceClient(
      ClientChannel(url, port: 443),
      options: CallOptions(metadata: {'Authorization': 'Bearer $token'}),
    );
  }
}
