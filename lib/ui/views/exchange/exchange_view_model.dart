import 'package:antares_wallet/app/locator.dart';
import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/models/asset_pair_data.dart';
import 'package:antares_wallet/services/repositories/asset_repository.dart';
import 'package:stacked/stacked.dart';

class ExchangeViewModel extends BaseViewModel {
  final _repository = locator<AssetRepository>();

  AssetData get baseAsset => _repository.baseAsset;

  List<AssetPairData> get assetPairs => _repository.assetPairs;

  void initialise() {
    _repository.loadAssetDictionary();
    _repository.loadAllAssetPairs();
    notifyListeners();
  }
}
