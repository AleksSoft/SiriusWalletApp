import 'package:antares_wallet/models/base_model.dart';

class AssetPairData extends BaseModel {
  String mainAssetImgUrl;
  String mainAssetName;
  String mainAssetSymbol;
  String secAssetSymbol;
  double mainPrice;
  double basePrice;
  double volume;
  double change;

  AssetPairData({
    this.mainAssetImgUrl,
    this.mainAssetName,
    this.mainAssetSymbol,
    this.secAssetSymbol,
    this.mainPrice,
    this.basePrice,
    this.volume,
    this.change,
  });

  @override
  AssetPairData fromJson(Map<String, dynamic> json) {
    mainAssetImgUrl = json['mainAssetImgUrl'];
    mainAssetName = json['mainAssetName'];
    mainAssetSymbol = json['mainAssetSymbol'];
    secAssetSymbol = json['secAssetSymbol'];
    mainPrice = json['mainPrice'];
    basePrice = json['basePrice'];
    volume = json['volume'];
    change = json['change'];
    return this;
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mainAssetImgUrl'] = this.mainAssetImgUrl;
    data['mainAssetName'] = this.mainAssetName;
    data['mainAssetSymbol'] = this.mainAssetSymbol;
    data['secAssetSymbol'] = this.secAssetSymbol;
    data['mainPrice'] = this.mainPrice;
    data['basePrice'] = this.basePrice;
    data['volume'] = this.volume;
    data['change'] = this.change;
    return data;
  }

  @override
  List<Object> get props => [
        mainAssetImgUrl,
        mainAssetName,
        mainAssetSymbol,
        secAssetSymbol,
        mainPrice,
        basePrice,
        volume,
        change,
      ];
}
