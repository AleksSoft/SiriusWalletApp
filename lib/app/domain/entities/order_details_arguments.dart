import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';

class OrderDetailsArguments {
  final List<Orderbook_PriceVolume> bids;
  final List<Orderbook_PriceVolume> asks;
  final String price;
  final String amount;
  final String total;
  final String pairId;
  final String orderId;
  final bool isBuy;
  final bool isEdit;

  OrderDetailsArguments(
    this.pairId,
    this.isBuy, {
    this.isEdit,
    this.orderId,
    this.price,
    this.amount,
    this.total,
    this.bids,
    this.asks,
  });
}
