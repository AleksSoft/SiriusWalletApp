import 'package:antares_wallet/app/locator.dart';
import 'package:antares_wallet/models/order_data.dart';
import 'package:antares_wallet/services/repositories/order_repository.dart';
import 'package:stacked/stacked.dart';

class OrdersOpenedViewModel extends BaseViewModel {
  final _repository = locator<OrderRepository>();

  List<OrderData> get orderList => _repository.openedOrders;

  void initialise() {
    _repository.loadOpenOrders();
    notifyListeners();
  }

  cancelOrder(int orderId) {
    _repository.cancelOrder(orderId);
  }
}
