import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/app/utils/error_handler.dart';
import 'package:get/get.dart';

class WatchlistsRepository {
  static final _api = Get.find<ApiService>();

  static Future<List<Watchlist>> getWatchlists() async {
    final response = await ErrorHandler.safeCall<WatchlistsResponse>(
      () => _api.clientSecure.getWatchlists(Empty()),
      method: 'getWatchlists',
    );
    return response?.result ?? List();
  }

  static Future<Watchlist> getWatchlist(String id) async {
    final response = await ErrorHandler.safeCall<WatchlistResponse>(
      () => _api.clientSecure.getWatchlist(WatchlistRequest()..id = id),
      method: 'getWatchlist',
    );
    return response?.result;
  }

  static Future<Watchlist> addWatchlist(
    String name,
    int order,
    List<String> assetIds,
  ) async {
    final response = await ErrorHandler.safeCall<WatchlistResponse>(
      () => _api.clientSecure.addWatchlist(
        AddWatchlistRequest.create()
          ..name = name
          ..order = order
          ..assetIds.addAll(assetIds),
      ),
      method: 'addWatchlist',
    );
    return response?.result;
  }

  static Future<Watchlist> updateWatchlist(
    String id,
    String name,
    int order,
    List<String> assetIds,
  ) async {
    final response = await ErrorHandler.safeCall<WatchlistResponse>(
      () => _api.clientSecure.updateWatchlist(
        UpdateWatchlistRequest.create()
          ..id = id
          ..name = name
          ..order = order
          ..assetIds.addAll(assetIds),
      ),
      method: 'updateWatchlist',
    );
    return response?.result;
  }

  static Future<void> deleteWatchlist(String id) async {
    await ErrorHandler.safeCall<DeleteWatchlistResponse>(
      () => _api.clientSecure.deleteWatchlist(
        DeleteWatchlistRequest()..id = id,
      ),
      method: 'deleteWatchlist',
    );
  }
}
