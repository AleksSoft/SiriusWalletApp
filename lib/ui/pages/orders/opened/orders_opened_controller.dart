import 'package:antares_wallet/models/order_data.dart';
import 'package:antares_wallet/services/repositories/order_repository.dart';
import 'package:get/get.dart';

class OrdersOpenedController extends GetxController {
  final _repository = Get.find<OrderRepository>();

  List<OrderData> get orderList => _repository.openedOrders;

  @override
  void onInit() {
    super.onInit();
    _repository.loadOpenOrders();
    update();
  }

  cancelOrder(int orderId) {
    _repository.cancelOrder(orderId);
  }
}
