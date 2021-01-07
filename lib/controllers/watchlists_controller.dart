import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/repository/watchists_repository.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class WatchListsController extends GetxController {
  static WatchListsController get con => Get.find();

  final GetStorage storage;
  final MarketsController marketsCon;
  WatchListsController({
    @required this.storage,
    @required this.marketsCon,
  });

  final watchLists = <Watchlist>[].obs;

  final _selected = Watchlist().obs;
  get selected => this._selected.value;
  set selected(value) => this._selected.value = value;

  final _loading = false.obs;
  get loading => this._loading.value;
  set loading(value) => this._loading.value = value;

  @override
  void onInit() async {
    // load all watch-lists
    await getWatchlists();

    // set selected watchlist
    String id = storage.read(AppStorageKeys.watchlistId);
    if (id.isNullOrBlank) {
      if (watchLists.isNotEmpty) {
        selected = watchLists.first;
        await storage.write(AppStorageKeys.watchlistId, selected.id);
      } else {
        selected = Watchlist();
      }
    } else {
      selected = await WatchlistsRepository.getWatchlist(id);
    }

    super.onInit();
  }

  Future getWatchlists() async =>
      watchLists.assignAll(await WatchlistsRepository.getWatchlists());

  Future<void> select(String id) async {
    loading = true;
    selected = watchLists.firstWhere((w) => w.id == id);
    await storage.write(AppStorageKeys.watchlistId, id);
    await marketsCon.rebuildWatchedMarkets();
    loading = false;
  }

  List<WatchlistOption> options(Watchlist wl) {
    var watchlist = watchLists.firstWhere((i) => i.id == wl.id);
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
    await Get.toNamed(Routes.WATCH_LIST_EDIT);
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
    await Get.toNamed(Routes.WATCH_LIST_EDIT, arguments: watchlist);
    await getWatchlists();
  }

  _delete(Watchlist watchlist) async {
    await WatchlistsRepository.deleteWatchlist(watchlist.id);
    if (watchlist.id == selected.id) select(watchLists.first.id);
    await getWatchlists();
  }
}

class WatchlistOption {
  final String name;
  final VoidCallback action;

  const WatchlistOption(this.name, this.action);
}
