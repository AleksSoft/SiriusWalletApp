import 'package:stacked/stacked.dart';

class OrdersHistoryViewModel extends BaseViewModel {
  OrdersHistoryViewModel() {
    setBusy(true);
  }

  Future initialise() async {
    setBusy(false);
  }
}
