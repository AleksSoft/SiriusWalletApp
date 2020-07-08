import 'package:antares_wallet/models/transaction_details.dart';
import 'package:antares_wallet/services/repositories/portfolio_history_repository.dart';
import 'package:get/get.dart';

class PortfolioHistoryController extends GetxController {
  static PortfolioHistoryController get con => Get.find();

  final _repository = Get.find<PortfolioHistoryRepository>();

  bool _filterOpened = false;

  bool get filterOpened => _filterOpened;

  List<TransactionDetails> get historyItems => _repository.items;

  @override
  void onInit() {
    super.onInit();
    _repository.loadHistory();
    update();
  }

  Future updateHistory() async {
    await _repository.updateHistory();
    update();
  }

  void updateFilterOpenedState(bool opened) {
    _filterOpened = opened;
    update();
  }
}
