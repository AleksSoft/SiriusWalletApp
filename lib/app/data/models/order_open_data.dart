import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

class OrderOpenData {
  final String baseAssetName;
  final String quoteAssetName;
  final double amount;
  final double remainingVolume;
  final String price;
  final String orderType;
  final String date;
  final LimitOrderModel orderModel;

  OrderOpenData({
    @required this.baseAssetName,
    @required this.quoteAssetName,
    @required this.amount,
    @required this.remainingVolume,
    @required this.price,
    @required this.date,
    @required this.orderType,
    @required this.orderModel,
  });

  OrderOpenData.fromOrder(
      String baseName, String quoteName, LimitOrderModel order)
      : this.orderModel = order,
        this.baseAssetName = baseName,
        this.quoteAssetName = quoteName,
        this.amount = double.tryParse(order?.volume) ?? 0.0,
        this.remainingVolume = double.tryParse(order?.remainingVolume) ?? 0.0,
        this.price = order.price,
        this.orderType = order.orderType,
        this.date = DateFormat().addPattern('dd.MM.yy HH:mm:ss').format(
              DateTime.fromMillisecondsSinceEpoch(
                order.dateTime.seconds.toInt() * 1000,
              ),
            );

  int get filled {
    return ((amount - remainingVolume) * 100 ~/ amount).toInt();
  }

  bool get isSell => orderType.toLowerCase() == 'sell'.toLowerCase();
}
