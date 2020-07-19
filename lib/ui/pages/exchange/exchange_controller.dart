import 'package:antares_wallet/services/repositories/asset_repository.dart';
import 'package:antares_wallet/services/repositories/watch_lists_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:get/get.dart';

class ExchangeController extends GetxController {
  final _assetsRepo = Get.find<AssetRepository>();
  final _watchlistsRepo = Get.find<WatchListsRepository>();

  List<ExchangeAssetPair> _assetPairs = List();

  List<ExchangeAssetPair> get assetPairs => _assetPairs;

  @override
  void onInit() async {
    await rebuildAssetPairList();
    super.onInit();
  }

  rebuildAssetPairList() async {
    _assetPairs =
        (await _assetsRepo.watchedAssetPairs(_watchlistsRepo.activeWatchlist))
            .map((e) => ExchangeAssetPair(
                  '',
                  Asset.getDefault(),
                  Asset.getDefault(),
                  0.0,
                  0.0,
                  0.0,
                  0.0,
                ))
            .toList();
    update();
  }
}

class ExchangeAssetPair {
  final String iconUrl;
  final Asset baseAsset;
  final Asset quotingAsset;
  final double price;
  final double basePrice;
  final double volume;
  final double change;

  ExchangeAssetPair(
    this.iconUrl,
    this.baseAsset,
    this.quotingAsset,
    this.price,
    this.basePrice,
    this.volume,
    this.change,
  );
}
