import 'package:antares_wallet/repositories/asset_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:get/get.dart';

class AssetsController extends GetxController {
  static AssetsController get con => Get.find();

  final isLoaded = false.obs;

  final _assetDictionary = AssetsDictionaryResponse().obs;
  AssetsDictionaryResponse get assetsDictionary => this._assetDictionary.value;
  set assetsDictionary(AssetsDictionaryResponse value) =>
      this._assetDictionary.value = value;

  List<Asset> get assetList => assetsDictionary.assets;
  List<AssetCategory> get categoryList => assetsDictionary.categories;

  final _baseAssetId = ''.obs;
  String get baseAssetId => this._baseAssetId.value;
  set baseAssetId(String value) => this._baseAssetId.value = value;

  Asset get baseAsset =>
      assetList.firstWhere((a) => a.id == baseAssetId, orElse: () => null);

  final assetPairs = List<AssetPair>().obs;

  final _amountsInBase =
      List<AmountInBaseAssetResponse_AmountInBasePayload>().obs;
  List<AmountInBaseAssetResponse_AmountInBasePayload> get amountsInBase =>
      this._amountsInBase;
  set amountsInBase(
          List<AmountInBaseAssetResponse_AmountInBasePayload> value) =>
      this._amountsInBase.value = value;

  @override
  void onReady() async {
    await getAssetsDictionary();
    await getAssetPairs();
    await getBaseAsset();
    await getAmountsInBase();
    isLoaded.value = true;
    super.onReady();
  }

  @override
  Future<void> onClose() async {
    isLoaded.value = false;
    super.onClose();
  }

  Asset assetById(String id) =>
      assetList.firstWhere((a) => a.id == id, orElse: () => null);

  AmountInBaseAssetResponse_AmountInBasePayload amountInBaseById(String id) =>
      amountsInBase?.firstWhere((a) => a.assetId == id, orElse: () => null);

  double countBalanceInBase(String id, Balance balance) {
    var amount = amountInBaseById(id);
    double availableBalance = double.tryParse(balance?.available ?? '0') ?? 0.0;
    double amountInBase;
    if (baseAssetId == id) {
      amountInBase = availableBalance;
    } else {
      amountInBase = availableBalance *
          (double.tryParse(amount?.amountInBase ?? '0') ?? 0.0);
    }
    return amountInBase;
  }

  AssetCategory categoryById(String id) =>
      categoryList.firstWhere((c) => c.id == id, orElse: () => null);

  AssetPair assetPairById(String id) =>
      assetPairs.firstWhere((a) => a.id == id, orElse: () => null);

  List<AssetPair> pairsForAssetId(String id) => assetPairs
      .where((a) => a.baseAssetId == id || a.quotingAssetId == id)
      .toList();

  List<Asset> categoryAssets(String id) =>
      assetList.where((a) => a.categoryId == id).toList();

  Future getAssetsDictionary() async =>
      assetsDictionary = await AssetsRepository.assetsDictionary();

  Future getBaseAsset() async =>
      baseAssetId = await AssetsRepository.getBaseAsset();

  Future getAmountsInBase() async =>
      amountsInBase = await AssetsRepository.getAmountInBaseAsset(baseAssetId);

  Future setBaseAsset(String id) async {
    await AssetsRepository.setBaseAsset(id);
    await getBaseAsset();
    await getAmountsInBase();
  }

  Future getAssetPairs() async =>
      assetPairs.assignAll(await AssetsRepository.getAssetPairs());
}
