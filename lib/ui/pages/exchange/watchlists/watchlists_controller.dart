import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/services/repositories/watch_lists_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/exchange/exchange_controller.dart';
import 'package:antares_wallet/ui/pages/exchange/watchlists/edit/edit_watchlist_page.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class WatchlistsController extends GetxController {
  final _storage = GetStorage();
  final _repository = Get.find<WatchListsRepository>();

  List<Watchlist> get items => _repository.items;

  Watchlist get selected => _repository.activeWatchlist;

  @override
  void onInit() async {
    await updateWatchlists();
    super.onInit();
  }

  Future<void> updateWatchlists() async {
    await _repository.loadWatchLists();
  }

  select(String id) {
    _repository.select(id);
    _storage.write(AppStorageKeys.watchlist, id);
    Get.find<ExchangeController>().rebuildAssetPairList();
    update();
  }

  List<WatchlistOption> options(Watchlist wl) {
    var watchlist = items.firstWhere((i) => i.id == wl.id);
    if (watchlist == null) return null;

    var options = [WatchlistOption('Make a copy', () => _copy(watchlist))];
    if (!watchlist.readonly) {
      options
        ..addAll([
          WatchlistOption('Edit', () => _edit(watchlist)),
          WatchlistOption('Delete list', () => _delete(watchlist)),
        ]);
    }
    return options;
  }

  create() async {
    await Get.toNamed(EditWatchlistPage.route);
    update();
  }

  _copy(Watchlist watchlist) async {
    await _repository.add(AddWatchlistRequest()
      ..name = '${watchlist.name} Copy'
      ..assetIds.addAll(watchlist.assetIds));
    update();
  }

  _edit(Watchlist watchlist) async {
    await Get.toNamed(EditWatchlistPage.route, arguments: watchlist);
    _repository.loadWatchLists();
    update();
  }

  _delete(Watchlist watchlist) async {
    await _repository.delete(watchlist);
    if (watchlist.id == selected.id) select(items.first.id);
    update();
  }
}

class WatchlistOption {
  final String name;
  final VoidCallback action;

  const WatchlistOption(this.name, this.action);
}
