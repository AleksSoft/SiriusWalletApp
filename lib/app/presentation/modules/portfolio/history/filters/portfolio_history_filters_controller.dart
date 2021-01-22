import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/models/portfolio_history_filter.dart';
import 'package:antares_wallet/app/domain/entities/select_asset_args.dart';
import 'package:antares_wallet/app/presentation/modules/portfolio/assets/assets_controller.dart';
import 'package:antares_wallet/app/presentation/modules/portfolio/portfolio_controller.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class PortfolioHistoryFiltersController extends GetxController {
  static PortfolioHistoryFiltersController get con => Get.find();

  final _assetsController = Get.find<AssetsController>();

  final DateFormat _dateFormat = DateFormat('d.M.y');

  PortfolioHistoryFilter _filter;

  PortfolioPeriod get period => _filter.period;
  set period(PortfolioPeriod value) {
    if (_filter.period != value) {
      _filter.period = value;
      update();
    }
  }

  PortfolioTransactionType get transactionType => _filter.transactionType;
  set transactionType(PortfolioTransactionType value) {
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
    PortfolioHistoryFilter.fromStorage().then((value) {
      _filter = value;
      update();
    });
    super.onInit();
  }

  Future<void> applyFilter() async {
    await _filter.save();
    PortfolioController.con.reloadHistory(newFilter: _filter);
    Get.back();
  }

  void clearFilter() {
    _filter.clear();
    update();
  }

  void updateFilterAsset() async {
    asset = (await Get.toNamed(
      Routes.SELECT_ASSET,
      arguments: SelectAssetArgs(
        title: 'select_asset'.tr,
        selectedAsset: asset,
      ),
    )) as Asset;
  }

  String getTypeTitle(PortfolioTransactionType type) {
    switch (type) {
      case PortfolioTransactionType.all:
        return 'all'.tr;
      case PortfolioTransactionType.deposit:
        return 'deposit'.tr;
      case PortfolioTransactionType.withdraw:
        return 'withdraw'.tr;
      default:
        return '';
    }
  }

  String getPeriodTitle(PortfolioPeriod period) {
    switch (period) {
      case PortfolioPeriod.all:
        return 'all'.tr;
      case PortfolioPeriod.day:
        return 'day'.tr;
      case PortfolioPeriod.week:
        return 'week'.tr;
      case PortfolioPeriod.custom:
        return 'custom'.tr;
      default:
        return '';
    }
  }
}
