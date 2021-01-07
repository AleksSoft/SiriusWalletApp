import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/presentation/modules/root/root_controller.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

import '../../../../controllers/assets_controller.dart';
import '../../../../controllers/deposit_controller.dart';
import '../../../../controllers/markets_controller.dart';
import '../../../../controllers/portfolio_controller.dart';
import '../../../../controllers/withdrawal_controller.dart';

class HomeController extends GetxController {
  static HomeController get con => Get.find();

  HomeController({
    @required this.rootCon,
    @required this.assetsCon,
    @required this.marketsCon,
    @required this.portfolioCon,
    @required this.depositCon,
    @required this.withdrawalCon,
  });
  final RootController rootCon;
  final PortfolioController portfolioCon;
  final AssetsController assetsCon;
  final MarketsController marketsCon;
  final DepositController depositCon;
  final WithdrawalController withdrawalCon;

  final hidden = false.obs;

  String get shoHideTitle => this.hidden.value ? 'show'.tr : 'hide'.tr;

  void deposit() => depositCon.search();

  void withdraw() => withdrawalCon.search();

  void openPortfolio() => rootCon.pageIndexObs(1);

  void openSupport() {
    Get.toNamed(Routes.SUPPORT);
    rootCon.pageIndexObs(4);
  }

  void openMyLykke() {
    marketsCon.search(query: 'LKK');
    openPortfolio();
  }

  void openAssetInfo(Asset asset) {
    Get.toNamed(Routes.ASSET_INFO, arguments: asset);
    openPortfolio();
  }

  void trade(MarketModel model) {
    Get.toNamed(Routes.TRADING, arguments: model);
    openPortfolio();
  }
}
