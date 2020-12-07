import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/asset_info/asset_info_page.dart';
import 'package:antares_wallet/ui/pages/more/support/support_page.dart';
import 'package:antares_wallet/ui/pages/root/root_controller.dart';
import 'package:antares_wallet/ui/pages/trading/trading_page.dart';
import 'package:get/get.dart';

import 'assets_controller.dart';
import 'deposit_controller.dart';
import 'markets_controller.dart';
import 'portfolio_controller.dart';
import 'withdrawal_controller.dart';

class HomeController extends GetxController {
  static HomeController get con => Get.find();

  final rootCon = RootController.con;
  final portfolioCon = PortfolioController.con;
  final assetsCon = AssetsController.con;
  final marketsCon = MarketsController.con;

  final hidden = false.obs;

  String get shoHideTitle => this.hidden.value ? 'Show' : 'Hide';

  void deposit() => DepositController.con.search();

  void withdraw() => WithdrawalController.con.search();

  void openPortfolio() => rootCon.pageIndex = 2;

  void openSupport() {
    Get.toNamed(SupportPage.route);
    rootCon.pageIndex = 4;
  }

  void openMyLykke() {
    marketsCon.search(query: 'LKK');
    openPortfolio();
  }

  void openAssetInfo(Asset asset) {
    Get.toNamed(AssetInfoPage.route, arguments: asset);
    openPortfolio();
  }

  void trade(MarketModel model) {
    Get.toNamed(TradingPage.route, arguments: model);
    openPortfolio();
  }
}
