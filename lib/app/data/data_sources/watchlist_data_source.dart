import 'package:antares_wallet/app/core/error/safe_call_handler.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/app/data/services/api/api_service.dart';
import 'package:meta/meta.dart';

abstract class IWatchlistDataSource {
  Future<WatchlistsResponse> getWatchlists();
  Future<WatchlistResponse> getWatchlist(WatchlistRequest r);
  Future<WatchlistResponse> addWatchlist(AddWatchlistRequest r);
  Future<WatchlistResponse> updateWatchlist(UpdateWatchlistRequest r);
  Future<EmptyResponse> deleteWatchlist(DeleteWatchlistRequest r);
}

class WatchlistDataSource with SafeCallHandler implements IWatchlistDataSource {
  WatchlistDataSource({@required this.api});
  final ApiService api;

  @override
  Future<WatchlistsResponse> getWatchlists() => safeCall(
        () => api.clientSecure.getWatchlists(Empty()),
        method: 'getWatchlists',
      );

  @override
  Future<WatchlistResponse> getWatchlist(WatchlistRequest r) => safeCall(
        () => api.clientSecure.getWatchlist(r),
        method: 'getWatchlist',
      );

  @override
  Future<WatchlistResponse> addWatchlist(AddWatchlistRequest r) => safeCall(
        () => api.clientSecure.addWatchlist(r),
        method: 'addWatchlist',
      );

  @override
  Future<WatchlistResponse> updateWatchlist(UpdateWatchlistRequest r) =>
      safeCall(
        () => api.clientSecure.updateWatchlist(r),
        method: 'updateWatchlist',
      );

  @override
  Future<EmptyResponse> deleteWatchlist(DeleteWatchlistRequest r) => safeCall(
        () => api.clientSecure.deleteWatchlist(r),
        method: 'deleteWatchlist',
      );
}
