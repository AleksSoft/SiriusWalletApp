import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/src/google/protobuf/timestamp.pb.dart';
import 'package:cross_local_storage/cross_local_storage.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:get/get.dart';

enum HistoryPeriod { all, day, week, custom }

enum HistoryTransactionType { all, deposit, withdraw }

class PortfolioHistoryFilter {
  HistoryPeriod period = HistoryPeriod.all;
  HistoryTransactionType transactionType = HistoryTransactionType.all;
  String assetId;

  int _timeFrom;
  set timeFrom(int value) => _timeFrom = value;
  int get timeFrom {
    switch (period) {
      case HistoryPeriod.all:
        return null;
      case HistoryPeriod.day:
        return DateTime.now()
            .subtract(Duration(hours: 24))
            .millisecondsSinceEpoch;
      case HistoryPeriod.week:
        return DateTime.now()
            .subtract(Duration(days: 7))
            .millisecondsSinceEpoch;
      case HistoryPeriod.custom:
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
      case HistoryPeriod.all:
      case HistoryPeriod.day:
      case HistoryPeriod.week:
        return DateTime.now().millisecondsSinceEpoch;
      case HistoryPeriod.custom:
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
    period = HistoryPeriod.all;
    transactionType = HistoryTransactionType.all;
    assetId = null;
    timeFrom = null;
    timeTo = null;
  }

  void save() {
    Get.find<LocalStorageInterface>().setStringList(
      AppStorageKeys.portrolioHistoryFilters,
      <String>[
        EnumToString.parse(period ?? HistoryPeriod.all),
        EnumToString.parse(transactionType ?? HistoryTransactionType.all),
        assetId ?? '',
        (timeFrom ?? '-').toString(),
        (timeTo ?? '-').toString(),
      ],
    );
  }

  static PortfolioHistoryFilter fromStorage() {
    var filterList = Get.find<LocalStorageInterface>().getStringList(
      AppStorageKeys.portrolioHistoryFilters,
    );
    if (filterList == null || filterList.isEmpty || filterList.length != 5) {
      return PortfolioHistoryFilter();
    } else {
      return PortfolioHistoryFilter()
        ..period = EnumToString.fromString(HistoryPeriod.values, filterList[0])
        ..transactionType = EnumToString.fromString(
            HistoryTransactionType.values, filterList[1])
        ..assetId = filterList[2].isEmpty ? null : filterList[2]
        ..timeFrom = int.tryParse(filterList[3])
        ..timeTo = int.tryParse(filterList[4]);
    }
  }
}
