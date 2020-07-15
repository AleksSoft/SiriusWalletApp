import 'package:antares_wallet/services/repositories/portfolio_history_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/select_asset/select_asset_controller.dart';
import 'package:antares_wallet/ui/pages/select_asset/select_asset_page.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class PortfolioHistoryFiltersController extends GetxController {
  static PortfolioHistoryFiltersController get con => Get.find();

  final _repository = Get.find<PortfolioHistoryRepository>();

  PeriodFilter get filterPeriod => _repository.filter.period;

  TransactionTypeFilter get filterTransactionType =>
      _repository.filter.transactionType;

  Asset get filterAsset => _repository.filter.asset;

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

  void updateFilterAsset() async {
    final asset = await Get.toNamed(
      SelectAssetPage.route,
      arguments: SelectAssetArgs(
        title: 'select_asset'.tr,
        selectedAsset: filterAsset,
      ),
    );
    _repository.updateFilterAsset(asset as Asset);
    update();
  }

  void clearFilterAsset() {
    _repository.updateFilterAsset(null);
    update();
  }
}
