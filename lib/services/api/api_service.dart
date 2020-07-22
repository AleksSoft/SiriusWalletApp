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
          'Bearer 2e76e59d3c2e415897719de0ff12129db794d467f7be4d039ae5579f10fb6459',
    },
  );

  static final ApiServiceClient client = ApiServiceClient(
    ApiService.channel,
    options: ApiService.secureOptions,
  );
}
