import 'package:antares_wallet/business/services/api/mock_api.dart';
import 'package:antares_wallet/locator.dart';
import 'package:stacked/stacked.dart';

class OrdersHistoryViewModel extends BaseViewModel {
  final MockApi _api = locator<MockApi>();

  OrdersHistoryViewModel() {
    setBusy(true);
  }

  Future initialise() async {
    setBusy(false);
  }
}
