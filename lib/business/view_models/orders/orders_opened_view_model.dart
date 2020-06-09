import 'package:stacked/stacked.dart';

class OrdersOpenedViewModel extends BaseViewModel {
  OrdersOpenedViewModel() {
    setBusy(true);
  }

  Future initialise() async {
    setBusy(false);
  }
}
