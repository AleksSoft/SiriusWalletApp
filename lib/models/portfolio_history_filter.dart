import 'dart:convert';

import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/models/history_filter.dart';
import 'package:antares_wallet/src/google/protobuf/timestamp.pb.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:get_storage/get_storage.dart';

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

  Future<void> save() async {
    final storage = GetStorage();

    HistoryFilter filter = HistoryFilter(
      period: EnumToString.parse(period ?? HistoryPeriod.all),
      transactionType: EnumToString.parse(
        transactionType ?? HistoryTransactionType.all,
      ),
      asset: assetId ?? '',
      timeFrom: timeFrom,
      timeTo: timeTo,
    );

    await storage.write(AppStorageKeys.ordersHistoryFilters, filter);
  }

  static PortfolioHistoryFilter fromStorage() {
    final storage = GetStorage();

    String filterJson = storage.read(AppStorageKeys.errorList);
    HistoryFilter historyFilter = GetUtils.isNullOrBlank(filterJson)
        ? HistoryFilter()
        : HistoryFilter.fromJson(json.decode(filterJson));

    if (historyFilter == null) {
      return PortfolioHistoryFilter();
    } else {
      return PortfolioHistoryFilter()
        ..period = EnumToString.fromString(
          HistoryPeriod.values,
          historyFilter.period,
        )
        ..transactionType = EnumToString.fromString(
          HistoryTransactionType.values,
          historyFilter.transactionType,
        )
        ..assetId = GetUtils.isNullOrBlank(historyFilter.asset)
            ? null
            : historyFilter.asset
        ..timeFrom = historyFilter.timeFrom
        ..timeTo = historyFilter.timeTo;
    }
  }
}
