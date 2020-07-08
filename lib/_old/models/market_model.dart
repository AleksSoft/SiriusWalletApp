import 'package:json_annotation/json_annotation.dart';
part 'market_model.g.dart';

@JsonSerializable()
class MarketModel {
  MarketModel(this.open, this.high, this.low, this.close, this.vol);
  double open;
  double high;
  double low;
  double close;
  double vol;
  double amount;
  double count;
  int date;

  factory MarketModel.fromJson(Map<String, dynamic> json) =>
      _$MarketModelFromJson(json);
  Map<String, dynamic> toJson() => _$MarketModelToJson(this);
}

@JsonSerializable()
class MarketData {
  MarketData(this.data);
  @JsonKey(name: 'data')
  List<MarketModel> data;
  factory MarketData.fromJson(Map<String, dynamic> json) =>
      _$MarketDataFromJson(json);
  Map<String, dynamic> toJson() => _$MarketDataToJson(this);
}
