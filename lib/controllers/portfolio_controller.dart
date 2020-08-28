import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/repositories/portfolio_repository.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:antares_wallet/src/google/protobuf/timestamp.pb.dart';
import 'package:antares_wallet/ui/pages/root/root_controller.dart';
import 'package:get/get.dart';

class PortfolioController extends GetxController {
  static PortfolioController get con => Get.find();

  final _assetsController = AssetsController.con;

  final _loading = false.obs;
  get loading => this._loading.value;
  set loading(value) => this._loading.value = value;

  final _categoryAssetsMap = Map<AssetCategory, List<Asset>>().obs;
  Map<AssetCategory, List<Asset>> get categoryAssetsMap =>
      this._categoryAssetsMap.value;
  set categoryAssetsMap(Map<AssetCategory, List<Asset>> value) =>
      this._categoryAssetsMap.value = value;

  final _balances = List<Balance>().obs;
  List<Balance> get balances => this._balances.value;
  set balances(List<Balance> value) => this._balances.value = value;

  final _historyItems = List<FundsResponse_FundsModel>().obs;
  List<FundsResponse_FundsModel> get historyItems => this._historyItems.value;
  set historyItems(List<FundsResponse_FundsModel> value) =>
      this._historyItems.value = value;

  @override
  void onInit() async {
    ever(_assetsController.initialized, (inited) {
      if (inited) {
        rebuildPortfolioAssets();
        getFunds(20, 0);
      }
    });
    ever(RootController.con.pageIndexObs, (pageIndex) {
      if (pageIndex == 1) {
        rebuildPortfolioAssets();
        getFunds(20, 0);
      }
    });
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    loading = true;
  }

  double get balanceSum => balances.fold(
        0.0,
        (p, c) => p + _assetsController.countBalanceInBase(c.assetId, c),
      );

  Balance assetBalance(String assetId) =>
      balances.firstWhere((b) => b.assetId == assetId, orElse: () => null);

  List<Asset> assetsByCategoryName(String name) {
    AssetCategory category = categoryAssetsMap.keys.firstWhere(
      (c) => c.name.toLowerCase() == name.toLowerCase(),
      orElse: null,
    );
    if (category != null) {
      return categoryAssetsMap[category] ?? List();
    } else {
      return List();
    }
  }

  Future<void> rebuildPortfolioAssets() async {
    loading = true;
    await _assetsController.getAssetsDictionary();
    await getBalances();
    categoryAssetsMap = _mergeMap(_categoryAssetsMap.value);
    loading = false;
  }

  Future<void> getBalances() async =>
      balances = await PortfolioRepository.getBalances();

  Future<void> getFunds(
    int take,
    int skip, {
    String assetId,
    Timestamp fromDate,
    Timestamp toDate,
  }) async =>
      historyItems = await PortfolioRepository.getFunds(
        take: take,
        skip: skip,
        assetId: assetId,
        fromDate: fromDate,
        toDate: toDate,
      );

  Map<AssetCategory, List<Asset>> _mergeMap(
      Map<AssetCategory, List<Asset>> oldMap) {
    Map<AssetCategory, List<Asset>> mergedMap =
        Map<AssetCategory, List<Asset>>.from(oldMap);
    _assetsController.categoryList.forEach((category) {
      var l = _assetsController.categoryAssets(category.id);
      l.sort((a, b) {
        var aBalance =
            double.tryParse(assetBalance(a.id)?.available ?? '0') ?? 0.0;
        var bBalance =
            double.tryParse(assetBalance(b.id)?.available ?? '0') ?? 0.0;
        return aBalance.compareTo(bBalance);
      });
      if (l.isNotEmpty) {
        mergedMap.update(
          category,
          (_) => l.reversed.toList(),
          ifAbsent: () => l.reversed.toList(),
        );
      } else {
        mergedMap.remove(category);
      }
    });
    return mergedMap;
  }
}
