import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:get/get.dart';

class WatchListsRepository {
  List<Watchlist> _items = List();

  List<Watchlist> get items => _items;

  Watchlist _selected = Watchlist.getDefault();

  Watchlist get selected => _selected;

  WatchListsRepository() {
    updateWatchLists().whenComplete(() => _selected = _items.first);
  }

  Future<void> updateWatchLists() async {
    try {
      final response = await ApiService.client.getWatchlists(Empty());
      _items = response.result;
    } catch (e) {
      Get.defaultDialog(
        title: 'Error (${e.code})',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
    }
  }

  void select(String id) {
    _selected = _items.firstWhere((e) => e.id == id);
  }

  Future<void> copy(Watchlist watchlist) async {
    try {
      final response = await ApiService.client.addWatchlist(
        AddWatchlistRequest()
          ..name = '${watchlist.name} Copy'
          ..order = watchlist.order
          ..assetIds.addAll(watchlist.assetIds),
      );
      _items.add(response.result);
    } catch (e) {
      Get.defaultDialog(
        title: 'Error (${e.code})',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
    }
  }

  Future<void> update(Watchlist watchlist) async {
    try {
      final response = await ApiService.client.updateWatchlist(
        UpdateWatchlistRequest()
          ..id = watchlist.id
          ..name = watchlist.name
          ..order = watchlist.order
          ..assetIds.addAll(watchlist.assetIds),
      );
      Watchlist item = _items.firstWhere((e) => e.id == response.result.id);
      if (item != null) item = response.result;
    } catch (e) {
      Get.defaultDialog(
        title: 'Error (${e.code})',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
    }
  }

  Future<void> delete(Watchlist watchlist) async {
    try {
      await ApiService.client.deleteWatchlist(
        DeleteWatchlistRequest()..id = watchlist.id,
      );
      _items.removeWhere((e) => e.id == watchlist.id);
    } catch (e) {
      Get.defaultDialog(
        title: 'Error (${e.code})',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
    }
  }
}
