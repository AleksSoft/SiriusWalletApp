import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:antares_wallet/src/google/protobuf/timestamp.pb.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class OrderRepository {
  Future<List<LimitOrderModel>> getOrders({String assetPairId}) async {
    try {
      var request = LimitOrdersRequest();
      if (assetPairId != null) request.assetPairId = assetPairId;
      final response = await ApiService.client.getOrders(request);
      return response.result.orders;
    } catch (e) {
      Get.defaultDialog(
        title: 'Error (${e.code})',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
      return List();
    }
  }

  Future<List<TradesResponse_TradeModel>> getTrades({
    @required String walletId,
    @required int take,
    @required int skip,
    String assetPairId,
    String tradeType,
    Timestamp fromDate,
    Timestamp toDate,
  }) async {
    try {
      var request = TradesRequest()
        ..walletId = walletId
        ..take = take
        ..skip = skip
        ..assetPairId = assetPairId
        ..tradeType = tradeType
        ..from = fromDate
        ..to = toDate;
      final response = await ApiService.client.getTrades(request);
      return response.trades;
    } catch (e) {
      Get.defaultDialog(
        title: 'Error (${e.code})',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
      return List();
    }
  }

  Future<bool> cancelOrder(String orderId) async {
    try {
      final response = await ApiService.client.cancelOrder(
        CancelOrderRequest()..orderId = orderId,
      );
      return response.payload;
    } catch (e) {
      Get.defaultDialog(
        title: 'Error (${e.code})',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
      return false;
    }
  }

  Future<bool> cancelAllOrders() async {
    try {
      final response = await ApiService.client.cancelAllOrders(
        CancelOrdersRequest(),
      );
      return response.payload;
    } catch (e) {
      Get.defaultDialog(
        title: 'Error (${e.code})',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
      return false;
    }
  }

  Future<OrderModel> placeLimitOrder({
    @required String assetPairId,
    @required String assetId,
    @required double volume,
    @required double price,
  }) async {
    try {
      final response = await ApiService.client.placeLimitOrder(
        LimitOrderRequest()
          ..assetPairId = assetPairId
          ..assetId = assetId
          ..volume = volume
          ..price = price,
      );
      return response.result.order;
    } catch (e) {
      Get.defaultDialog(
        title: 'Error (${e.code})',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
      return null;
    }
  }

  Future<OrderModel> placeMarketOrder({
    @required String assetPairId,
    @required String assetId,
    @required double volume,
  }) async {
    try {
      final response = await ApiService.client.placeMarketOrder(
        MarketOrderRequest()
          ..assetPairId = assetPairId
          ..assetId = assetId
          ..volume = volume,
      );
      return response.result.order;
    } catch (e) {
      Get.defaultDialog(
        title: 'Error (${e.code})',
        middleText: e.message,
        onConfirm: () => Get.back(),
      );
      return null;
    }
  }
}
