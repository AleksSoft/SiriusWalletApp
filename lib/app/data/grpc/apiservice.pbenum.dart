///
//  Generated code. Do not modify.
//  source: apiservice.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MobileOsPlatform extends $pb.ProtobufEnum {
  static const MobileOsPlatform Ios = MobileOsPlatform._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Ios');
  static const MobileOsPlatform Android = MobileOsPlatform._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Android');

  static const $core.List<MobileOsPlatform> values = <MobileOsPlatform> [
    Ios,
    Android,
  ];

  static final $core.Map<$core.int, MobileOsPlatform> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MobileOsPlatform valueOf($core.int value) => _byValue[value];

  const MobileOsPlatform._($core.int v, $core.String n) : super(v, n);
}

class TierUpgrade extends $pb.ProtobufEnum {
  static const TierUpgrade Advanced = TierUpgrade._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Advanced');
  static const TierUpgrade ProIndividual = TierUpgrade._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ProIndividual');

  static const $core.List<TierUpgrade> values = <TierUpgrade> [
    Advanced,
    ProIndividual,
  ];

  static final $core.Map<$core.int, TierUpgrade> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TierUpgrade valueOf($core.int value) => _byValue[value];

  const TierUpgrade._($core.int v, $core.String n) : super(v, n);
}

class Side extends $pb.ProtobufEnum {
  static const Side buy = Side._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'buy');
  static const Side sell = Side._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'sell');

  static const $core.List<Side> values = <Side> [
    buy,
    sell,
  ];

  static final $core.Map<$core.int, Side> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Side valueOf($core.int value) => _byValue[value];

  const Side._($core.int v, $core.String n) : super(v, n);
}

class CandleType extends $pb.ProtobufEnum {
  static const CandleType Bid = CandleType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Bid');
  static const CandleType Ask = CandleType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Ask');
  static const CandleType Mid = CandleType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Mid');
  static const CandleType Trades = CandleType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Trades');

  static const $core.List<CandleType> values = <CandleType> [
    Bid,
    Ask,
    Mid,
    Trades,
  ];

  static final $core.Map<$core.int, CandleType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CandleType valueOf($core.int value) => _byValue[value];

  const CandleType._($core.int v, $core.String n) : super(v, n);
}

class CandleInterval extends $pb.ProtobufEnum {
  static const CandleInterval Min5 = CandleInterval._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Min5');
  static const CandleInterval Min15 = CandleInterval._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Min15');
  static const CandleInterval Min30 = CandleInterval._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Min30');
  static const CandleInterval Hour = CandleInterval._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Hour');
  static const CandleInterval Hour4 = CandleInterval._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Hour4');
  static const CandleInterval Hour6 = CandleInterval._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Hour6');
  static const CandleInterval Hour12 = CandleInterval._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Hour12');
  static const CandleInterval Day = CandleInterval._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Day');
  static const CandleInterval Week = CandleInterval._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Week');
  static const CandleInterval Month = CandleInterval._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Month');

  static const $core.List<CandleInterval> values = <CandleInterval> [
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

  static final $core.Map<$core.int, CandleInterval> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CandleInterval valueOf($core.int value) => _byValue[value];

  const CandleInterval._($core.int v, $core.String n) : super(v, n);
}

