import 'package:antares_wallet/app/data/data_sources/trading_data_source.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/common.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/timestamp.pb.dart';
import 'package:antares_wallet/app/domain/repositories/trading_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class TradingRepository implements ITradingRepository {
  TradingRepository({@required this.source});
  final ITradingDataSource source;

  @override
  Future<Either<ErrorResponseBody, List<Candle>>> getCandles({
    @required String assetPairId,
    @required CandleType type,
    @required CandleInterval interval,
    @required Timestamp from,
    @required Timestamp to,
  }) async {
    final request = CandlesRequest()
      ..assetPairId = assetPairId
      ..type = type
      ..interval = interval
      ..from = from
      ..to = to;

    final response = await source.getCandles(request);

    if (response == null) return Right(<Candle>[]);
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body?.candles ?? <Candle>[]);
  }

  @override
  Future<Either<ErrorResponseBody, Orderbook>> getOrderbook({
    @required String assetPairId,
  }) async {
    final request = OrderbookRequest()..assetPairId = assetPairId;

    final response = await source.getOrderbook(request);

    if (response == null) return Right(Orderbook());
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body ?? Orderbook());
  }

  @override
  Future<Either<ErrorResponseBody, List<LimitOrderModel>>> getOrders({
    String assetPairId,
  }) async {
    final request = LimitOrdersRequest();
    if (assetPairId != null) request.assetPairId = assetPairId;

    final response = await source.getOrders(request);

    if (response == null) return Right(<LimitOrderModel>[]);
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body?.orders ?? <LimitOrderModel>[]);
  }

  @override
  Future<Either<ErrorResponseBody, List<TradesResponse_TradeModel>>> getTrades({
    @required int take,
    @required int skip,
    String assetPairId,
    String tradeType,
    Timestamp fromDate,
    Timestamp toDate,
  }) async {
    final request = TradesRequest();
    request.take = take;
    request.skip = skip;
    if (assetPairId != null) request.assetPairId = assetPairId;
    if (fromDate != null) request.from = fromDate;
    if (toDate != null) request.to = toDate;

    final response = await source.getTrades(request);

    if (response == null) return Right(<TradesResponse_TradeModel>[]);
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body?.trades ?? <TradesResponse_TradeModel>[]);
  }

  @override
  Future<Either<ErrorResponseBody, List<AssetTradesResponse_AssetTradeModel>>>
      getAssetTrades({
    @required String assetId,
    @required int take,
    @required int skip,
  }) async {
    final request = AssetTradesRequest()
      ..assetId = assetId
      ..take = take
      ..skip = skip;

    final response = await source.getAssetTrades(request);

    if (response == null) return Right([]);
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body?.trades ?? []);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> cancelOrder({
    @required String orderId,
  }) async {
    final request = CancelOrderRequest()..orderId = orderId;

    final response = await source.cancelOrder(request);

    if (response == null) return Right(false);
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body?.payload ?? false);
  }

  @override
  Future<Either<ErrorResponseBody, bool>> cancelAllOrders({
    String assetPairId,
    Side side,
  }) async {
    final request = CancelOrdersRequest();
    request.assetPairId = assetPairId;
    request.side = side;

    final response = await source.cancelAllOrders(request);

    if (response == null) return Right(false);
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body?.payload ?? false);
  }

  @override
  Future<Either<ErrorResponseBody, OrderModel>> placeLimitOrder({
    @required String assetPairId,
    @required String assetId,
    @required double volume,
    @required double price,
  }) async {
    final request = LimitOrderRequest()
      ..assetPairId = assetPairId
      ..assetId = assetId
      ..volume = volume
      ..price = price;

    final response = await source.placeLimitOrder(request);

    if (response == null) return Right(null);
    return response.hasError() ? Left(response.error) : Right(response?.body);
  }

  @override
  Future<Either<ErrorResponseBody, OrderModel>> placeMarketOrder({
    @required String assetPairId,
    @required String assetId,
    @required double volume,
  }) async {
    final request = MarketOrderRequest()
      ..assetPairId = assetPairId
      ..assetId = assetId
      ..volume = volume;

    final response = await source.placeMarketOrder(request);

    if (response == null) return Right(null);
    return response.hasError() ? Left(response.error) : Right(response?.body);
  }

  @override
  Future<Either<ErrorResponseBody, OrderModel>> editOrder({
    @required String orderId,
    @required String assetPairId,
    @required String assetId,
    @required double volume,
    @required double price,
  }) async {
    final request = EditOrderRequest()
      ..orderId = orderId
      ..assetPairId = assetPairId
      ..assetId = assetId
      ..volume = volume
      ..price = price;

    final response = await source.editOrder(request);

    if (response == null) return Right(null);
    return response.hasError() ? Left(response.error) : Right(response?.body);
  }
}
