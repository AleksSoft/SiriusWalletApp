import 'package:antares_wallet/models/asset_pair_data.dart';
import 'package:antares_wallet/services/repositories/asset_repository.dart';
import 'package:get/get.dart';

class ExchangeController extends GetxController {
  final _repository = Get.find<AssetRepository>();

  List<AssetPairData> get assetPairs => _repository.assetPairs;

  void initialise() async {
    await _repository.loadAllAssetPairs();
    update();
  }
}
