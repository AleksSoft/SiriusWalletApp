import 'package:grpc/grpc.dart';

class GrpcSingleton {
  static final ClientChannel client = ClientChannel(
    "antares-api-dev.lykkex.net",
    port: 443,
  );

  static final CallOptions secureOptions = CallOptions(
    metadata: {
      'Authorization':
          'Bearer 3af8e60ee8c04273ab4c5b3851b6c2e1ca7d2a29df7a464bb98169e99c16dba6',
    },
  );
}
