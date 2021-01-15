import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:meta/meta.dart';

class MarketModel {
  String iconUrl;
  String pairId;
  Asset pairBaseAsset;
  Asset pairQuotingAsset;
  double volume;
  double price;
  double change;

  MarketModel({
    @required this.iconUrl,
    @required this.pairId,
    @required this.pairBaseAsset,
    @required this.pairQuotingAsset,
    @required this.volume,
    @required this.price,
    @required this.change,
  });

  MarketModel.empty()
      : this.iconUrl = '',
        this.pairId = '',
        this.pairBaseAsset = Asset(),
        this.pairQuotingAsset = Asset(),
        this.volume = 0,
        this.price = 0,
        this.change = 0;

  MarketModel update(PriceUpdate update) {
    this.volume = double.tryParse(update?.volumeBase24H) ?? 0.0;
    this.change = double.tryParse(update?.priceChange24H) ?? 0.0;
    return this;
  }
}
