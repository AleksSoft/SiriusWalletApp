import 'package:antares_wallet/services/repositories/asset_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class SelectAssetArgs {
  final String title;
  final Asset selectedAsset;
  final bool onlyBase;

  const SelectAssetArgs({
    @required this.title,
    this.selectedAsset,
    this.onlyBase = false,
  });
}

class SelectAssetController extends GetxController {
  static SelectAssetController get con => Get.find();
  final _repository = Get.find<AssetRepository>();

  SelectAssetArgs _selectAssetArgs = Get.arguments as SelectAssetArgs;

  List<Asset> get assetList {
    var list = _repository.assetList;
    return isOnlyBase ? list.where((a) => a.canBeBase) : list;
  }

  Asset get selectedAsset => _selectAssetArgs.selectedAsset;

  bool get isOnlyBase => _selectAssetArgs.onlyBase;

  String get title => _selectAssetArgs.title;

  @override
  void onInit() async {
    _repository.loadAssetDictionary();
    update();
  }
}
