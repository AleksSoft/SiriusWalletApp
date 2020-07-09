import 'package:antares_wallet/models/order_data.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:get/get.dart';

class OrderRepository {
  final _api = Get.find<MockApiService>();

  List<OrderData> _openedOrders = List();

  List<OrderData> _historyOrders = List();

  List<OrderData> get openedOrders => _openedOrders;

  List<OrderData> get historyOrders => _historyOrders;

  Future<void> loadOpenOrders() async {
    if (_openedOrders.isEmpty) {
      _openedOrders = _api.fetchOpenedOrders();
    }
  }

  Future<void> loadHistoryOrders() async {
    if (_historyOrders.isEmpty) {
      _historyOrders = _api.fetchHistoryOrders();
    }
  }

  Future<List<OrderData>> getOrdersBySymbol(String symbol) async {
    await loadHistoryOrders();
    return _openedOrders
        .where((element) =>
            element.secAssetSymbol == symbol ||
            element.mainAssetSymbol == symbol)
        .toList();
  }

  cancelOrder(int orderId) {
    OrderData order = _openedOrders.firstWhere((e) => e.id == orderId);
    if (order != null) {
      _openedOrders.remove(order);
      order.cancelled = true;
      if (!_historyOrders.contains(order)) _historyOrders.add(order);
    }
  }
}
