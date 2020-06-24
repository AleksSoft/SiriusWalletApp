import 'package:antares_wallet/app/locator.dart';
import 'package:antares_wallet/models/order_data.dart';
import 'package:antares_wallet/services/repositories/order_repository.dart';
import 'package:stacked/stacked.dart';

class OrdersHistoryViewModel extends BaseViewModel {
  final _repository = locator<OrderRepository>();

  List<OrderData> get orderList => _repository.historyOrders;

  void initialise() {
    _repository.loadHistoryOrders();
    notifyListeners();
  }
}