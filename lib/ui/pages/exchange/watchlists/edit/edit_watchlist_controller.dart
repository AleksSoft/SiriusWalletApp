import 'package:antares_wallet/services/repositories/asset_repository.dart';
import 'package:antares_wallet/services/repositories/watch_lists_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EditWatchlistController extends GetxController {
  final _watchlistRepo = Get.find<WatchListsRepository>();
  final _assetRepo = Get.find<AssetRepository>();

  final TextEditingController nameController = TextEditingController();

  final Watchlist _watchlist = Get.arguments as Watchlist;

  List<String> get assetIds => _watchlist.assetIds;

  bool get modeEdit => _watchlist != null;

  bool edited = false;

  @override
  void onInit() async {
    super.onInit();
    nameController.text = _watchlist.name ?? '';
    update();
  }

  Future<void> perform(Watchlist watchlist) async {
    if (modeEdit) {
      await _watchlistRepo.update(watchlist);
    } else {
      await _watchlistRepo.add(watchlist);
    }
  }
}
