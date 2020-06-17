import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GrpcSingleton {
  final ClientChannel client = ClientChannel(
    "antares-api-dev.lykkex.net",
    port: 443,
    // options: ChannelOptions(
    //   credentials: ChannelCredentials.insecure(),
    // ),
  );
}
