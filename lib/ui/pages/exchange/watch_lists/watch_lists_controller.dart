import 'package:antares_wallet/services/repositories/watch_lists_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class WatchListsController extends GetxController {
  final _repository = Get.find<WatchListsRepository>();

  List<Watchlist> get items => _repository.items;

  Watchlist get selected => _repository.selected;

  @override
  void onInit() {
    super.onInit();
    updateWatchlists().whenComplete(() => update());
  }

  Future<void> updateWatchlists() async {
    await _repository.updateWatchLists();
  }

  select(String id) {
    _repository.select(id);
    update();
    Get.back();
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

  create() {
    // Get.toNamed(EditWatchListPage.route);
  }

  _copy(Watchlist watchlist) async {
    await _repository.copy(watchlist);
    update();
  }

  _edit(Watchlist watchlist) async {
    await _repository.update(watchlist);
    update();
  }

  _delete(Watchlist watchlist) async {
    await _repository.delete(watchlist);
    update();
  }
}

class WatchlistOption {
  final String name;
  final VoidCallback action;

  const WatchlistOption(this.name, this.action);
}
