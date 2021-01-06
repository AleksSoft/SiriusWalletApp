import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/app/services/api/api_service.dart';
import 'package:get/get.dart';

class WatchlistsRepository {
  static final _api = Get.find<ApiService>();

  static Future<List<Watchlist>> getWatchlists() async {
    final response = await ErrorHandler.safeCall<WatchlistsResponse>(
      () => _api.clientSecure.getWatchlists(Empty()),
      method: 'getWatchlists',
    );
    return response?.body?.result ?? [];
  }

  static Future<Watchlist> getWatchlist(String id) async {
    final response = await ErrorHandler.safeCall<WatchlistResponse>(
      () => _api.clientSecure.getWatchlist(WatchlistRequest()..id = id),
      method: 'getWatchlist',
    );
    return response?.body;
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
    return response?.body;
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
    return response?.body;
  }

  static Future<void> deleteWatchlist(String id) async {
    await ErrorHandler.safeCall<EmptyResponse>(
      () => _api.clientSecure.deleteWatchlist(
        DeleteWatchlistRequest()..id = id,
      ),
      method: 'deleteWatchlist',
    );
  }
}
