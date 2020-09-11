import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/src/google/protobuf/timestamp.pb.dart';
import 'package:cross_local_storage/cross_local_storage.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:get/get.dart';

enum OrdersPeriod { all, day, week, custom }

enum OrdersTransactionType { all, buy, sell }

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

  void save() {
    Get.find<LocalStorageInterface>().setStringList(
      AppStorageKeys.ordersHistoryFilters,
      <String>[
        EnumToString.parse(period ?? OrdersPeriod.all),
        EnumToString.parse(transactionType ?? OrdersTransactionType.all),
        assetPairId ?? '',
        (timeFrom ?? '-').toString(),
        (timeTo ?? '-').toString(),
      ],
    );
  }

  static OrdersHistoryFilter fromStorage() {
    var filterList = Get.find<LocalStorageInterface>().getStringList(
      AppStorageKeys.ordersHistoryFilters,
    );
    if (filterList == null || filterList.isEmpty || filterList.length != 5) {
      return OrdersHistoryFilter();
    } else {
      return OrdersHistoryFilter()
        ..period = EnumToString.fromString(OrdersPeriod.values, filterList[0])
        ..transactionType =
            EnumToString.fromString(OrdersTransactionType.values, filterList[1])
        ..assetPairId = filterList[2].isEmpty ? null : filterList[2]
        ..timeFrom = int.tryParse(filterList[3])
        ..timeTo = int.tryParse(filterList[4]);
    }
  }
}
