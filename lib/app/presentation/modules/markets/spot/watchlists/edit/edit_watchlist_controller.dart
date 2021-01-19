import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/domain/repositories/watchlist_repository.dart';
import 'package:antares_wallet/app/presentation/modules/markets/markets_controller.dart';
import 'package:antares_wallet/app/presentation/modules/portfolio/assets/assets_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EditWatchlistController extends GetxController {
  final _assetsController = Get.find<AssetsController>();

  final TextEditingController nameController = TextEditingController();
  final Watchlist _originalWatchlist = Get.arguments as Watchlist;
  final List<AssetPair> _checkedAssetPairs = [];

  final IWatchlistRepository watchlistRepo;
  final MarketsController marketsCon;
  EditWatchlistController({
    @required this.watchlistRepo,
    @required this.marketsCon,
  });

  List<AssetPair> get selectedPairs => _checkedAssetPairs;

  List<AssetPair> get assetPairs => _assetsController.assetPairs;

  bool get modeEdit => _originalWatchlist != null;

  String get name => modeEdit ? _originalWatchlist.name : '';

  @override
  void onInit() async {
    nameController.text = name;
    if (modeEdit) {
      _originalWatchlist.assetIds.forEach((id) {
        _checkedAssetPairs.add(assetPairs.firstWhere((ap) => ap.id == id));
      });
    }
    super.onInit();
  }

  Future<void> perform() async {
    if (modeEdit) {
      await watchlistRepo.updateWatchlist(
        id: _originalWatchlist.id,
        name: nameController.text,
        order: _originalWatchlist.order,
        assetIds: _checkedAssetPairs.map((chap) => chap.id).toList(),
      );
    } else {
      await watchlistRepo.addWatchlist(
        name: nameController.text,
        order: 2,
        assetIds: _checkedAssetPairs.map((chap) => chap.id).toList(),
      );
    }
    Get.back();
    marketsCon.rebuildWatchedMarkets();
  }

  void check(AssetPair assetPair) {
    if (_checkedAssetPairs.contains(assetPair)) {
      _checkedAssetPairs.remove(assetPair);
    } else {
      _checkedAssetPairs.add(assetPair);
    }
    update();
  }

  bool checked(AssetPair assetPair) => _checkedAssetPairs.contains(assetPair);

  onReorder(int oldIndex, int newIndex) {
    var item = _checkedAssetPairs.removeAt(oldIndex);
    if (newIndex >= _checkedAssetPairs.length) {
      _checkedAssetPairs.add(item);
    } else {
      _checkedAssetPairs.insert(newIndex, item);
    }
    update();
  }
}
