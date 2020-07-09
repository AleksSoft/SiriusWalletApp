import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/ui/pages/select_asset/select_asset_view.dart';
import 'package:get/get.dart';

class SelectAssetController extends GetxController {
  static SelectAssetController get con => Get.find();
  final MockApiService _api = Get.find<MockApiService>();

  SelectAssetArgs _selectAssetArgs = Get.arguments as SelectAssetArgs;

  AssetDictionaryData _assetDictionary = AssetDictionaryData();

  List<AssetData> get assetList {
    var list = _assetDictionary.assetList;
    return isOnlyBase ? list.where((a) => a.canBeBase) : list;
  }

  AssetData get selectedAsset => _selectAssetArgs.selectedAsset;

  bool get isOnlyBase => _selectAssetArgs.onlyBase;

  String get title => _selectAssetArgs.title;

  @override
  void onInit() async {
    _assetDictionary = await _api.fetchAssetDictionary();
    update();
  }
}
