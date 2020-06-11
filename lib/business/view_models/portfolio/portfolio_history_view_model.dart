import 'package:antares_wallet/business/dto/asset_dictionary_data.dart';
import 'package:antares_wallet/business/dto/portfolio_history_item.dart';
import 'package:antares_wallet/business/services/api/mock_api.dart';
import 'package:antares_wallet/locator.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';

enum PeriodFilter { all, day, week, custom }

enum TransactionTypeFilter { all, deposit, withdraw }

class PortfolioHistoryViewModel extends BaseViewModel {
  final _api = locator<MockApiService>();

  PortfolioHistoryFilter _filter;

  List<PortfolioHistoryItem> _portfolioHistoryItems = List();

  bool _filterOpened = false;

  PortfolioHistoryViewModel() {
    _filter = PortfolioHistoryFilter.initial();
    setBusy(true);
  }

  get filterOpened => _filterOpened;
  get filterPeriod => _filter.period;
  get filterTransactionType => _filter.transactionType;
  get filterAsset => _filter.asset;
  get filterTimeFrom => _filter.timeFrom;
  get filterTimeTo => _filter.timeTo;
  get filterTimeFromStr => DateFormat('d.M.y').format(
        DateTime.fromMillisecondsSinceEpoch(_filter.timeFrom),
      );
  get filterTimeToStr => DateFormat('d.M.y').format(
        DateTime.fromMillisecondsSinceEpoch(_filter.timeTo),
      );
  bool get itemsEmpty => _portfolioHistoryItems.isEmpty;

  List<PortfolioHistoryItem> get historyItems {
    List<PortfolioHistoryItem> filtered = _portfolioHistoryItems;
    filtered.sort((a, b) => a.timestamp.compareTo(b.timestamp));
    filtered = _portfolioHistoryItems
        .where((i) => _filter.byTransactionType(i))
        .where((i) => _filter.byPeriod(i))
        .where((i) => _filter.byAsset(i))
        .toList();
    return filtered.reversed.toList();
  }

  Future initialise() async {
    _portfolioHistoryItems = await _api.fetchPortfolioHistry();
    setBusy(false);
  }

  Future updateHistory() async {
    _portfolioHistoryItems = await _api.updatePortfolioHistory();
    notifyListeners();
  }

  void clearFilter() {
    _filter = PortfolioHistoryFilter.initial();
    notifyListeners();
  }

  void updateFilterPeriod(PeriodFilter filter) {
    _filter.period = filter;
    notifyListeners();
  }

  void updateCustomTimeFrom(int timeFrom) {
    assert(_filter.period == PeriodFilter.custom);
    _filter.timeFrom = timeFrom;
    notifyListeners();
  }

  void updateCustomTimeTo(int timeTo) {
    assert(_filter.period == PeriodFilter.custom);
    _filter.timeTo = timeTo;
    notifyListeners();
  }

  void updateFilterTransType(TransactionTypeFilter filter) {
    _filter.transactionType = filter;
    notifyListeners();
  }

  void updateFilterAsset(AssetData asset) {
    _filter.asset = asset;
    notifyListeners();
  }

  void updateFilterOpenedState(bool opened) {
    _filterOpened = opened;
    notifyListeners();
  }
}

class PortfolioHistoryFilter {
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

  PortfolioHistoryFilter.initial()
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
