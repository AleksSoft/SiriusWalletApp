// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExampleChartModel _$MarketModelFromJson(Map<String, dynamic> json) {
  return ExampleChartModel(
    (json['open'] as num)?.toDouble(),
    (json['high'] as num)?.toDouble(),
    (json['low'] as num)?.toDouble(),
    (json['close'] as num)?.toDouble(),
    (json['vol'] as num)?.toDouble(),
  )
    ..amount = (json['amount'] as num)?.toDouble()
    ..count = (json['count'] as num)?.toDouble()
    ..date = json['date'] as int;
}

Map<String, dynamic> _$MarketModelToJson(ExampleChartModel instance) =>
    <String, dynamic>{
      'open': instance.open,
      'high': instance.high,
      'low': instance.low,
      'close': instance.close,
      'vol': instance.vol,
      'amount': instance.amount,
      'count': instance.count,
      'date': instance.date,
    };

MarketData _$MarketDataFromJson(Map<String, dynamic> json) {
  return MarketData(
    (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : ExampleChartModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MarketDataToJson(MarketData instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
