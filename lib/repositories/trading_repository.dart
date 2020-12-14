import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:antares_wallet/src/google/protobuf/timestamp.pb.dart';
import 'package:antares_wallet/app/utils/error_handler.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class TradingRepository {
  static final _api = Get.find<ApiService>();

  static Future<List<Candle>> getCandles({
    @required String assetPairId,
    @required CandleType type,
    @required CandleInterval interval,
    @required Timestamp from,
    @required Timestamp to,
  }) async {
    final response = await ErrorHandler.safeCall<CandlesResponse>(
      () => _api.clientSecure.getCandles(
        CandlesRequest()
          ..assetPairId = assetPairId
          ..type = type
          ..interval = interval
          ..from = from
          ..to = to,
      ),
      method: 'getCandles',
    );
    return response?.candles;
  }

  static Future<Orderbook> getOrderbook({
    @required String assetPairId,
  }) async {
    final response = await ErrorHandler.safeCall<Orderbook>(
      () => _api.clientSecure.getOrderbook(
        OrderbookRequest()..assetPairId = assetPairId,
      ),
      method: 'getOrderbook',
    );
    return response ?? Orderbook();
  }

  static Future<List<LimitOrderModel>> getOrders({String assetPairId}) async {
    var request = LimitOrdersRequest();
    if (assetPairId != null) request.assetPairId = assetPairId;
    final response = await ErrorHandler.safeCall<LimitOrdersResponse>(
      () => _api.clientSecure.getOrders(request),
      method: 'getOrders',
    );
    return response?.result?.orders ?? [];
  }

  static Future<List<TradesResponse_TradeModel>> getTrades({
    @required int take,
    @required int skip,
    String assetPairId,
    String tradeType,
    Timestamp fromDate,
    Timestamp toDate,
  }) async {
    var request = TradesRequest();
    request.take = take;
    request.skip = skip;
    if (assetPairId != null) request.assetPairId = assetPairId;
    if (fromDate != null) request.from = fromDate;
    if (toDate != null) request.to = toDate;

    final response = await ErrorHandler.safeCall<TradesResponse>(
      () => _api.clientSecure.getTrades(request),
      method: 'getTrades',
    );
    return response?.trades ?? [];
  }

  static Future<List<AssetTradesResponse_AssetTradeModel>> getAssetTrades({
    @required String assetId,
    @required int take,
    @required int skip,
  }) async {
    final response = await ErrorHandler.safeCall<AssetTradesResponse>(
      () => _api.clientSecure.getAssetTrades(
        AssetTradesRequest()
          ..assetId = assetId
          ..take = take
          ..skip = skip,
      ),
      method: 'getAssetTrades',
    );
    return response?.trades ?? [];
  }

  static Future<bool> cancelOrder(String orderId) async {
    final response = await ErrorHandler.safeCall<CancelOrderResponse>(
      () => _api.clientSecure.cancelOrder(
        CancelOrderRequest()..orderId = orderId,
      ),
      method: 'cancelOrder',
    );
    return response?.payload ?? false;
  }

  static Future<bool> cancelAllOrders() async {
    final response = await ErrorHandler.safeCall<CancelOrderResponse>(
      () => _api.clientSecure.cancelAllOrders(CancelOrdersRequest()),
      method: 'cancelAllOrders',
    );
    return response?.payload ?? false;
  }

  static Future<OrderModel> placeLimitOrder({
    @required String assetPairId,
    @required String assetId,
    @required double volume,
    @required double price,
  }) async {
    final response = await ErrorHandler.safeCall<PlaceOrderResponse>(
      () => _api.clientSecure.placeLimitOrder(
        LimitOrderRequest()
          ..assetPairId = assetPairId
          ..assetId = assetId
          ..volume = volume
          ..price = price,
      ),
      method: 'placeLimitOrder',
    );
    return response?.result?.order;
  }

  static Future<OrderModel> placeMarketOrder({
    @required String assetPairId,
    @required String assetId,
    @required double volume,
  }) async {
    final response = await ErrorHandler.safeCall<PlaceOrderResponse>(
      () => _api.clientSecure.placeMarketOrder(
        MarketOrderRequest()
          ..assetPairId = assetPairId
          ..assetId = assetId
          ..volume = volume,
      ),
      method: 'placeMarketOrder',
    );
    return response?.result?.order;
  }
}
