import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:get/get.dart';

class PortfolioRepository {
  static final _api = Get.find<ApiService>();

  static Future<List<Balance>> getBalances() async {
    try {
      var response = await _api.client.getBalances(Empty());
      return response.payload;
    } catch (e) {
      Future.delayed(Duration()).then(
        (_) => Get.defaultDialog(
          title: 'Error',
          middleText: e.message,
          onConfirm: () => Get.back(),
        ),
      );
      return List();
    }
  }
}
