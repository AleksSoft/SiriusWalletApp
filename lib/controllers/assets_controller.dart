import 'package:antares_wallet/services/repositories/asset_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:get/get.dart';

class AssetsController extends GetxController {
  static AssetsController get con => Get.find();

  final initialized = false.obs;

  final _assetDictionary = AssetsDictionaryResponse.getDefault().obs;
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

  final _assetPairs = List<AssetPair>().obs;
  List<AssetPair> get assetPairs => this._assetPairs.value;
  set assetPairs(List<AssetPair> value) => this._assetPairs.value = value;

  final _amountsInBase =
      List<AmountInBaseAssetResponse_AmountInBasePayload>().obs;
  List<AmountInBaseAssetResponse_AmountInBasePayload> get amountsInBase =>
      this._amountsInBase.value;
  set amountsInBase(
          List<AmountInBaseAssetResponse_AmountInBasePayload> value) =>
      this._amountsInBase.value = value;

  @override
  void onInit() async {
    await getAssetsDictionary();
    await getAssetPairs();
    await getBaseAsset();
    await getAmountsInBase();
    super.onInit();
    initialized.value = true;
  }

  @override
  void onClose() async {
    initialized.value = false;
    super.onClose();
  }

  Asset assetById(String id) =>
      assetList.firstWhere((a) => a.id == id, orElse: () => null);

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
  }

  Future getAssetPairs() async =>
      assetPairs = await AssetsRepository.getAssetPairs();
}
