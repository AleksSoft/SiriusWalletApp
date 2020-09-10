import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/controllers/portfolio_controller.dart';
import 'package:antares_wallet/models/portfolio_history_filter.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/select_asset/select_asset_controller.dart';
import 'package:antares_wallet/ui/pages/select_asset/select_asset_page.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class PortfolioHistoryFiltersController extends GetxController {
  static PortfolioHistoryFiltersController get con => Get.find();

  final _assetsController = Get.find<AssetsController>();

  final DateFormat _dateFormat = DateFormat('d.M.y');

  PortfolioHistoryFilter _filter;

  HistoryPeriod get period => _filter.period;
  set period(HistoryPeriod value) {
    if (_filter.period != value) {
      _filter.period = value;
      update();
    }
  }

  HistoryTransactionType get transactionType => _filter.transactionType;
  set transactionType(HistoryTransactionType value) {
    if (_filter.transactionType != value) {
      _filter.transactionType = value;
      update();
    }
  }

  Asset get asset => _assetsController.assetById(_filter.assetId);
  set asset(Asset value) {
    if (_filter.assetId != value?.id) {
      _filter.assetId = value?.id;
      update();
    }
  }

  int get timeFrom => _filter.timeFrom;
  set timeFrom(int value) => _filter.timeFrom = value;

  int get timeTo => _filter.timeTo;
  set timeTo(int value) => _filter.timeTo = value;

  String get timeFromStr => timeFrom != null
      ? _dateFormat.format(DateTime.fromMillisecondsSinceEpoch(timeFrom))
      : '';

  String get timeToStr => timeTo != null
      ? _dateFormat.format(DateTime.fromMillisecondsSinceEpoch(timeTo))
      : '';

  @override
  void onInit() {
    _filter = PortfolioHistoryFilter.fromStorage();
    super.onInit();
  }

  void applyFilter() {
    _filter.save();
    PortfolioController.con.reloadHistory(newFilter: _filter);
    Get.back();
  }

  void clearFilter() {
    _filter.clear();
    update();
  }

  void updateFilterAsset() async {
    asset = (await Get.toNamed(
      SelectAssetPage.route,
      arguments: SelectAssetArgs(
        title: 'select_asset'.tr,
        selectedAsset: asset,
      ),
    )) as Asset;
  }

  String getTypeTitle(HistoryTransactionType type) {
    switch (type) {
      case HistoryTransactionType.all:
        return 'all'.tr;
      case HistoryTransactionType.deposit:
        return 'deposit'.tr;
      case HistoryTransactionType.withdraw:
        return 'withdraw'.tr;
      default:
        return '';
    }
  }

  String getPeriodTitle(HistoryPeriod period) {
    switch (period) {
      case HistoryPeriod.all:
        return 'all'.tr;
      case HistoryPeriod.day:
        return 'day'.tr;
      case HistoryPeriod.week:
        return 'week'.tr;
      case HistoryPeriod.custom:
        return 'custom'.tr;
      default:
        return '';
    }
  }
}
