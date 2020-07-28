import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/services/repositories/portfolio_repository.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
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

  final _walletAssets = List<Balance>().obs;
  List<Balance> get balances => this._walletAssets.value;
  set balances(List<Balance> value) => this._walletAssets.value = value;

  final _historyItems = List().obs;
  List get historyItems => this._historyItems.value;
  set historyItems(List value) => this._historyItems.value = value;

  @override
  void onInit() async {
    ever(_assetsController.initialized, (inited) {
      if (inited) rebuildPortfolioAssets();
    });
    ever(RootController.con.pageIndexObs, (pageIndex) {
      if (pageIndex == 1) rebuildPortfolioAssets();
    });
    super.onInit();
  }

  double get balanceSum => balances.fold(
        0.0,
        (p, c) => p + _assetsController.countBalanceInBase(c.assetId, c),
      );

  Balance assetBalance(String assetId) =>
      balances.firstWhere((b) => b.assetId == assetId, orElse: () => null);

  Future<void> rebuildPortfolioAssets() async {
    loading = true;
    await _assetsController.getAssetsDictionary();
    await getWalletAssets();
    _assetsController.categoryList.forEach((category) {
      var l = _assetsController.categoryAssets(category.id);
      if (l.isNotEmpty) {
        categoryAssetsMap.update(category, (_) => l, ifAbsent: () => l);
      } else {
        categoryAssetsMap.remove(category);
      }
    });
    loading = false;
  }

  Future<void> getWalletAssets() async {
    balances = await PortfolioRepository.getBalances();
  }

  Future<void> getHistory() async {
    // walletAssets = await PortfolioRepository.getWalletAssets();
  }
}
