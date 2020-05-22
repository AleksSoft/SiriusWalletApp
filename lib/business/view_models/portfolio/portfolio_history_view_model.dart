import 'package:antares_wallet/business/dto/portfolio_history_item.dart';
import 'package:antares_wallet/business/services/api/mock_api.dart';
import 'package:antares_wallet/locator.dart';
import 'package:flutter/foundation.dart';
import 'package:stacked/stacked.dart';

class PortfolioHistoryViewModel extends BaseViewModel {
  final _api = locator<MockApi>();

  final VoidCallback onOpenFilter;
  final VoidCallback onCloseFilter;

  PortfolioHistoryViewModel({this.onOpenFilter, this.onCloseFilter}) {
    setBusy(true);
  }

  PeriodFilter _previousPeriodFilter = PeriodFilter.all;

  TransactionType _previousTransTypeFilter = TransactionType.all;

  PeriodFilter _periodFilter = PeriodFilter.all;

  PeriodFilter get periodFilter => _periodFilter;

  set periodFilter(PeriodFilter filter) {
    _periodFilter = filter;
    notifyListeners();
  }

  TransactionType _transTypeFilter = TransactionType.all;

  TransactionType get transTypeFilter => _transTypeFilter;

  set transTypeFilter(TransactionType filter) {
    _transTypeFilter = filter;
    notifyListeners();
  }

  bool _filterOpened = false;

  bool get filterOpened => _filterOpened;

  set filterOpened(bool opened) {
    _filterOpened = opened;
    // save previous filters
    _previousPeriodFilter = _periodFilter;
    _previousTransTypeFilter = _transTypeFilter;
    notifyListeners();
  }

  List<PortfolioHistoryItem> _portfolioHistoryItems = List();

  List<PortfolioHistoryItem> get historyItems {
    List<PortfolioHistoryItem> filtered = _portfolioHistoryItems;
    filtered.sort((a, b) => a.timestamp.compareTo(b.timestamp));
    if (_transTypeFilter != TransactionType.all) {
      filtered = _portfolioHistoryItems
          .where(
            (i) => i.transactionType == _transTypeFilter,
          )
          .toList();
    }
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

  closeFilter() {
    // restore previous filters
    _restorePreviousFilters();
    onCloseFilter();
  }

  clearFilter() {
    _periodFilter = PeriodFilter.all;
    _transTypeFilter = TransactionType.all;
    notifyListeners();
  }

  toggleFilter() {
    if (_filterOpened) {
      onCloseFilter();
    } else {
      onOpenFilter();
    }
  }

  _restorePreviousFilters() {
    _periodFilter = _previousPeriodFilter;
    _transTypeFilter = _previousTransTypeFilter;
  }
}

enum PeriodFilter { all, day, week, custom }

enum TransactionType { all, deposit, withdraw }
