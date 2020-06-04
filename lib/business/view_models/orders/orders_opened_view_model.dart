import 'package:antares_wallet/business/services/api/mock_api.dart';
import 'package:antares_wallet/locator.dart';
import 'package:stacked/stacked.dart';

class OrdersOpenedViewModel extends BaseViewModel {
  final MockApi _api = locator<MockApi>();

  OrdersOpenedViewModel() {
    setBusy(true);
  }

  Future initialise() async {
    setBusy(false);
  }
}
