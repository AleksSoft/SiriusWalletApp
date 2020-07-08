import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/app/locator.dart';
import 'package:antares_wallet/ui/views/select_asset/select_asset_view.dart';
import 'package:stacked/stacked.dart';

class SelectAssetViewModel extends BaseViewModel {
  final MockApiService _api = locator<MockApiService>();

  SelectAssetArgs _selectAssetArgs;

  AssetDictionaryData _assetDictionary = AssetDictionaryData();

  List<AssetData> get assetList {
    var list = _assetDictionary.assetList;
    return isOnlyBase ? list.where((a) => a.canBeBase) : list;
  }

  AssetData get selectedAsset => _selectAssetArgs.selectedAsset;

  bool get isOnlyBase => _selectAssetArgs.onlyBase;

  String get title => _selectAssetArgs.title;

  Future initialise(SelectAssetArgs args) async {
    _selectAssetArgs = args;
    _assetDictionary = await runBusyFuture(_api.fetchAssetDictionary());
  }
}
