import 'package:antares_wallet/app/locator.dart';
import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/models/asset_pair_data.dart';
import 'package:antares_wallet/services/repositories/asset_repository.dart';
import 'package:stacked/stacked.dart';

class AssetInfoDetailsViewModel extends BaseViewModel implements Initialisable {
  final _repository = locator<AssetRepository>();
  final AssetData _asset;

  AssetInfoDetailsViewModel(this._asset);

  List<AssetPairData> _assetPairs = List();

  List<AssetPairData> get assetPairs => _assetPairs;

  List<AssetPairData> get assetPairsShort {
    var maxSize = _assetPairs.length <= 3 ? _assetPairs.length : 3;
    return _assetPairs.sublist(0, maxSize);
  }

  AssetData get asset => _asset;

  bool get seeAllActive => _assetPairs.length > 3;

  @override
  void initialise() async {
    _assetPairs = await runBusyFuture(_repository.loadAssetPairs(asset));
  }
}
