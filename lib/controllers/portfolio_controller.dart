import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/timestamp.pb.dart';
import 'package:antares_wallet/app/data/repository/portfolio_repository.dart';
import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/models/portfolio_history_filter.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class PortfolioController extends GetxController {
  static PortfolioController get con => Get.find();

  final AssetsController assetsCon;
  PortfolioController({@required this.assetsCon});

  PortfolioHistoryFilter _filter;

  final _loading = false.obs;
  get loading => this._loading.value;
  set loading(value) => this._loading.value = value;

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
    super.onReady();
    loading = true;
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
    _loading(true);
    await assetsCon.getAssetsDictionary();
    await getBalances();
    _mergeMap(categoryAssetsMap)
        .then((value) => categoryAssetsMap.assignAll(value))
        .whenComplete(() => _loading(false));
  }

  Future<void> getBalances() async =>
      balances.assignAll(await PortfolioRepository.getBalances());

  Future<List<FundsResponse_FundsModel>> getFunds(
    int take,
    int skip, {
    String assetId,
    Timestamp fromDate,
    Timestamp toDate,
  }) async =>
      await PortfolioRepository.getFunds(
        take: take,
        skip: skip,
        assetId: assetId,
        fromDate: fromDate,
        toDate: toDate,
      );

  Future<void> reloadHistory({
    bool silent = false,
    PortfolioHistoryFilter newFilter,
  }) async {
    if (!silent) loading = true;
    if (newFilter != null) {
      _filter = newFilter;
    } else if (_filter == null) {
      _filter = PortfolioHistoryFilter.fromStorage();
    }
    var funds = await getFunds(
      25,
      0,
      assetId: _filter.assetId,
      fromDate: _filter.fromDate,
      toDate: _filter.toDate,
    );
    if (_filter.transactionType != PortfolioTransactionType.all) {
      String operation =
          _filter.transactionType == PortfolioTransactionType.deposit
              ? 'deposit'
              : 'withdraw';
      funds =
          funds.where((f) => f.operation.toLowerCase() == operation).toList();
    }
    historyItems.assignAll(funds);
    if (!silent) loading = false;
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
