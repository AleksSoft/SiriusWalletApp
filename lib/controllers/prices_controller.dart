import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:grpc/grpc.dart';

class PricesController extends GetxController {
  static PricesController get con => Get.find();

  final currentPrices = List<PriceUpdate>().obs;
  ResponseStream<PriceUpdate> pricesStream;

  @override
  void onInit() async {
    currentPrices
        .addAll((await ApiService.client.getPrices(PricesRequest())).prices);
    pricesStream = ApiService.client.getPriceUpdates(PriceUpdatesRequest());
    pricesStream.listen((value) => _updatePrice(value));
    super.onInit();
  }

  @override
  void onClose() {
    pricesStream.cancel();
    super.onClose();
  }

  _updatePrice(PriceUpdate priceUpdate) {
    int index = currentPrices.value.indexOf(priceUpdate);
    if (index < 0) {
      currentPrices.add(priceUpdate);
    } else {
      currentPrices[index] = priceUpdate;
    }
  }
}
