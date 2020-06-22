import 'package:antares_wallet/app/locator.dart';
import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/models/order_data.dart';
import 'package:antares_wallet/services/repositories/order_repository.dart';
import 'package:stacked/stacked.dart';

class AssetInfoTradesViewModel extends BaseViewModel implements Initialisable {
  final _repository = locator<OrderRepository>();
  final AssetData _asset;

  AssetInfoTradesViewModel(this._asset);

  List<OrderData> _orders = List();

  List<OrderData> get orders => _orders;

  @override
  void initialise() async {
    _orders = await _repository.getOrdersBySymbol(_asset.symbol);
    notifyListeners();
  }
}
