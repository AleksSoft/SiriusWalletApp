import 'package:antares_wallet/app/locator.dart';
import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/services/repositories/asset_dictionary_repository.dart';
import 'package:stacked/stacked.dart';

class PortfolioAssetsViewModel extends BaseViewModel {
  final _repository = locator<AssetDictionaryRepository>();

  List<String> _expandedCategoryIds = List();

  List<CategoryData> get categoryList => _repository.categoryList;

  void initialise() {
    _repository.loadAssetDictionary().whenComplete(() => notifyListeners());
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
    notifyListeners();
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
}
