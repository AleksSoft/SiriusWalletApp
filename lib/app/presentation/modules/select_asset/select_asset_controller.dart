import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/domain/entities/select_asset_args.dart';
import 'package:antares_wallet/app/presentation/modules/portfolio/assets/assets_controller.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class SelectAssetController extends GetxController {
  final selectedAsset = Asset().obs;
  final assetList = <Asset>[].obs;

  final SelectAssetArgs args;
  final AssetsController assetsCon;
  SelectAssetController({
    @required this.args,
    @required this.assetsCon,
  }) : assert(args != null || assetsCon != null);

  @override
  void onInit() {
    final allAssets = assetsCon.assetList;
    assetList(args.onlyBase
        ? allAssets.where((a) => a.canBeBase).toList()
        : allAssets);

    selectedAsset(args.selectedAsset);

    super.onInit();
  }

  String get title => args.title;

  void back() => Get.back(result: selectedAsset.value);
}
