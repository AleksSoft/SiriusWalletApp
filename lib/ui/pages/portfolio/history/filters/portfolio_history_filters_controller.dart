import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/services/repositories/portfolio_history_repository.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class PortfolioHistoryFiltersController extends GetxController {
  static PortfolioHistoryFiltersController get con => Get.find();

  final _repository = Get.find<PortfolioHistoryRepository>();

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
    update();
  }

  void updateFilterPeriod(PeriodFilter filter) {
    _repository.updateFilterPeriod(filter);
    update();
  }

  void updateCustomTimeFrom(int timeFrom) {
    _repository.updateCustomTimeFrom(timeFrom);
    update();
  }

  void updateCustomTimeTo(int timeTo) {
    _repository.updateCustomTimeTo(timeTo);
    update();
  }

  void updateFilterTransType(TransactionTypeFilter filter) {
    _repository.updateFilterTransType(filter);
    update();
  }

  void updateFilterAsset(AssetData asset) {
    _repository.updateFilterAsset(asset);
    update();
  }
}
