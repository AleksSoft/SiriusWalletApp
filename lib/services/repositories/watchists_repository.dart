import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:get/get.dart';

class WatchlistsRepository {
  static final _api = Get.find<ApiService>();

  static Future<List<Watchlist>> getWatchlists() async {
    try {
      final response = await _api.client.getWatchlists(Empty());
      return response.result;
    } catch (e) {
      Get.defaultDialog(
        title: 'Error',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
      return null;
    }
  }

  static Future<Watchlist> getWatchlist(String id) async {
    try {
      final response = await _api.client.getWatchlist(
        WatchlistRequest()..id = id,
      );
      return response.result;
    } catch (e) {
      Get.defaultDialog(
        title: 'Error',
        middleText: 'watch list loading error',
        onConfirm: () => Get.back(),
      );
      return null;
    }
  }

  static Future<Watchlist> addWatchlist(
    String name,
    int order,
    List<String> assetIds,
  ) async {
    try {
      final response = await _api.client.addWatchlist(
        AddWatchlistRequest.create()
          ..name = name
          ..order = order
          ..assetIds.addAll(assetIds),
      );
      return response.result;
    } catch (e) {
      Future.delayed(Duration()).then(
        (value) => Get.defaultDialog(
          title: 'Error',
          middleText: e.message,
          onConfirm: () => Get.back(),
        ),
      );
      return null;
    }
  }

  static Future<Watchlist> updateWatchlist(
    String id,
    String name,
    int order,
    List<String> assetIds,
  ) async {
    try {
      final response = await _api.client.updateWatchlist(
        UpdateWatchlistRequest.create()
          ..id = id
          ..name = name
          ..order = order
          ..assetIds.addAll(assetIds),
      );
      return response.result;
    } catch (e) {
      Get.defaultDialog(
        title: 'Error',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
      return null;
    }
  }

  static Future<void> deleteWatchlist(String id) async {
    try {
      await _api.client.deleteWatchlist(DeleteWatchlistRequest()..id = id);
    } catch (e) {
      Get.defaultDialog(
        title: 'Error',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
    }
  }
}
