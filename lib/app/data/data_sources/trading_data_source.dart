import 'package:antares_wallet/app/core/error/safe_call_handler.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/services/api/api_service.dart';
import 'package:meta/meta.dart';

abstract class ITradingDataSource {
  Future<CandlesResponse> getCandles(CandlesRequest r);
  Future<OrderbookResponse> getOrderbook(OrderbookRequest r);
  Future<LimitOrdersResponse> getOrders(LimitOrdersRequest r);
  Future<TradesResponse> getTrades(TradesRequest r);
  Future<AssetTradesResponse> getAssetTrades(AssetTradesRequest r);
  Future<CancelOrderResponse> cancelOrder(CancelOrderRequest r);
  Future<CancelOrderResponse> cancelAllOrders(CancelOrdersRequest r);
  Future<PlaceOrderResponse> placeLimitOrder(LimitOrderRequest r);
  Future<PlaceOrderResponse> placeMarketOrder(MarketOrderRequest r);
  Future<PlaceOrderResponse> editOrder(EditOrderRequest r);
}

class TradingDataSource with SafeCallHandler implements ITradingDataSource {
  TradingDataSource({@required this.api});
  final ApiService api;

  @override
  Future<CandlesResponse> getCandles(CandlesRequest r) => safeCall(
        () => api.clientSecure.getCandles(r),
        method: 'getCandles',
      );

  @override
  Future<OrderbookResponse> getOrderbook(OrderbookRequest r) => safeCall(
        () => api.clientSecure.getOrderbook(r),
        method: 'getOrderbook',
      );

  @override
  Future<LimitOrdersResponse> getOrders(LimitOrdersRequest r) => safeCall(
        () => api.clientSecure.getOrders(r),
        method: 'getOrders',
      );

  @override
  Future<TradesResponse> getTrades(TradesRequest r) => safeCall(
        () => api.clientSecure.getTrades(r),
        method: 'getTrades',
      );

  @override
  Future<AssetTradesResponse> getAssetTrades(AssetTradesRequest r) => safeCall(
        () => api.clientSecure.getAssetTrades(r),
        method: 'getAssetTrades',
      );

  @override
  Future<CancelOrderResponse> cancelOrder(CancelOrderRequest r) => safeCall(
        () => api.clientSecure.cancelOrder(r),
        method: 'cancelOrder',
      );

  @override
  Future<CancelOrderResponse> cancelAllOrders(CancelOrdersRequest r) =>
      safeCall(
        () => api.clientSecure.cancelAllOrders(r),
        method: 'cancelAllOrders',
      );

  @override
  Future<PlaceOrderResponse> placeLimitOrder(LimitOrderRequest r) => safeCall(
        () => api.clientSecure.placeLimitOrder(r),
        method: 'placeLimitOrder',
      );

  @override
  Future<PlaceOrderResponse> placeMarketOrder(MarketOrderRequest r) => safeCall(
        () => api.clientSecure.placeMarketOrder(r),
        method: 'placeMarketOrder',
      );

  @override
  Future<PlaceOrderResponse> editOrder(EditOrderRequest r) => safeCall(
        () => api.clientSecure.editOrder(r),
        method: 'editOrder',
      );
}
