import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/services/repositories/watchists_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/exchange/exchange_controller.dart';
import 'package:antares_wallet/ui/pages/exchange/watchlists/edit/edit_watchlist_page.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class WatchlistsController extends GetxController {
  static WatchlistsController get con => Get.find();
  final _storage = GetStorage();

  final _watchlists = List<Watchlist>().obs;
  List<Watchlist> get watchlists => this._watchlists.value;
  set watchlists(List<Watchlist> value) => this._watchlists.value = value;

  final _selected = Watchlist().obs;
  get selected => this._selected.value;
  set selected(value) => this._selected.value = value;

  final _loading = false.obs;
  get loading => this._loading.value;
  set loading(value) => this._loading.value = value;

  @override
  void onInit() async {
    // load all watchlists
    await getWatchlists();

    // set selected watchlist
    String id = _storage.read(AppStorageKeys.watchlistId);
    if (id == null || id.isEmpty) {
      selected = watchlists.first;
    } else {
      selected = await WatchlistsRepository.getWatchlist(id);
    }

    super.onInit();
  }

  getWatchlists() async {
    watchlists = await WatchlistsRepository.getWatchlists();
  }

  Future<void> select(String id) async {
    loading = true;
    selected = watchlists.firstWhere((w) => w.id == id);
    _storage.write(AppStorageKeys.watchlistId, id);
    await Get.find<ExchangeController>().rebuildAssetPairList();
    loading = false;
  }

  List<WatchlistOption> options(Watchlist wl) {
    var watchlist = watchlists.firstWhere((i) => i.id == wl.id);
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
  }

  _copy(Watchlist watchlist) async {
    await WatchlistsRepository.addWatchlist(
      '${watchlist.name} Copy',
      2,
      watchlist.assetIds,
    );
    await getWatchlists();
  }

  _edit(Watchlist watchlist) async {
    await Get.toNamed(EditWatchlistPage.route, arguments: watchlist);
    await getWatchlists();
  }

  _delete(Watchlist watchlist) async {
    await WatchlistsRepository.deleteWatchlist(watchlist.id);
    if (watchlist.id == selected.id) select(watchlists.first.id);
    await getWatchlists();
  }
}

class WatchlistOption {
  final String name;
  final VoidCallback action;

  const WatchlistOption(this.name, this.action);
}
