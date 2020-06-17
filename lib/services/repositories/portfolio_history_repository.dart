import 'package:antares_wallet/app/locator.dart';
import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/models/portfolio_history_item.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

enum PeriodFilter { all, day, week, custom }

enum TransactionTypeFilter { all, deposit, withdraw }

@lazySingleton
class PortfolioHistoryRepository with ReactiveServiceMixin {
  final _api = locator<MockApiService>();

  List<PortfolioHistoryItem> _historyItems = List();

  RxValue<_HistoryFilter> _filter =
      RxValue<_HistoryFilter>(initial: _HistoryFilter.initial());

  _HistoryFilter get filter => _filter.value;

  List<PortfolioHistoryItem> get items {
    List<PortfolioHistoryItem> filtered = _historyItems;
    filtered.sort((a, b) => a.timestamp.compareTo(b.timestamp));
    filtered = _historyItems
        .where((i) => filter.byTransactionType(i))
        .where((i) => filter.byPeriod(i))
        .where((i) => filter.byAsset(i))
        .toList();
    return filtered.reversed.toList();
  }

  PortfolioHistoryRepository() {
    listenToReactiveValues([_filter]);
  }

  Future<void> loadHistory() async {
    _historyItems = await _api.fetchPortfolioHistry();
  }

  Future<void> updateHistory() async {
    _historyItems = await _api.updatePortfolioHistory();
  }

  void clearFilter() {
    _filter.value = _HistoryFilter.initial();
    notifyListeners();
  }

  void updateFilterPeriod(PeriodFilter filter) {
    _filter.value.period = filter;
    notifyListeners();
  }

  void updateCustomTimeFrom(int timeFrom) {
    assert(filter.period == PeriodFilter.custom);
    _filter.value.timeFrom = timeFrom;
    notifyListeners();
  }

  void updateCustomTimeTo(int timeTo) {
    assert(filter.period == PeriodFilter.custom);
    _filter.value.timeTo = timeTo;
    notifyListeners();
  }

  void updateFilterTransType(TransactionTypeFilter filter) {
    _filter.value.transactionType = filter;
    notifyListeners();
  }

  void updateFilterAsset(AssetData asset) {
    _filter.value.asset = asset;
    notifyListeners();
  }
}

class _HistoryFilter {
  PeriodFilter _period;
  TransactionTypeFilter transactionType;
  AssetData asset;
  int _timeFrom;
  int _timeTo;

  PeriodFilter get period => _period;
  int get timeFrom => _timeFrom;
  int get timeTo => period == PeriodFilter.custom
      ? _timeTo
      : DateTime.now().millisecondsSinceEpoch;

  set period(PeriodFilter filter) {
    _period = filter;
    _updateTimeFromByPeriod();
  }

  set timeFrom(int time) {
    _timeFrom = time ?? _updateTimeFromByPeriod();
  }

  set timeTo(int time) {
    _timeTo = time ?? DateTime.now().millisecondsSinceEpoch;
  }

  _HistoryFilter.initial()
      : this._period = PeriodFilter.all,
        this.transactionType = TransactionTypeFilter.all,
        this.asset = null,
        this._timeFrom = 0,
        this._timeTo = DateTime.now().millisecondsSinceEpoch;

  bool byPeriod(PortfolioHistoryItem item) {
    switch (this.period) {
      case PeriodFilter.all:
        return true;
      case PeriodFilter.custom:
        return _timeFrom <= item.timestamp && item.timestamp <= _timeTo;
      case PeriodFilter.week:
      case PeriodFilter.day:
      default:
        return _timeFrom <= item.timestamp;
    }
  }

  bool byTransactionType(PortfolioHistoryItem item) {
    if (this.transactionType == TransactionTypeFilter.all) return true;
    switch (item.transactionType) {
      case TransactionType.deposit:
        return this.transactionType == TransactionTypeFilter.deposit;
      case TransactionType.withdraw:
        return this.transactionType == TransactionTypeFilter.withdraw;
      default:
        return true;
    }
  }

  bool byAsset(PortfolioHistoryItem item) {
    return this.asset == null || this.asset.symbol == item.asset.symbol;
  }

  _updateTimeFromByPeriod() {
    DateTime now = DateTime.now();
    switch (period) {
      case PeriodFilter.day:
        _timeFrom = now.subtract(Duration(days: 2)).millisecondsSinceEpoch;
        break;
      case PeriodFilter.week:
      case PeriodFilter.custom:
        _timeFrom = now.subtract(Duration(days: 8)).millisecondsSinceEpoch;
        break;
      case PeriodFilter.all:
      default:
        _timeFrom = 0;
        break;
    }
  }
}
