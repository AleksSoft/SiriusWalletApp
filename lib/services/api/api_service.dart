import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class ApiService {
  static final ClientChannel channel = ClientChannel(
    "antares-api-dev.lykkex.net",
    port: 443,
  );

  static final CallOptions secureOptions = CallOptions(
    metadata: {
      'Authorization':
          'Bearer 730c544774654be7a10f2e695b676ceb16a75c5be99a4319948d49a868ece76e',
    },
  );

  static final ApiServiceClient client = ApiServiceClient(
    ApiService.channel,
    options: ApiService.secureOptions,
  );
}
