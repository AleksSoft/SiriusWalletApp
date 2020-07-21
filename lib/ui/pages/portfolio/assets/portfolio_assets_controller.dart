import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/asset_info/asset_info_page.dart';
import 'package:get/get.dart';

class PortfolioAssetsController extends GetxController {
  static PortfolioAssetsController get con => Get.find();

  final _assetsController = Get.find<AssetsController>();

  List<String> _expandedCategoryIds = List();

  List<AssetCategory> get categoryList => _assetsController.categoryList;

  List<Asset> getCategoryAssets(String categoryId) {
    var list = _assetsController.categoryAssets(categoryId) ?? List();
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
    var list = _assetsController.categoryAssets(categoryId) ?? List();
    return list.length > 3;
  }

  String moreCount(String categoryId) {
    var list = _assetsController.categoryAssets(categoryId) ?? List();
    return (list.length - 3).toString();
  }

  void openAssetInfo(Asset asset) =>
      Get.toNamed(AssetInfoPage.route, arguments: asset);
}
