import 'package:antares_wallet/services/repositories/asset_repository.dart';
import 'package:antares_wallet/services/repositories/watchists_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EditWatchlistController extends GetxController {
  final _assetRepo = Get.find<AssetRepository>();

  final TextEditingController nameController = TextEditingController();

  final Watchlist _originalWatchlist = Get.arguments as Watchlist;

  final List<AssetPair> _checkedAssetPairs = List();

  List<AssetPair> get selectedPairs => _checkedAssetPairs;

  List<AssetPair> get assetPairs => _assetRepo.assetPairs;

  bool get modeEdit => _originalWatchlist != null;

  String get name => modeEdit ? _originalWatchlist.name : '';

  bool edited = false;

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
      await WatchlistsRepository.updateWatchlist(
        _originalWatchlist.id,
        nameController.text,
        _originalWatchlist.order,
        _checkedAssetPairs.map((chap) => chap.id),
      );
    } else {
      await WatchlistsRepository.addWatchlist(
        nameController.text,
        2,
        _checkedAssetPairs.map((chap) => chap.id),
      );
    }
    Get.back();
  }

  void check(AssetPair assetPair) {
    if (_checkedAssetPairs.contains(assetPair)) {
      _checkedAssetPairs.remove(assetPair);
      if (edited && _checkedAssetPairs.isEmpty) edited = false;
    } else {
      _checkedAssetPairs.add(assetPair);
      if (!edited) edited = true;
    }
    update();
  }

  bool checked(AssetPair assetPair) {
    return _checkedAssetPairs.contains(assetPair);
  }

  onReorder(int oldIndex, int newIndex) {
    var item = _checkedAssetPairs.removeAt(oldIndex);
    if (newIndex >= _checkedAssetPairs.length) {
      _checkedAssetPairs.add(item);
    } else {
      _checkedAssetPairs.insert(newIndex, item);
    }
    update();
  }

  updateEdited() {
    if (!edited) edited = true;
    update();
  }
}
