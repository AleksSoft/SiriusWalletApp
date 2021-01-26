import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/domain/repositories/watchlist_repository.dart';
import 'package:antares_wallet/app/presentation/modules/markets/markets_controller.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class WatchListsController extends GetxController {
  static WatchListsController get con => Get.find();

  final IWatchlistRepository watchlistRepo;
  final MarketsController marketsCon;
  WatchListsController({
    @required this.watchlistRepo,
    @required this.marketsCon,
  });

  final watchLists = <Watchlist>[].obs;

  final _selected = Watchlist().obs;
  get selected => this._selected.value;
  set selected(value) => this._selected.value = value;

  final loading = false.obs;

  @override
  void onReady() {
    getWatchlists();
    super.onReady();
  }

  Future<void> getWatchlists() async {
    loading(true);
    watchlistRepo
        .getWatchlists()
        .then((response) => response.fold(
              (error) {},
              (list) {
                watchLists.assignAll(list);
                prepareSelected();
              },
            ))
        .whenComplete(() => loading(false));
  }

  /// set selected watchlist
  void prepareSelected() async {
    String id = await watchlistRepo.getWatchlistId();
    if (id.nullOrEmpty) {
      if (watchLists.isNotEmpty) {
        selected = watchLists.first;
        watchlistRepo.setWatchlistId(selected.id);
      } else {
        selected = Watchlist();
      }
    } else {
      watchlistRepo.getWatchlist(id: id).then((response) => response.fold(
            (error) {},
            (result) => selected = result,
          ));
    }
  }

  Future<void> select(String id) async {
    loading(true);
    selected = watchLists.firstWhere((w) => w.id == id);
    await watchlistRepo.setWatchlistId(selected.id);
    await marketsCon.rebuildWatchedMarkets();
    loading(false);
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

  void create() => Get.toNamed(Routes.WATCH_LIST_EDIT);

  Future<void> _copy(Watchlist watchlist) async {
    await watchlistRepo.addWatchlist(
      name: '${watchlist.name} Copy',
      order: watchlist.order + 1,
      assetIds: watchlist.assetIds,
    );
    getWatchlists();
  }

  Future<void> _edit(Watchlist watchlist) async {
    await Get.toNamed(Routes.WATCH_LIST_EDIT, arguments: watchlist);
    getWatchlists();
  }

  Future<void> _delete(Watchlist watchlist) async {
    await watchlistRepo.deleteWatchlist(id: watchlist.id);
    if (watchlist.id == selected.id) select(watchLists.first.id);
    getWatchlists();
  }
}

class WatchlistOption {
  final String name;
  final VoidCallback action;

  const WatchlistOption(this.name, this.action);
}
