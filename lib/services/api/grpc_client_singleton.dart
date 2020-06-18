import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GrpcSingleton {
  final ClientChannel client = ClientChannel(
    "antares-api-dev.lykkex.net",
    port: 443,
    // options: ChannelOptions(
    //   credentials: ChannelCredentials.secure(
    //     authority:
    //         'Bearer 3af8e60ee8c04273ab4c5b3851b6c2e1ca7d2a29df7a464bb98169e99c16dba6',
    //   ),
    // ),
  );
}
