import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class WatchListsRepository {
  final _storage = GetStorage();

  List<Watchlist> _items = List();

  List<Watchlist> get items => _items;

  Watchlist _selected = Watchlist.getDefault();

  Watchlist get activeWatchlist => _selected;

  WatchListsRepository() {
    getWatchLists().whenComplete(() {
      _selected = _items.first;
      _storage.write(AppStorageKeys.watchlistId, _selected.id);
    });
  }

  Future<void> getWatchLists() async {
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

  Future<Watchlist> getWatchList(String id) async {
    try {
      final response = await ApiService.client.getWatchlist(
        WatchlistRequest()..id = id,
      );
      return response.result;
    } catch (e) {
      Get.defaultDialog(
        title: 'Error (${e.code})',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
    }
    return null;
  }

  void select(String id) {
    _selected = _items.firstWhere((e) => e.id == id);
    _storage.write(AppStorageKeys.watchlistId, _selected.id);
  }

  Future<void> add(AddWatchlistRequest request) async {
    try {
      final response = await ApiService.client.addWatchlist(request);
      _items.add(response.result);
    } catch (e) {
      Get.defaultDialog(
        title: 'Error (${e.code})',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
    }
  }

  Future<void> update(UpdateWatchlistRequest request) async {
    try {
      final response = await ApiService.client.updateWatchlist(request);
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
