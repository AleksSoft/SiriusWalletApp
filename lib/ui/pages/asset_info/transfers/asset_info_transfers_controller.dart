import 'package:antares_wallet/repositories/portfolio_history_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:get/get.dart';

class AssetInfoTransfersController extends GetxController {
  final _repository = Get.find<PortfolioHistoryRepository>();

  List<FundsResponse_FundsModel> get trades => List();

  @override
  void onInit() async {
    await _repository.loadHistory();
    super.onInit();
  }
}
