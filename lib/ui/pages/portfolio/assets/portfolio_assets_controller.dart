import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/services/repositories/asset_repository.dart';
import 'package:get/get.dart';

class PortfolioAssetsController extends GetxController {
  static PortfolioAssetsController get con => Get.find();

  final _repository = Get.find<AssetRepository>();

  List<String> _expandedCategoryIds = List();

  List<CategoryData> get categoryList => _repository.categoryList;

  @override
  void onInit() async {
    super.onInit();
    await _repository.loadAssetDictionary();
    // _repository.loadTestAssetDictionary();
    update();
  }

  List<AssetData> getCategoryAssets(String categoryId) {
    var list = _repository.assetMap[categoryId] ?? List();
    return isExpanded(categoryId)
        ? list
        : list.sublist(0, list.length <= 3 ? list.length : 3);
  }

  void toggleExpand(String categoryId) {
    isExpanded(categoryId)
        ? _expandedCategoryIds.remove(categoryId)
        : _expandedCategoryIds.add(categoryId);
    update();
  }

  bool isExpanded(String categoryId) =>
      _expandedCategoryIds.contains(categoryId);

  bool showExpandButton(String categoryId) {
    var list = _repository.assetMap[categoryId] ?? List();
    return list.length > 3;
  }

  String moreCount(String categoryId) {
    var list = _repository.assetMap[categoryId] ?? List();
    return (list.length - 3).toString();
  }

  void openAssetInfo(AssetData asset) {
    // TODO: add asset info route properly
    // Get.toNamed(AppRoutes.assetInfoRoute, arguments: asset);
  }
}
