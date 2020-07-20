import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/services/repositories/asset_repository.dart';
import 'package:antares_wallet/services/repositories/watchists_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ExchangeController extends GetxController {
  final _assetsRepo = Get.find<AssetRepository>();

  final _assetPairs = List<ExchangeAssetPair>().obs;
  List<ExchangeAssetPair> get assetPairs => this._assetPairs.value;
  set assetPairs(List<ExchangeAssetPair> value) =>
      this._assetPairs.value = value;

  @override
  void onInit() async {
    await rebuildAssetPairList();
    super.onInit();
  }

  rebuildAssetPairList() async {
    String id = GetStorage().read(AppStorageKeys.watchlistId);
    if (id == null || id.isEmpty) {
      assetPairs = (await _assetsRepo.getAssetPairs())
          .map((e) => _buildExchangePair(e))
          .toList();
    } else {
      Watchlist watchlist = await WatchlistsRepository.getWatchlist(id);
      assetPairs = (await _assetsRepo.watchedAssetPairs(watchlist))
          .map((e) => _buildExchangePair(e))
          .toList();
    }
  }

  ExchangeAssetPair _buildExchangePair(AssetPair pair) => ExchangeAssetPair(
        '',
        Asset.getDefault(),
        Asset.getDefault(),
        0.0,
        0.0,
        0.0,
        0.0,
      );
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
