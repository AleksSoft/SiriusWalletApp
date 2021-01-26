import 'package:antares_wallet/app/core/routes/app_pages.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/domain/entities/market_model.dart';
import 'package:antares_wallet/app/presentation/modules/deposit/deposit_controller.dart';
import 'package:antares_wallet/app/presentation/modules/markets/markets_controller.dart';
import 'package:antares_wallet/app/presentation/modules/portfolio/assets/assets_controller.dart';
import 'package:antares_wallet/app/presentation/modules/portfolio/portfolio_controller.dart';
import 'package:antares_wallet/app/presentation/modules/root/root_controller.dart';
import 'package:antares_wallet/app/presentation/modules/withdrawal/withdrawal_controller.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

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
