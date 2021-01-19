import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/domain/repositories/portfolio_repository.dart';
import 'package:antares_wallet/app/presentation/modules/portfolio/assets/assets_controller.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class TransactionDetailsController extends GetxController {
  static TransactionDetailsController get con => Get.find();

  final IPortfolioRepository portfolioRepo;
  TransactionDetailsController({@required this.portfolioRepo});

  final details = Get.arguments as FundsResponse_FundsModel;

  final _asset = Asset().obs;
  Asset get asset => this._asset.value;
  set asset(Asset value) => this._asset.value = value;

  final explorerLinks = <ExplorerLinksResponse_ExplorerLinkModel>[].obs;

  @override
  void onReady() {
    asset = AssetsController.con.assetById(details.assetId);
    if (!details.blockchainHash.isNullOrBlank) {
      portfolioRepo
          .getExplorerLinks(
            assetId: details.assetId,
            transactionHash: details.blockchainHash,
          )
          .then((value) => value.fold(
                (error) {},
                (result) => explorerLinks.assignAll(result),
              ));
    }
    super.onReady();
  }
}
