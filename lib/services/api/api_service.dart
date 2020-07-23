import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class ApiService {
  static final ClientChannel channel = ClientChannel(
    'antares-api-grpc-dev.lykkex.net',
    port: 443,
  );

  static final CallOptions secureOptions = CallOptions(
    metadata: {
      'Authorization':
          'Bearer 6376d15a33134f409c24cb243746ca21cc6f779df7f9485a82ce806b49c856d7',
    },
  );

  static final ApiServiceClient client = ApiServiceClient(
    ApiService.channel,
    options: ApiService.secureOptions,
  );
}
