import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/repositories/portfolio_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:get/get.dart';

class TransactionDetailsController extends GetxController {
  static TransactionDetailsController get con => Get.find();

  final FundsResponse_FundsModel details =
      Get.arguments as FundsResponse_FundsModel;

  final _asset = Asset().obs;
  Asset get asset => this._asset.value;
  set asset(Asset value) => this._asset.value = value;

  final _explorerLinks = List<ExplorerLinksResponse_ExplorerLinkModel>().obs;
  List<ExplorerLinksResponse_ExplorerLinkModel> get explorerLinks =>
      this._explorerLinks.value;
  set explorerLinks(List<ExplorerLinksResponse_ExplorerLinkModel> value) =>
      this._explorerLinks.value = value;

  @override
  void onInit() async {
    asset = AssetsController.con.assetById(details.assetId);
    if (!details.blockchainHash.isNullOrBlank) {
      explorerLinks = await PortfolioRepository.getExplorerLinks(
        assetId: details.assetId,
        transactionHash: details.blockchainHash,
      );
    }
    super.onInit();
  }
}
