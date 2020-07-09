import 'package:antares_wallet/services/api/grpc_client_singleton.dart';
import 'package:antares_wallet/src/generated/isalive.pbgrpc.dart';

class IsAliveService {
  Future<IsAliveResponce> check() async {
    var client = MonitoringClient(GrpcSingleton.client);
    return await client.isAlive(IsAliveRequest());
  }
}
