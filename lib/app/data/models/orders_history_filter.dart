import 'dart:convert';

import 'package:antares_wallet/app/core/common/common.dart';
import 'package:antares_wallet/app/data/data_sources/app_storage.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/timestamp.pb.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:get/get.dart';

import 'history_filter.dart';

class OrdersHistoryFilter {
  OrdersPeriod period = OrdersPeriod.all;
  OrdersTransactionType transactionType = OrdersTransactionType.all;
  String assetPairId;

  int _timeFrom;
  set timeFrom(int value) => _timeFrom = value;
  int get timeFrom {
    switch (period) {
      case OrdersPeriod.all:
        return null;
      case OrdersPeriod.day:
        return DateTime.now()
            .subtract(Duration(hours: 24))
            .millisecondsSinceEpoch;
      case OrdersPeriod.week:
        return DateTime.now()
            .subtract(Duration(days: 7))
            .millisecondsSinceEpoch;
      case OrdersPeriod.custom:
        return _timeFrom ??
            DateTime.now().subtract(Duration(days: 7)).millisecondsSinceEpoch;
      default:
        return _timeFrom;
    }
  }

  int _timeTo;
  set timeTo(int value) => _timeTo = value;
  int get timeTo {
    switch (period) {
      case OrdersPeriod.all:
      case OrdersPeriod.day:
      case OrdersPeriod.week:
        return DateTime.now().millisecondsSinceEpoch;
      case OrdersPeriod.custom:
        return _timeTo ?? DateTime.now().millisecondsSinceEpoch;
      default:
        return _timeTo;
    }
  }

  Timestamp get fromDate => timeFrom == null
      ? null
      : Timestamp.fromDateTime(
          DateTime.fromMillisecondsSinceEpoch(timeFrom),
        );

  Timestamp get toDate => _timeTo == null
      ? null
      : Timestamp.fromDateTime(
          DateTime.fromMillisecondsSinceEpoch(timeTo),
        );

  void clear() {
    period = OrdersPeriod.all;
    transactionType = OrdersTransactionType.all;
    assetPairId = null;
    timeFrom = null;
    timeTo = null;
  }

  Future<void> save() async {
    final storage = Get.find<IAppStorage>();

    HistoryFilter filter = HistoryFilter(
      period: EnumToString.convertToString(period ?? OrdersPeriod.all),
      transactionType: EnumToString.convertToString(
        transactionType ?? OrdersTransactionType.all,
      ),
      asset: assetPairId ?? '',
      timeFrom: timeFrom,
      timeTo: timeTo,
    );

    String filterJson = json.encode(filter.toJson());

    await storage.setString(AppStorageKeys.ordersHistoryFilter, filterJson);
  }

  static Future<OrdersHistoryFilter> fromStorage() async {
    String filterJson = await Get.find<IAppStorage>().getString(
      AppStorageKeys.ordersHistoryFilter,
    );

    if (filterJson.nullOrEmpty) {
      return OrdersHistoryFilter();
    } else {
      final historyFilter = HistoryFilter.fromJson(json.decode(filterJson));
      return OrdersHistoryFilter()
        ..period = EnumToString.fromString(
          OrdersPeriod.values,
          historyFilter.period,
        )
        ..transactionType = EnumToString.fromString(
          OrdersTransactionType.values,
          historyFilter.transactionType,
        )
        ..assetPairId =
            historyFilter.asset.nullOrEmpty ? null : historyFilter.asset
        ..timeFrom = historyFilter.timeFrom
        ..timeTo = historyFilter.timeTo;
    }
  }
}
