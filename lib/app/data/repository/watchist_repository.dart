import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/app/data/data_sources/watchlist_data_source.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/common.pb.dart';
import 'package:antares_wallet/app/domain/repositories/watchlist_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:meta/meta.dart';

class WatchlistRepository implements IWatchlistRepository {
  WatchlistRepository({
    @required this.source,
    @required this.storage,
  });
  final IWatchlistDataSource source;
  final FlutterSecureStorage storage;

  @override
  Future<Either<ErrorResponseBody, List<Watchlist>>> getWatchlists() async {
    final response = await source.getWatchlists();

    if (response == null) return Right([]);
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body?.result ?? []);
  }

  @override
  Future<Either<ErrorResponseBody, Watchlist>> getWatchlist(
      {@required String id}) async {
    final request = WatchlistRequest()..id = id;

    final response = await source.getWatchlist(request);

    if (response == null) return Right(null);
    return response.hasError() ? Left(response.error) : Right(response?.body);
  }

  @override
  Future<Either<ErrorResponseBody, Watchlist>> addWatchlist({
    @required String name,
    @required int order,
    @required List<String> assetIds,
  }) async {
    final request = AddWatchlistRequest()
      ..name = name
      ..order = order
      ..assetIds.addAll(assetIds);

    final response = await source.addWatchlist(request);

    if (response == null) return Right(null);
    return response.hasError() ? Left(response.error) : Right(response?.body);
  }

  @override
  Future<Either<ErrorResponseBody, Watchlist>> updateWatchlist({
    @required String id,
    @required String name,
    @required int order,
    @required List<String> assetIds,
  }) async {
    final request = UpdateWatchlistRequest()
      ..id = id
      ..name = name
      ..order = order
      ..assetIds.addAll(assetIds);

    final response = await source.updateWatchlist(request);

    if (response == null) return Right(null);
    return response.hasError() ? Left(response.error) : Right(response?.body);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> deleteWatchlist(
      {@required String id}) async {
    final request = DeleteWatchlistRequest()..id = id;

    final response = await source.deleteWatchlist(request);

    if (response == null) return Right(false);
    return response.hasError() ? Left(response.error) : Right(true);
  }

  @override
  Future<String> getWatchlistId() =>
      storage.read(key: AppStorageKeys.watchlistId);

  @override
  Future<void> setWatchlistId(String id) =>
      storage.write(key: AppStorageKeys.watchlistId, value: id);
}
