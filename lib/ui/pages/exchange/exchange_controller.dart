import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/services/repositories/asset_repository.dart';
import 'package:antares_wallet/services/repositories/watch_lists_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

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
    String id = GetStorage().read(AppStorageKeys.watchlistId);
    Watchlist watchlist = await _watchlistsRepo.getWatchList(id ?? '0');
    _assetPairs = (await _assetsRepo.watchedAssetPairs(watchlist))
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
