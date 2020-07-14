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
          'Bearer cb402414257146559cfad425e68a88888764d3868b4b43f99a9caf8f0312e13c',
    },
  );

  static final ApiServiceClient client = ApiServiceClient(
    ApiService.channel,
    options: ApiService.secureOptions,
  );
}
