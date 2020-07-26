import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/services/repositories/portfolio_repository.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:get/get.dart';

class PortfolioController extends GetxController {
  static PortfolioController get con => Get.find();

  final _categoryAssetsMap =
      Map<AssetCategory, List<WalletsResponse_WalletAsset>>().obs;
  Map<AssetCategory, List<WalletsResponse_WalletAsset>> get categoryAssetsMap =>
      this._categoryAssetsMap.value;
  set categoryAssetsMap(
          Map<AssetCategory, List<WalletsResponse_WalletAsset>> value) =>
      this._categoryAssetsMap.value = value;

  final _walletAssets = List<WalletsResponse_WalletAsset>().obs;
  List<WalletsResponse_WalletAsset> get walletAssets =>
      this._walletAssets.value;
  set walletAssets(List<WalletsResponse_WalletAsset> value) =>
      this._walletAssets.value = value;

  final _historyItems = List().obs;
  List get historyItems => this._historyItems.value;
  set historyItems(List value) => this._historyItems.value = value;

  @override
  void onInit() async {
    ever(_walletAssets, (assets) async {
      await updateCategoryAssetsMap();
    });
    ever(AssetsController.con.initialized, (inited) async {
      if (inited) await getWalletAssets();
    });
    super.onInit();
  }

  double get balance => walletAssets.fold(
      0.0, (p, c) => p + double.parse(c.amountInBase, (_) => 0.0));

  Future<void> updateCategoryAssetsMap() async {
    AssetsController.con.categoryList.forEach((category) {
      var l = walletAssets.where((a) => a.categoryId == category.id).toList();
      if (l.isNotEmpty) {
        l.sort((a, b) {
          int abalance = int.parse(a.balance, onError: (_) => 0);
          int bbalance = int.parse(b.balance, onError: (_) => 0);
          return abalance.compareTo(bbalance);
        });
        categoryAssetsMap.putIfAbsent(category, () => l);
      }
    });
  }

  Future<void> getWalletAssets() async {
    walletAssets = await PortfolioRepository.getWalletAssets();
  }

  Future<void> getHistory() async {
    // walletAssets = await PortfolioRepository.getWalletAssets();
  }
}
