import 'dart:async';

import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class PricesController extends GetxController {
  static PricesController get con => Get.find();
  static final _api = Get.find<ApiService>();

  final Stream<PriceUpdate> pricesStream =
      _api.client.getPriceUpdates(PriceUpdatesRequest()).asBroadcastStream();
  final currentPrices = List<PriceUpdate>().obs;

  StreamSubscription<PriceUpdate> _subscription;

  @override
  void onInit() async {
    currentPrices.addAll((await _api.client.getPrices(PricesRequest())).prices);
    _subscription = pricesStream.listen((value) => _updatePrice(value));
    super.onInit();
  }

  @override
  void onClose() async {
    if (_subscription != null) await _subscription.cancel();
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
