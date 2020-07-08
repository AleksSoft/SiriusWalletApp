import 'package:antares_wallet/models/base_model.dart';

class OrderData extends BaseModel {
  String mainAssetSymbol;
  String secAssetSymbol;
  String date;
  double avgPrice;
  double price;
  double filled;
  double amount;
  bool cancelled;
  bool isSelling;
  int id;

  OrderData({
    this.mainAssetSymbol,
    this.secAssetSymbol,
    this.date,
    this.avgPrice,
    this.price,
    this.filled,
    this.amount,
    this.cancelled,
    this.isSelling,
    this.id,
  });

  @override
  OrderData fromJson(Map<String, dynamic> json) {
    mainAssetSymbol = json['mainAssetSymbol'];
    secAssetSymbol = json['secAssetSymbol'];
    date = json['date'];
    avgPrice = json['avgPrice'];
    price = json['price'];
    filled = json['filled'];
    amount = json['amount'];
    cancelled = json['cancelled'];
    isSelling = json['isSelling'];
    id = json['id'];
    return this;
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mainAssetSymbol'] = this.mainAssetSymbol;
    data['secAssetSymbol'] = this.secAssetSymbol;
    data['date'] = this.date;
    data['avgPrice'] = this.avgPrice;
    data['price'] = this.price;
    data['filled'] = this.filled;
    data['amount'] = this.amount;
    data['cancelled'] = this.cancelled;
    data['isSelling'] = this.isSelling;
    data['id'] = this.id;
    return data;
  }

  @override
  List<Object> get props => [
        mainAssetSymbol,
        secAssetSymbol,
        date,
        avgPrice,
        price,
        filled,
        amount,
        cancelled,
        isSelling,
        id,
      ];
}
