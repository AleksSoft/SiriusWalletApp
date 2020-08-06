import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:antares_wallet/src/google/protobuf/timestamp.pb.dart';
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
    try {
      final response = await _api.clientSecure.getCandles(CandlesRequest()
        ..assetPairId = assetPairId
        ..type = type
        ..interval = interval
        ..from = from
        ..to = to);
      return response.candles;
    } catch (e) {
      Get.defaultDialog(
        title: 'Error',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
      return List();
    }
  }

  static Future<List<LimitOrderModel>> getOrders({String assetPairId}) async {
    try {
      var request = LimitOrdersRequest();
      if (assetPairId != null) request.assetPairId = assetPairId;
      final response = await _api.clientSecure.getOrders(request);
      return response.result.orders;
    } catch (e) {
      Get.defaultDialog(
        title: 'Error',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
      return List();
    }
  }

  static Future<List<TradesResponse_TradeModel>> getTrades({
    @required int take,
    @required int skip,
    String assetPairId,
    String tradeType,
    Timestamp fromDate,
    Timestamp toDate,
  }) async {
    try {
      var request = TradesRequest();
      request.take = take;
      request.skip = skip;
      if (assetPairId != null) request.assetPairId = assetPairId;
      if (fromDate != null) request.from = fromDate;
      if (toDate != null) request.to = toDate;

      final response = await _api.clientSecure.getTrades(request);
      return response.trades;
    } catch (e) {
      Future.delayed(Duration()).then((value) => Get.defaultDialog(
            middleText: e.message,
            onConfirm: () => Get.back(),
          ));
      return List();
    }
  }

  static Future<bool> cancelOrder(String orderId) async {
    try {
      final response = await _api.clientSecure.cancelOrder(
        CancelOrderRequest()..orderId = orderId,
      );
      return response.payload;
    } catch (e) {
      Get.defaultDialog(
        title: 'Error',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
      return false;
    }
  }

  static Future<bool> cancelAllOrders() async {
    try {
      final response = await _api.clientSecure.cancelAllOrders(
        CancelOrdersRequest(),
      );
      return response.payload;
    } catch (e) {
      Get.defaultDialog(
        title: 'Error',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
      return false;
    }
  }

  static Future<OrderModel> placeLimitOrder({
    @required String assetPairId,
    @required String assetId,
    @required double volume,
    @required double price,
  }) async {
    try {
      final response = await _api.clientSecure.placeLimitOrder(
        LimitOrderRequest()
          ..assetPairId = assetPairId
          ..assetId = assetId
          ..volume = volume
          ..price = price,
      );
      return response.result.order;
    } catch (e) {
      Get.defaultDialog(
        title: 'Error',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
      return null;
    }
  }

  static Future<OrderModel> placeMarketOrder({
    @required String assetPairId,
    @required String assetId,
    @required double volume,
  }) async {
    try {
      final response = await _api.clientSecure.placeMarketOrder(
        MarketOrderRequest()
          ..assetPairId = assetPairId
          ..assetId = assetId
          ..volume = volume,
      );
      return response.result.order;
    } catch (e) {
      Get.defaultDialog(
        title: 'Error',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
      return null;
    }
  }
}
