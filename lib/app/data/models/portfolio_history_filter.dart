import 'dart:convert';

import 'package:antares_wallet/app/core/common/common.dart';
import 'package:antares_wallet/app/data/data_sources/app_storage.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/timestamp.pb.dart';
import 'package:antares_wallet/app/data/models/history_filter.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:get/get.dart';

enum PortfolioPeriod { all, day, week, custom }

enum PortfolioTransactionType { all, deposit, withdraw }

class PortfolioHistoryFilter {
  PortfolioPeriod period = PortfolioPeriod.all;
  PortfolioTransactionType transactionType = PortfolioTransactionType.all;
  String assetId;

  int _timeFrom;
  set timeFrom(int value) => _timeFrom = value;
  int get timeFrom {
    switch (period) {
      case PortfolioPeriod.all:
        return null;
      case PortfolioPeriod.day:
        return DateTime.now()
            .subtract(Duration(hours: 24))
            .millisecondsSinceEpoch;
      case PortfolioPeriod.week:
        return DateTime.now()
            .subtract(Duration(days: 7))
            .millisecondsSinceEpoch;
      case PortfolioPeriod.custom:
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
      case PortfolioPeriod.all:
      case PortfolioPeriod.day:
      case PortfolioPeriod.week:
        return DateTime.now().millisecondsSinceEpoch;
      case PortfolioPeriod.custom:
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
    period = PortfolioPeriod.all;
    transactionType = PortfolioTransactionType.all;
    assetId = null;
    timeFrom = null;
    timeTo = null;
  }

  Future<void> save() async {
    final storage = Get.find<IAppStorage>();

    HistoryFilter filter = HistoryFilter(
      period: EnumToString.convertToString(period ?? PortfolioPeriod.all),
      transactionType: EnumToString.convertToString(
        transactionType ?? PortfolioTransactionType.all,
      ),
      asset: assetId ?? '',
      timeFrom: timeFrom,
      timeTo: timeTo,
    );

    String filterJson = json.encode(filter.toJson());

    await storage.setString(AppStorageKeys.portfolioHistoryFilter, filterJson);
  }

  static Future<PortfolioHistoryFilter> fromStorage() async {
    String filterJson = await Get.find<IAppStorage>().getString(
      AppStorageKeys.portfolioHistoryFilter,
    );

    if (filterJson.nullOrEmpty) {
      return PortfolioHistoryFilter();
    } else {
      final historyFilter = HistoryFilter.fromJson(json.decode(filterJson));
      return PortfolioHistoryFilter()
        ..period = EnumToString.fromString(
          PortfolioPeriod.values,
          historyFilter.period,
        )
        ..transactionType = EnumToString.fromString(
          PortfolioTransactionType.values,
          historyFilter.transactionType,
        )
        ..assetId = historyFilter.asset.nullOrEmpty ? null : historyFilter.asset
        ..timeFrom = historyFilter.timeFrom
        ..timeTo = historyFilter.timeTo;
    }
  }
}
