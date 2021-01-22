import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/models/portfolio_history_filter.dart';
import 'package:antares_wallet/app/domain/repositories/portfolio_repository.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

import 'assets/assets_controller.dart';

class PortfolioController extends GetxController {
  static PortfolioController get con => Get.find();

  final IPortfolioRepository portfolioRepo;
  final AssetsController assetsCon;
  PortfolioController({
    @required this.portfolioRepo,
    @required this.assetsCon,
  });

  PortfolioHistoryFilter _filter;

  final loading = false.obs;

  final hideZeros = false.obs;

  var categoryAssetsMap = Map<AssetCategory, List<Asset>>().obs;

  var balances = <Balance>[].obs;

  var historyItems = <FundsResponse_FundsModel>[].obs;

  @override
  void onInit() {
    ever(
      hideZeros,
      (hide) => _mergeMap(categoryAssetsMap).then(
        (value) => categoryAssetsMap.assignAll(value),
      ),
    );
    super.onInit();
  }

  @override
  void onReady() {
    loading(true);
    super.onReady();
  }

  Future<void> initialize() async {
    rebuildPortfolioAssets();
    reloadHistory(silent: true);
  }

  double get balanceSum => balances.fold(
        0.0,
        (p, c) => p + assetsCon.countBalanceInBase(c.assetId, c),
      );

  String get hideZerosButtonTitle =>
      this.hideZeros.value ? 'Show all' : 'Hide zeros';

  Balance assetBalance(String assetId) =>
      balances.firstWhere((b) => b.assetId == assetId, orElse: () => null);

  List<Asset> assetsByCategoryName(String name) {
    AssetCategory category = categoryAssetsMap.keys.firstWhere(
      (c) => c.name.toLowerCase() == name.toLowerCase(),
      orElse: () => null,
    );
    if (category != null) {
      return categoryAssetsMap[category] ?? [];
    } else {
      return [];
    }
  }

  Future<void> rebuildPortfolioAssets() async {
    loading(true);
    await assetsCon.getAssetsDictionary();
    await getBalances();
    _mergeMap(categoryAssetsMap)
        .then((value) => categoryAssetsMap.assignAll(value))
        .whenComplete(() => loading(false));
  }

  Future<void> getBalances() async {
    final balancesResponse = await portfolioRepo.getBalances();
    balancesResponse.fold(
      (error) {},
      (newBalances) => balances.assignAll(newBalances),
    );
  }

  Future<void> reloadHistory({
    bool silent = false,
    PortfolioHistoryFilter newFilter,
  }) async {
    if (!silent) loading(true);
    if (newFilter != null) {
      _filter = newFilter;
    } else if (_filter == null) {
      _filter = await PortfolioHistoryFilter.fromStorage();
    }
    final fundsResponse = await portfolioRepo.getFunds(
      take: 25,
      skip: 0,
      assetId: _filter.assetId,
      fromDate: _filter.fromDate,
      toDate: _filter.toDate,
    );
    fundsResponse.fold(
      (error) {},
      (funds) {
        if (_filter.transactionType != PortfolioTransactionType.all) {
          String operation =
              _filter.transactionType == PortfolioTransactionType.deposit
                  ? 'deposit'
                  : 'withdraw';
          funds = funds
              .where((f) => f.operation.toLowerCase() == operation)
              .toList();
        }
        historyItems.assignAll(funds);
      },
    );
    if (!silent) loading(false);
  }

  Future<Map<AssetCategory, List<Asset>>> _mergeMap(
    Map<AssetCategory, List<Asset>> oldMap,
  ) async {
    var mergedMap = Map<AssetCategory, List<Asset>>.from(oldMap);
    assetsCon.categoryList.forEach((category) {
      var l = hideZeros.value
          ? assetsCon
              .categoryAssets(category.id)
              .where((a) => _assetBalance(a.id) > 0)
              .toList()
          : assetsCon.categoryAssets(category.id);
      l.sort((a, b) => _assetBalance(a.id).compareTo(_assetBalance(b.id)));
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

  double _assetBalance(String assetId) =>
      double.tryParse(assetBalance(assetId)?.available ?? '0') ?? 0.0;
}
