import 'package:antares_wallet/app/data/repository/portfolio_repository.dart';
import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:get/get.dart';

class TransactionDetailsController extends GetxController {
  static TransactionDetailsController get con => Get.find();

  final details = Get.arguments as FundsResponse_FundsModel;

  final _asset = Asset().obs;
  Asset get asset => this._asset.value;
  set asset(Asset value) => this._asset.value = value;

  final explorerLinks = <ExplorerLinksResponse_ExplorerLinkModel>[].obs;

  @override
  void onInit() {
    asset = AssetsController.con.assetById(details.assetId);
    if (!details.blockchainHash.isNullOrBlank) {
      PortfolioRepository.getExplorerLinks(
        assetId: details.assetId,
        transactionHash: details.blockchainHash,
      ).then((value) => explorerLinks.assignAll(value ?? []));
    }
    super.onInit();
  }
}
