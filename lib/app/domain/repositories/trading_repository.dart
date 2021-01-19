import 'dart:async';

import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/common.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/timestamp.pb.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

abstract class ITradingRepository {
  Future<Either<ErrorResponseBody, List<Candle>>> getCandles({
    @required String assetPairId,
    @required CandleType type,
    @required CandleInterval interval,
    @required Timestamp from,
    @required Timestamp to,
  });
  Future<Either<ErrorResponseBody, Orderbook>> getOrderbook({
    @required String assetPairId,
  });
  Future<Either<ErrorResponseBody, List<LimitOrderModel>>> getOrders({
    String assetPairId,
  });
  Future<Either<ErrorResponseBody, List<TradesResponse_TradeModel>>> getTrades({
    @required int take,
    @required int skip,
    String assetPairId,
    String tradeType,
    Timestamp fromDate,
    Timestamp toDate,
  });
  Future<Either<ErrorResponseBody, List<AssetTradesResponse_AssetTradeModel>>>
      getAssetTrades({
    @required String assetId,
    @required int take,
    @required int skip,
  });
  Future<Either<ErrorResponseBody, bool>> cancelOrder({
    @required String orderId,
  });
  Future<Either<ErrorResponseBody, bool>> cancelAllOrders();
  Future<Either<ErrorResponseBody, OrderModel>> placeLimitOrder({
    @required String assetPairId,
    @required String assetId,
    @required double volume,
    @required double price,
  });
  Future<Either<ErrorResponseBody, OrderModel>> placeMarketOrder({
    @required String assetPairId,
    @required String assetId,
    @required double volume,
  });
  Future<Either<ErrorResponseBody, OrderModel>> editOrder({
    @required String orderId,
    @required String assetPairId,
    @required String assetId,
    @required double volume,
    @required double price,
  });
}
