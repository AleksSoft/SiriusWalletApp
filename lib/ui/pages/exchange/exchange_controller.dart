import 'package:antares_wallet/services/repositories/asset_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:get/get.dart';

class ExchangeController extends GetxController {
  final _repository = Get.find<AssetRepository>();

  List<AssetPair> get assetPairs => _repository.assetPairs;

  @override
  void onInit() async {
    await _repository.loadAssetPairs();
    update();
  }
}
