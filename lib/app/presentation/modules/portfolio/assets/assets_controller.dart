import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/domain/repositories/assets_repository.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class AssetsController extends GetxController {
  static AssetsController get con => Get.find();

  final IAssetsRepository repository;
  AssetsController({@required this.repository});

  final _assetsDictionary = AssetsDictionaryResponse_Body().obs;
  AssetsDictionaryResponse_Body get assetsDictionary =>
      this._assetsDictionary.value;
  set assetsDictionary(AssetsDictionaryResponse_Body value) =>
      this._assetsDictionary.value = value;

  List<Asset> get assetList => assetsDictionary.assets;
  List<AssetCategory> get categoryList => assetsDictionary.categories;

  int assetsDictionaryTimestamp = 0;

  final _baseAssetId = ''.obs;
  String get baseAssetId => this._baseAssetId.value;
  set baseAssetId(String value) => this._baseAssetId.value = value;

  Asset get baseAsset =>
      assetList.firstWhere((a) => a.id == baseAssetId, orElse: () => null);

  var assetPairs = <AssetPair>[].obs;

  var _amountsInBase = <AmountInBaseAssetResponse_AmountInBasePayload>[].obs;
  List<AmountInBaseAssetResponse_AmountInBasePayload> get amountsInBase =>
      this._amountsInBase;
  set amountsInBase(
          List<AmountInBaseAssetResponse_AmountInBasePayload> value) =>
      this._amountsInBase.assignAll(value);

  Future<void> initialize() async {
    await getAssetsDictionary();
    await getAssetPairs();
    await getBaseAsset();
    await getAmountsInBase();
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

  Future<void> getAssetsDictionary() async {
    DateTime lastDateTime = DateTime.fromMillisecondsSinceEpoch(
      assetsDictionaryTimestamp,
    );
    int differenceMinutes = DateTime.now().difference(lastDateTime).inMinutes;
    if (differenceMinutes >= 5) {
      assetsDictionary = await repository.assetsDictionary();
      assetsDictionaryTimestamp = DateTime.now().millisecondsSinceEpoch;
      AppLog.logger.i('assets dictionary updated');
    }
  }

  Future<void> getBaseAsset() async =>
      baseAssetId = await repository.getBaseAssetId();

  Future<void> getAmountsInBase() async =>
      amountsInBase = await repository.getAmountInBaseAssetList(baseAssetId);

  Future<void> setBaseAsset(String id) async {
    await repository.setBaseAsset(id);
    await getBaseAsset();
    await getAmountsInBase();
  }

  Future<void> getAssetPairs() async =>
      assetPairs.assignAll(await repository.getAssetPairs());
}
