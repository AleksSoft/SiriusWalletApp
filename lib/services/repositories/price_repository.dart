import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class PriceRepository {
  final ResponseStream<PriceUpdate> pricesStream =
      ApiService.client.getPriceUpdates(PriceUpdatesRequest());

  List<PriceUpdate> _currentPrices = List();

  List<PriceUpdate> get prices => _currentPrices;

  PriceRepository() {
    _loadAllPrices();
    pricesStream.listen((value) => _updatePrice(value));
  }

  _loadAllPrices() async {
    _currentPrices =
        (await ApiService.client.getPrices(PricesRequest())).prices;
  }

  _updatePrice(PriceUpdate priceUpdate) {
    int index = _currentPrices.indexOf(priceUpdate);
    print(priceUpdate);
    if (index < 0) {
      _currentPrices.add(priceUpdate);
    } else {
      _currentPrices[index] = priceUpdate;
    }
  }
}
