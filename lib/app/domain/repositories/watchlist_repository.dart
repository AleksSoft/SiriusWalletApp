import 'dart:async';

import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/common.pb.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

abstract class IWatchlistRepository {
  Future<Either<ErrorResponseBody, List<Watchlist>>> getWatchlists();
  Future<Either<ErrorResponseBody, Watchlist>> getWatchlist({
    @required String id,
  });
  Future<Either<ErrorResponseBody, Watchlist>> addWatchlist({
    @required String name,
    @required int order,
    @required List<String> assetIds,
  });
  Future<Either<ErrorResponseBody, Watchlist>> updateWatchlist({
    @required String id,
    @required String name,
    @required int order,
    @required List<String> assetIds,
  });
  Future<Either<ErrorResponseBody, bool>> deleteWatchlist({
    @required String id,
  });
  String getWatchlistId();
  Future<void> setWatchlistId(String id);
}
