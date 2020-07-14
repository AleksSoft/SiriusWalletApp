///
//  Generated code. Do not modify.
//  source: apiservice.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Side extends $pb.ProtobufEnum {
  static const Side buy = Side._(0, 'buy');
  static const Side sell = Side._(1, 'sell');

  static const $core.List<Side> values = <Side>[
    buy,
    sell,
  ];

  static final $core.Map<$core.int, Side> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Side valueOf($core.int value) => _byValue[value];

  const Side._($core.int v, $core.String n) : super(v, n);
}

class CandleType extends $pb.ProtobufEnum {
  static const CandleType Bid = CandleType._(0, 'Bid');
  static const CandleType Ask = CandleType._(1, 'Ask');
  static const CandleType Mid = CandleType._(2, 'Mid');
  static const CandleType Trades = CandleType._(3, 'Trades');

  static const $core.List<CandleType> values = <CandleType>[
    Bid,
    Ask,
    Mid,
    Trades,
  ];

  static final $core.Map<$core.int, CandleType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static CandleType valueOf($core.int value) => _byValue[value];

  const CandleType._($core.int v, $core.String n) : super(v, n);
}

class CandleInterval extends $pb.ProtobufEnum {
  static const CandleInterval Min5 = CandleInterval._(0, 'Min5');
  static const CandleInterval Min15 = CandleInterval._(1, 'Min15');
  static const CandleInterval Min30 = CandleInterval._(2, 'Min30');
  static const CandleInterval Hour = CandleInterval._(3, 'Hour');
  static const CandleInterval Hour4 = CandleInterval._(4, 'Hour4');
  static const CandleInterval Hour6 = CandleInterval._(5, 'Hour6');
  static const CandleInterval Hour12 = CandleInterval._(6, 'Hour12');
  static const CandleInterval Day = CandleInterval._(7, 'Day');
  static const CandleInterval Week = CandleInterval._(8, 'Week');
  static const CandleInterval Month = CandleInterval._(9, 'Month');

  static const $core.List<CandleInterval> values = <CandleInterval>[
    Min5,
    Min15,
    Min30,
    Hour,
    Hour4,
    Hour6,
    Hour12,
    Day,
    Week,
    Month,
  ];

  static final $core.Map<$core.int, CandleInterval> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static CandleInterval valueOf($core.int value) => _byValue[value];

  const CandleInterval._($core.int v, $core.String n) : super(v, n);
}
