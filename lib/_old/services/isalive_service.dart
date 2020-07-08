import 'package:antares_wallet/app/locator.dart';
import 'package:antares_wallet/services/api/grpc_client_singleton.dart';
import 'package:antares_wallet/src/generated/isalive.pb.dart';
import 'package:antares_wallet/src/generated/isalive.pbgrpc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class IsAliveService {
  final grpc = locator<GrpcSingleton>();

  Future<IsAliveResponce> check() async {
    var client = MonitoringClient(grpc.client);
    return await client.isAlive(IsAliveRequest());
  }
}
