import 'package:antares_wallet/app/locator.dart';
import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/services/repositories/portfolio_history_repository.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';

class PortfolioHistoryFiltersViewModel extends BaseViewModel {
  final _repository = locator<PortfolioHistoryRepository>();

  PeriodFilter get filterPeriod => _repository.filter.period;
  TransactionTypeFilter get filterTransactionType =>
      _repository.filter.transactionType;
  AssetData get filterAsset => _repository.filter.asset;
  int get filterTimeFrom => _repository.filter.timeFrom;
  int get filterTimeTo => _repository.filter.timeTo;
  String get filterTimeFromStr => DateFormat('d.M.y').format(
        DateTime.fromMillisecondsSinceEpoch(_repository.filter.timeFrom),
      );
  String get filterTimeToStr => DateFormat('d.M.y').format(
        DateTime.fromMillisecondsSinceEpoch(_repository.filter.timeTo),
      );

  void clearFilter() {
    _repository.clearFilter();
    notifyListeners();
  }

  void updateFilterPeriod(PeriodFilter filter) {
    _repository.updateFilterPeriod(filter);
    notifyListeners();
  }

  void updateCustomTimeFrom(int timeFrom) {
    _repository.updateCustomTimeFrom(timeFrom);
    notifyListeners();
  }

  void updateCustomTimeTo(int timeTo) {
    _repository.updateCustomTimeTo(timeTo);
    notifyListeners();
  }

  void updateFilterTransType(TransactionTypeFilter filter) {
    _repository.updateFilterTransType(filter);
    notifyListeners();
  }

  void updateFilterAsset(AssetData asset) {
    _repository.updateFilterAsset(asset);
    notifyListeners();
  }
}
