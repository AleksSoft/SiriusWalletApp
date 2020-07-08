import 'package:antares_wallet/models/transaction_details.dart';
import 'package:antares_wallet/services/repositories/portfolio_history_repository.dart';
import 'package:get/get.dart';

class AssetInfoTransfersController extends GetxController {
  final _repository = Get.find<PortfolioHistoryRepository>();

  List<TransactionDetails> get trades => _repository.items;

  @override
  void onInit() async {
    super.onInit();
    await _repository.loadHistory();
    update();
  }
}
