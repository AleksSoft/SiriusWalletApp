import 'dart:async';

import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';

class PriceRepository {
  PricesResponse _currentPrices = PricesResponse.getDefault();

  List<PriceUpdate> get prices => _currentPrices.prices;

  PriceRepository() {
    Timer.periodic(const Duration(minutes: 1), (timer) => _fetchPrices());
  }

  _fetchPrices() async {
    _currentPrices = await ApiService.client.getPrices(PricesRequest());
  }
}
