///
//  Generated code. Do not modify.
//  source: apiservice.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $3;
import 'common.pb.dart' as $4;

import 'apiservice.pbenum.dart';

export 'apiservice.pbenum.dart';

class BaseAssetUpdateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BaseAssetUpdateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'baseAssetId', protoName: 'baseAssetId')
    ..hasRequiredFields = false
  ;

  BaseAssetUpdateRequest._() : super();
  factory BaseAssetUpdateRequest() => create();
  factory BaseAssetUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BaseAssetUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BaseAssetUpdateRequest clone() => BaseAssetUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BaseAssetUpdateRequest copyWith(void Function(BaseAssetUpdateRequest) updates) => super.copyWith((message) => updates(message as BaseAssetUpdateRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BaseAssetUpdateRequest create() => BaseAssetUpdateRequest._();
  BaseAssetUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<BaseAssetUpdateRequest> createRepeated() => $pb.PbList<BaseAssetUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static BaseAssetUpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BaseAssetUpdateRequest>(create);
  static BaseAssetUpdateRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get baseAssetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set baseAssetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBaseAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBaseAssetId() => clearField(1);
}

class PricesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PricesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairIds', protoName: 'assetPairIds')
    ..hasRequiredFields = false
  ;

  PricesRequest._() : super();
  factory PricesRequest() => create();
  factory PricesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PricesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PricesRequest clone() => PricesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PricesRequest copyWith(void Function(PricesRequest) updates) => super.copyWith((message) => updates(message as PricesRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PricesRequest create() => PricesRequest._();
  PricesRequest createEmptyInstance() => create();
  static $pb.PbList<PricesRequest> createRepeated() => $pb.PbList<PricesRequest>();
  @$core.pragma('dart2js:noInline')
  static PricesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PricesRequest>(create);
  static PricesRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get assetPairIds => $_getList(0);
}

class PriceUpdatesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PriceUpdatesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairIds', protoName: 'assetPairIds')
    ..hasRequiredFields = false
  ;

  PriceUpdatesRequest._() : super();
  factory PriceUpdatesRequest() => create();
  factory PriceUpdatesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PriceUpdatesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PriceUpdatesRequest clone() => PriceUpdatesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PriceUpdatesRequest copyWith(void Function(PriceUpdatesRequest) updates) => super.copyWith((message) => updates(message as PriceUpdatesRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PriceUpdatesRequest create() => PriceUpdatesRequest._();
  PriceUpdatesRequest createEmptyInstance() => create();
  static $pb.PbList<PriceUpdatesRequest> createRepeated() => $pb.PbList<PriceUpdatesRequest>();
  @$core.pragma('dart2js:noInline')
  static PriceUpdatesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PriceUpdatesRequest>(create);
  static PriceUpdatesRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get assetPairIds => $_getList(0);
}

class CandlesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CandlesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairId', protoName: 'assetPairId')
    ..e<CandleType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: CandleType.Bid, valueOf: CandleType.valueOf, enumValues: CandleType.values)
    ..e<CandleInterval>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'interval', $pb.PbFieldType.OE, defaultOrMaker: CandleInterval.Min5, valueOf: CandleInterval.valueOf, enumValues: CandleInterval.values)
    ..aOM<$3.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'to', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  CandlesRequest._() : super();
  factory CandlesRequest() => create();
  factory CandlesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CandlesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CandlesRequest clone() => CandlesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CandlesRequest copyWith(void Function(CandlesRequest) updates) => super.copyWith((message) => updates(message as CandlesRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CandlesRequest create() => CandlesRequest._();
  CandlesRequest createEmptyInstance() => create();
  static $pb.PbList<CandlesRequest> createRepeated() => $pb.PbList<CandlesRequest>();
  @$core.pragma('dart2js:noInline')
  static CandlesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CandlesRequest>(create);
  static CandlesRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetPairId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetPairId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetPairId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetPairId() => clearField(1);

  @$pb.TagNumber(2)
  CandleType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(CandleType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  CandleInterval get interval => $_getN(2);
  @$pb.TagNumber(3)
  set interval(CandleInterval v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasInterval() => $_has(2);
  @$pb.TagNumber(3)
  void clearInterval() => clearField(3);

  @$pb.TagNumber(4)
  $3.Timestamp get from => $_getN(3);
  @$pb.TagNumber(4)
  set from($3.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFrom() => $_has(3);
  @$pb.TagNumber(4)
  void clearFrom() => clearField(4);
  @$pb.TagNumber(4)
  $3.Timestamp ensureFrom() => $_ensure(3);

  @$pb.TagNumber(5)
  $3.Timestamp get to => $_getN(4);
  @$pb.TagNumber(5)
  set to($3.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTo() => $_has(4);
  @$pb.TagNumber(5)
  void clearTo() => clearField(5);
  @$pb.TagNumber(5)
  $3.Timestamp ensureTo() => $_ensure(4);
}

class OrderbookRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrderbookRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairId', protoName: 'assetPairId')
    ..hasRequiredFields = false
  ;

  OrderbookRequest._() : super();
  factory OrderbookRequest() => create();
  factory OrderbookRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderbookRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrderbookRequest clone() => OrderbookRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrderbookRequest copyWith(void Function(OrderbookRequest) updates) => super.copyWith((message) => updates(message as OrderbookRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderbookRequest create() => OrderbookRequest._();
  OrderbookRequest createEmptyInstance() => create();
  static $pb.PbList<OrderbookRequest> createRepeated() => $pb.PbList<OrderbookRequest>();
  @$core.pragma('dart2js:noInline')
  static OrderbookRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderbookRequest>(create);
  static OrderbookRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetPairId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetPairId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetPairId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetPairId() => clearField(1);
}

class AmountInBaseRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AmountInBaseRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..hasRequiredFields = false
  ;

  AmountInBaseRequest._() : super();
  factory AmountInBaseRequest() => create();
  factory AmountInBaseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AmountInBaseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AmountInBaseRequest clone() => AmountInBaseRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AmountInBaseRequest copyWith(void Function(AmountInBaseRequest) updates) => super.copyWith((message) => updates(message as AmountInBaseRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AmountInBaseRequest create() => AmountInBaseRequest._();
  AmountInBaseRequest createEmptyInstance() => create();
  static $pb.PbList<AmountInBaseRequest> createRepeated() => $pb.PbList<AmountInBaseRequest>();
  @$core.pragma('dart2js:noInline')
  static AmountInBaseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AmountInBaseRequest>(create);
  static AmountInBaseRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);
}

class PushSettingsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PushSettingsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  PushSettingsRequest._() : super();
  factory PushSettingsRequest() => create();
  factory PushSettingsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PushSettingsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PushSettingsRequest clone() => PushSettingsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PushSettingsRequest copyWith(void Function(PushSettingsRequest) updates) => super.copyWith((message) => updates(message as PushSettingsRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PushSettingsRequest create() => PushSettingsRequest._();
  PushSettingsRequest createEmptyInstance() => create();
  static $pb.PbList<PushSettingsRequest> createRepeated() => $pb.PbList<PushSettingsRequest>();
  @$core.pragma('dart2js:noInline')
  static PushSettingsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PushSettingsRequest>(create);
  static PushSettingsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);
}

class RegisterPushRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterPushRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..e<MobileOsPlatform>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'platform', $pb.PbFieldType.OE, defaultOrMaker: MobileOsPlatform.Ios, valueOf: MobileOsPlatform.valueOf, enumValues: MobileOsPlatform.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pushChannel', protoName: 'pushChannel')
    ..hasRequiredFields = false
  ;

  RegisterPushRequest._() : super();
  factory RegisterPushRequest() => create();
  factory RegisterPushRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterPushRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterPushRequest clone() => RegisterPushRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterPushRequest copyWith(void Function(RegisterPushRequest) updates) => super.copyWith((message) => updates(message as RegisterPushRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterPushRequest create() => RegisterPushRequest._();
  RegisterPushRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterPushRequest> createRepeated() => $pb.PbList<RegisterPushRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterPushRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterPushRequest>(create);
  static RegisterPushRequest _defaultInstance;

  @$pb.TagNumber(1)
  MobileOsPlatform get platform => $_getN(0);
  @$pb.TagNumber(1)
  set platform(MobileOsPlatform v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlatform() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlatform() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pushChannel => $_getSZ(1);
  @$pb.TagNumber(2)
  set pushChannel($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPushChannel() => $_has(1);
  @$pb.TagNumber(2)
  void clearPushChannel() => clearField(2);
}

class VerificationEmailRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerificationEmailRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..hasRequiredFields = false
  ;

  VerificationEmailRequest._() : super();
  factory VerificationEmailRequest() => create();
  factory VerificationEmailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerificationEmailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerificationEmailRequest clone() => VerificationEmailRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerificationEmailRequest copyWith(void Function(VerificationEmailRequest) updates) => super.copyWith((message) => updates(message as VerificationEmailRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerificationEmailRequest create() => VerificationEmailRequest._();
  VerificationEmailRequest createEmptyInstance() => create();
  static $pb.PbList<VerificationEmailRequest> createRepeated() => $pb.PbList<VerificationEmailRequest>();
  @$core.pragma('dart2js:noInline')
  static VerificationEmailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerificationEmailRequest>(create);
  static VerificationEmailRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);
}

class VerificationSmsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerificationSmsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..hasRequiredFields = false
  ;

  VerificationSmsRequest._() : super();
  factory VerificationSmsRequest() => create();
  factory VerificationSmsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerificationSmsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerificationSmsRequest clone() => VerificationSmsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerificationSmsRequest copyWith(void Function(VerificationSmsRequest) updates) => super.copyWith((message) => updates(message as VerificationSmsRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerificationSmsRequest create() => VerificationSmsRequest._();
  VerificationSmsRequest createEmptyInstance() => create();
  static $pb.PbList<VerificationSmsRequest> createRepeated() => $pb.PbList<VerificationSmsRequest>();
  @$core.pragma('dart2js:noInline')
  static VerificationSmsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerificationSmsRequest>(create);
  static VerificationSmsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get phone => $_getSZ(0);
  @$pb.TagNumber(1)
  set phone($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhone() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhone() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);
}

class VerifyEmailRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyEmailRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..hasRequiredFields = false
  ;

  VerifyEmailRequest._() : super();
  factory VerifyEmailRequest() => create();
  factory VerifyEmailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyEmailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyEmailRequest clone() => VerifyEmailRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyEmailRequest copyWith(void Function(VerifyEmailRequest) updates) => super.copyWith((message) => updates(message as VerifyEmailRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyEmailRequest create() => VerifyEmailRequest._();
  VerifyEmailRequest createEmptyInstance() => create();
  static $pb.PbList<VerifyEmailRequest> createRepeated() => $pb.PbList<VerifyEmailRequest>();
  @$core.pragma('dart2js:noInline')
  static VerifyEmailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyEmailRequest>(create);
  static VerifyEmailRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);
}

class VerifyPhoneRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyPhoneRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..hasRequiredFields = false
  ;

  VerifyPhoneRequest._() : super();
  factory VerifyPhoneRequest() => create();
  factory VerifyPhoneRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyPhoneRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyPhoneRequest clone() => VerifyPhoneRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyPhoneRequest copyWith(void Function(VerifyPhoneRequest) updates) => super.copyWith((message) => updates(message as VerifyPhoneRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyPhoneRequest create() => VerifyPhoneRequest._();
  VerifyPhoneRequest createEmptyInstance() => create();
  static $pb.PbList<VerifyPhoneRequest> createRepeated() => $pb.PbList<VerifyPhoneRequest>();
  @$core.pragma('dart2js:noInline')
  static VerifyPhoneRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyPhoneRequest>(create);
  static VerifyPhoneRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get phone => $_getSZ(0);
  @$pb.TagNumber(1)
  set phone($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhone() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhone() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);
}

class RegisterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fullName', protoName: 'fullName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hint')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countryIso3Code', protoName: 'countryIso3Code')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'affiliateCode', protoName: 'affiliateCode')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pin')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey', protoName: 'publicKey')
    ..hasRequiredFields = false
  ;

  RegisterRequest._() : super();
  factory RegisterRequest() => create();
  factory RegisterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterRequest clone() => RegisterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterRequest copyWith(void Function(RegisterRequest) updates) => super.copyWith((message) => updates(message as RegisterRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterRequest create() => RegisterRequest._();
  RegisterRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterRequest> createRepeated() => $pb.PbList<RegisterRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterRequest>(create);
  static RegisterRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fullName => $_getSZ(0);
  @$pb.TagNumber(1)
  set fullName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFullName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFullName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get phone => $_getSZ(2);
  @$pb.TagNumber(3)
  set phone($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPhone() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhone() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get password => $_getSZ(3);
  @$pb.TagNumber(4)
  set password($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPassword() => $_has(3);
  @$pb.TagNumber(4)
  void clearPassword() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get hint => $_getSZ(4);
  @$pb.TagNumber(5)
  set hint($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHint() => $_has(4);
  @$pb.TagNumber(5)
  void clearHint() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get countryIso3Code => $_getSZ(5);
  @$pb.TagNumber(6)
  set countryIso3Code($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCountryIso3Code() => $_has(5);
  @$pb.TagNumber(6)
  void clearCountryIso3Code() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get affiliateCode => $_getSZ(6);
  @$pb.TagNumber(7)
  set affiliateCode($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAffiliateCode() => $_has(6);
  @$pb.TagNumber(7)
  void clearAffiliateCode() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get pin => $_getSZ(7);
  @$pb.TagNumber(8)
  set pin($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPin() => $_has(7);
  @$pb.TagNumber(8)
  void clearPin() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get token => $_getSZ(8);
  @$pb.TagNumber(9)
  set token($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasToken() => $_has(8);
  @$pb.TagNumber(9)
  void clearToken() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get publicKey => $_getSZ(9);
  @$pb.TagNumber(10)
  set publicKey($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPublicKey() => $_has(9);
  @$pb.TagNumber(10)
  void clearPublicKey() => clearField(10);
}

class LoginRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey', protoName: 'publicKey')
    ..hasRequiredFields = false
  ;

  LoginRequest._() : super();
  factory LoginRequest() => create();
  factory LoginRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginRequest clone() => LoginRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginRequest copyWith(void Function(LoginRequest) updates) => super.copyWith((message) => updates(message as LoginRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginRequest create() => LoginRequest._();
  LoginRequest createEmptyInstance() => create();
  static $pb.PbList<LoginRequest> createRepeated() => $pb.PbList<LoginRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginRequest>(create);
  static LoginRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get publicKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set publicKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPublicKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearPublicKey() => clearField(3);
}

class LoginSmsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginSmsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', protoName: 'sessionId')
    ..hasRequiredFields = false
  ;

  LoginSmsRequest._() : super();
  factory LoginSmsRequest() => create();
  factory LoginSmsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginSmsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginSmsRequest clone() => LoginSmsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginSmsRequest copyWith(void Function(LoginSmsRequest) updates) => super.copyWith((message) => updates(message as LoginSmsRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginSmsRequest create() => LoginSmsRequest._();
  LoginSmsRequest createEmptyInstance() => create();
  static $pb.PbList<LoginSmsRequest> createRepeated() => $pb.PbList<LoginSmsRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginSmsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginSmsRequest>(create);
  static LoginSmsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);
}

class VerifyLoginSmsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyLoginSmsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', protoName: 'sessionId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code')
    ..hasRequiredFields = false
  ;

  VerifyLoginSmsRequest._() : super();
  factory VerifyLoginSmsRequest() => create();
  factory VerifyLoginSmsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyLoginSmsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyLoginSmsRequest clone() => VerifyLoginSmsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyLoginSmsRequest copyWith(void Function(VerifyLoginSmsRequest) updates) => super.copyWith((message) => updates(message as VerifyLoginSmsRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyLoginSmsRequest create() => VerifyLoginSmsRequest._();
  VerifyLoginSmsRequest createEmptyInstance() => create();
  static $pb.PbList<VerifyLoginSmsRequest> createRepeated() => $pb.PbList<VerifyLoginSmsRequest>();
  @$core.pragma('dart2js:noInline')
  static VerifyLoginSmsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyLoginSmsRequest>(create);
  static VerifyLoginSmsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);
}

class CheckPinRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CheckPinRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', protoName: 'sessionId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pin')
    ..hasRequiredFields = false
  ;

  CheckPinRequest._() : super();
  factory CheckPinRequest() => create();
  factory CheckPinRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckPinRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckPinRequest clone() => CheckPinRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckPinRequest copyWith(void Function(CheckPinRequest) updates) => super.copyWith((message) => updates(message as CheckPinRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckPinRequest create() => CheckPinRequest._();
  CheckPinRequest createEmptyInstance() => create();
  static $pb.PbList<CheckPinRequest> createRepeated() => $pb.PbList<CheckPinRequest>();
  @$core.pragma('dart2js:noInline')
  static CheckPinRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckPinRequest>(create);
  static CheckPinRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pin => $_getSZ(1);
  @$pb.TagNumber(2)
  set pin($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPin() => $_has(1);
  @$pb.TagNumber(2)
  void clearPin() => clearField(2);
}

class CheckSessionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CheckSessionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', protoName: 'sessionId')
    ..hasRequiredFields = false
  ;

  CheckSessionRequest._() : super();
  factory CheckSessionRequest() => create();
  factory CheckSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckSessionRequest clone() => CheckSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckSessionRequest copyWith(void Function(CheckSessionRequest) updates) => super.copyWith((message) => updates(message as CheckSessionRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckSessionRequest create() => CheckSessionRequest._();
  CheckSessionRequest createEmptyInstance() => create();
  static $pb.PbList<CheckSessionRequest> createRepeated() => $pb.PbList<CheckSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static CheckSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckSessionRequest>(create);
  static CheckSessionRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);
}

enum MarketsRequest_OptionalAssetPairId {
  assetPairId, 
  notSet
}

class MarketsRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, MarketsRequest_OptionalAssetPairId> _MarketsRequest_OptionalAssetPairIdByTag = {
    1 : MarketsRequest_OptionalAssetPairId.assetPairId,
    0 : MarketsRequest_OptionalAssetPairId.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MarketsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairId', protoName: 'assetPairId')
    ..hasRequiredFields = false
  ;

  MarketsRequest._() : super();
  factory MarketsRequest() => create();
  factory MarketsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MarketsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MarketsRequest clone() => MarketsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MarketsRequest copyWith(void Function(MarketsRequest) updates) => super.copyWith((message) => updates(message as MarketsRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MarketsRequest create() => MarketsRequest._();
  MarketsRequest createEmptyInstance() => create();
  static $pb.PbList<MarketsRequest> createRepeated() => $pb.PbList<MarketsRequest>();
  @$core.pragma('dart2js:noInline')
  static MarketsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MarketsRequest>(create);
  static MarketsRequest _defaultInstance;

  MarketsRequest_OptionalAssetPairId whichOptionalAssetPairId() => _MarketsRequest_OptionalAssetPairIdByTag[$_whichOneof(0)];
  void clearOptionalAssetPairId() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get assetPairId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetPairId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetPairId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetPairId() => clearField(1);
}

enum LimitOrdersRequest_OptionalAssetPairId {
  assetPairId, 
  notSet
}

class LimitOrdersRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, LimitOrdersRequest_OptionalAssetPairId> _LimitOrdersRequest_OptionalAssetPairIdByTag = {
    1 : LimitOrdersRequest_OptionalAssetPairId.assetPairId,
    0 : LimitOrdersRequest_OptionalAssetPairId.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LimitOrdersRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairId', protoName: 'assetPairId')
    ..hasRequiredFields = false
  ;

  LimitOrdersRequest._() : super();
  factory LimitOrdersRequest() => create();
  factory LimitOrdersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LimitOrdersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LimitOrdersRequest clone() => LimitOrdersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LimitOrdersRequest copyWith(void Function(LimitOrdersRequest) updates) => super.copyWith((message) => updates(message as LimitOrdersRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LimitOrdersRequest create() => LimitOrdersRequest._();
  LimitOrdersRequest createEmptyInstance() => create();
  static $pb.PbList<LimitOrdersRequest> createRepeated() => $pb.PbList<LimitOrdersRequest>();
  @$core.pragma('dart2js:noInline')
  static LimitOrdersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LimitOrdersRequest>(create);
  static LimitOrdersRequest _defaultInstance;

  LimitOrdersRequest_OptionalAssetPairId whichOptionalAssetPairId() => _LimitOrdersRequest_OptionalAssetPairIdByTag[$_whichOneof(0)];
  void clearOptionalAssetPairId() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get assetPairId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetPairId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetPairId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetPairId() => clearField(1);
}

class LimitOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LimitOrderRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairId', protoName: 'assetPairId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'volume', $pb.PbFieldType.OD)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  LimitOrderRequest._() : super();
  factory LimitOrderRequest() => create();
  factory LimitOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LimitOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LimitOrderRequest clone() => LimitOrderRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LimitOrderRequest copyWith(void Function(LimitOrderRequest) updates) => super.copyWith((message) => updates(message as LimitOrderRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LimitOrderRequest create() => LimitOrderRequest._();
  LimitOrderRequest createEmptyInstance() => create();
  static $pb.PbList<LimitOrderRequest> createRepeated() => $pb.PbList<LimitOrderRequest>();
  @$core.pragma('dart2js:noInline')
  static LimitOrderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LimitOrderRequest>(create);
  static LimitOrderRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetPairId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetPairId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetPairId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetPairId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get assetId => $_getSZ(1);
  @$pb.TagNumber(2)
  set assetId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAssetId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssetId() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get volume => $_getN(2);
  @$pb.TagNumber(3)
  set volume($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVolume() => $_has(2);
  @$pb.TagNumber(3)
  void clearVolume() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(4)
  set price($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);
}

class MarketOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MarketOrderRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairId', protoName: 'assetPairId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'volume', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  MarketOrderRequest._() : super();
  factory MarketOrderRequest() => create();
  factory MarketOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MarketOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MarketOrderRequest clone() => MarketOrderRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MarketOrderRequest copyWith(void Function(MarketOrderRequest) updates) => super.copyWith((message) => updates(message as MarketOrderRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MarketOrderRequest create() => MarketOrderRequest._();
  MarketOrderRequest createEmptyInstance() => create();
  static $pb.PbList<MarketOrderRequest> createRepeated() => $pb.PbList<MarketOrderRequest>();
  @$core.pragma('dart2js:noInline')
  static MarketOrderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MarketOrderRequest>(create);
  static MarketOrderRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetPairId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetPairId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetPairId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetPairId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get assetId => $_getSZ(1);
  @$pb.TagNumber(2)
  set assetId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAssetId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssetId() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get volume => $_getN(2);
  @$pb.TagNumber(3)
  set volume($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVolume() => $_has(2);
  @$pb.TagNumber(3)
  void clearVolume() => clearField(3);
}

enum CancelOrdersRequest_OptionalSide {
  side, 
  notSet
}

class CancelOrdersRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CancelOrdersRequest_OptionalSide> _CancelOrdersRequest_OptionalSideByTag = {
    2 : CancelOrdersRequest_OptionalSide.side,
    0 : CancelOrdersRequest_OptionalSide.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CancelOrdersRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [2])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairId', protoName: 'assetPairId')
    ..e<Side>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'side', $pb.PbFieldType.OE, defaultOrMaker: Side.buy, valueOf: Side.valueOf, enumValues: Side.values)
    ..hasRequiredFields = false
  ;

  CancelOrdersRequest._() : super();
  factory CancelOrdersRequest() => create();
  factory CancelOrdersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelOrdersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelOrdersRequest clone() => CancelOrdersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelOrdersRequest copyWith(void Function(CancelOrdersRequest) updates) => super.copyWith((message) => updates(message as CancelOrdersRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CancelOrdersRequest create() => CancelOrdersRequest._();
  CancelOrdersRequest createEmptyInstance() => create();
  static $pb.PbList<CancelOrdersRequest> createRepeated() => $pb.PbList<CancelOrdersRequest>();
  @$core.pragma('dart2js:noInline')
  static CancelOrdersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelOrdersRequest>(create);
  static CancelOrdersRequest _defaultInstance;

  CancelOrdersRequest_OptionalSide whichOptionalSide() => _CancelOrdersRequest_OptionalSideByTag[$_whichOneof(0)];
  void clearOptionalSide() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get assetPairId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetPairId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetPairId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetPairId() => clearField(1);

  @$pb.TagNumber(2)
  Side get side => $_getN(1);
  @$pb.TagNumber(2)
  set side(Side v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSide() => $_has(1);
  @$pb.TagNumber(2)
  void clearSide() => clearField(2);
}

class CancelOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CancelOrderRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderId', protoName: 'orderId')
    ..hasRequiredFields = false
  ;

  CancelOrderRequest._() : super();
  factory CancelOrderRequest() => create();
  factory CancelOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelOrderRequest clone() => CancelOrderRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelOrderRequest copyWith(void Function(CancelOrderRequest) updates) => super.copyWith((message) => updates(message as CancelOrderRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CancelOrderRequest create() => CancelOrderRequest._();
  CancelOrderRequest createEmptyInstance() => create();
  static $pb.PbList<CancelOrderRequest> createRepeated() => $pb.PbList<CancelOrderRequest>();
  @$core.pragma('dart2js:noInline')
  static CancelOrderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelOrderRequest>(create);
  static CancelOrderRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get orderId => $_getSZ(0);
  @$pb.TagNumber(1)
  set orderId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrderId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrderId() => clearField(1);
}

class EditOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EditOrderRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderId', protoName: 'orderId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairId', protoName: 'assetPairId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'volume', $pb.PbFieldType.OD)
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  EditOrderRequest._() : super();
  factory EditOrderRequest() => create();
  factory EditOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditOrderRequest clone() => EditOrderRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditOrderRequest copyWith(void Function(EditOrderRequest) updates) => super.copyWith((message) => updates(message as EditOrderRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditOrderRequest create() => EditOrderRequest._();
  EditOrderRequest createEmptyInstance() => create();
  static $pb.PbList<EditOrderRequest> createRepeated() => $pb.PbList<EditOrderRequest>();
  @$core.pragma('dart2js:noInline')
  static EditOrderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditOrderRequest>(create);
  static EditOrderRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get orderId => $_getSZ(0);
  @$pb.TagNumber(1)
  set orderId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrderId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrderId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get assetPairId => $_getSZ(1);
  @$pb.TagNumber(2)
  set assetPairId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAssetPairId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssetPairId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get assetId => $_getSZ(2);
  @$pb.TagNumber(3)
  set assetId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAssetId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAssetId() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get volume => $_getN(3);
  @$pb.TagNumber(4)
  set volume($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVolume() => $_has(3);
  @$pb.TagNumber(4)
  void clearVolume() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get price => $_getN(4);
  @$pb.TagNumber(5)
  set price($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrice() => clearField(5);
}

enum TradesRequest_OptionalAssetPairId {
  assetPairId, 
  notSet
}

enum TradesRequest_OptionalFromDate {
  from, 
  notSet
}

enum TradesRequest_OptionalToDate {
  to, 
  notSet
}

enum TradesRequest_OptionalTradeType {
  tradeType, 
  notSet
}

class TradesRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, TradesRequest_OptionalAssetPairId> _TradesRequest_OptionalAssetPairIdByTag = {
    1 : TradesRequest_OptionalAssetPairId.assetPairId,
    0 : TradesRequest_OptionalAssetPairId.notSet
  };
  static const $core.Map<$core.int, TradesRequest_OptionalFromDate> _TradesRequest_OptionalFromDateByTag = {
    4 : TradesRequest_OptionalFromDate.from,
    0 : TradesRequest_OptionalFromDate.notSet
  };
  static const $core.Map<$core.int, TradesRequest_OptionalToDate> _TradesRequest_OptionalToDateByTag = {
    5 : TradesRequest_OptionalToDate.to,
    0 : TradesRequest_OptionalToDate.notSet
  };
  static const $core.Map<$core.int, TradesRequest_OptionalTradeType> _TradesRequest_OptionalTradeTypeByTag = {
    6 : TradesRequest_OptionalTradeType.tradeType,
    0 : TradesRequest_OptionalTradeType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TradesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1])
    ..oo(1, [4])
    ..oo(2, [5])
    ..oo(3, [6])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairId', protoName: 'assetPairId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'take', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skip', $pb.PbFieldType.O3)
    ..aOM<$3.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'to', subBuilder: $3.Timestamp.create)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tradeType', protoName: 'tradeType')
    ..hasRequiredFields = false
  ;

  TradesRequest._() : super();
  factory TradesRequest() => create();
  factory TradesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TradesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TradesRequest clone() => TradesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TradesRequest copyWith(void Function(TradesRequest) updates) => super.copyWith((message) => updates(message as TradesRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TradesRequest create() => TradesRequest._();
  TradesRequest createEmptyInstance() => create();
  static $pb.PbList<TradesRequest> createRepeated() => $pb.PbList<TradesRequest>();
  @$core.pragma('dart2js:noInline')
  static TradesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TradesRequest>(create);
  static TradesRequest _defaultInstance;

  TradesRequest_OptionalAssetPairId whichOptionalAssetPairId() => _TradesRequest_OptionalAssetPairIdByTag[$_whichOneof(0)];
  void clearOptionalAssetPairId() => clearField($_whichOneof(0));

  TradesRequest_OptionalFromDate whichOptionalFromDate() => _TradesRequest_OptionalFromDateByTag[$_whichOneof(1)];
  void clearOptionalFromDate() => clearField($_whichOneof(1));

  TradesRequest_OptionalToDate whichOptionalToDate() => _TradesRequest_OptionalToDateByTag[$_whichOneof(2)];
  void clearOptionalToDate() => clearField($_whichOneof(2));

  TradesRequest_OptionalTradeType whichOptionalTradeType() => _TradesRequest_OptionalTradeTypeByTag[$_whichOneof(3)];
  void clearOptionalTradeType() => clearField($_whichOneof(3));

  @$pb.TagNumber(1)
  $core.String get assetPairId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetPairId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetPairId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetPairId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get take => $_getIZ(1);
  @$pb.TagNumber(2)
  set take($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTake() => $_has(1);
  @$pb.TagNumber(2)
  void clearTake() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get skip => $_getIZ(2);
  @$pb.TagNumber(3)
  set skip($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSkip() => $_has(2);
  @$pb.TagNumber(3)
  void clearSkip() => clearField(3);

  @$pb.TagNumber(4)
  $3.Timestamp get from => $_getN(3);
  @$pb.TagNumber(4)
  set from($3.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFrom() => $_has(3);
  @$pb.TagNumber(4)
  void clearFrom() => clearField(4);
  @$pb.TagNumber(4)
  $3.Timestamp ensureFrom() => $_ensure(3);

  @$pb.TagNumber(5)
  $3.Timestamp get to => $_getN(4);
  @$pb.TagNumber(5)
  set to($3.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTo() => $_has(4);
  @$pb.TagNumber(5)
  void clearTo() => clearField(5);
  @$pb.TagNumber(5)
  $3.Timestamp ensureTo() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get tradeType => $_getSZ(5);
  @$pb.TagNumber(6)
  set tradeType($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTradeType() => $_has(5);
  @$pb.TagNumber(6)
  void clearTradeType() => clearField(6);
}

class AssetTradesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssetTradesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'take', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skip', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  AssetTradesRequest._() : super();
  factory AssetTradesRequest() => create();
  factory AssetTradesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetTradesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssetTradesRequest clone() => AssetTradesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssetTradesRequest copyWith(void Function(AssetTradesRequest) updates) => super.copyWith((message) => updates(message as AssetTradesRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetTradesRequest create() => AssetTradesRequest._();
  AssetTradesRequest createEmptyInstance() => create();
  static $pb.PbList<AssetTradesRequest> createRepeated() => $pb.PbList<AssetTradesRequest>();
  @$core.pragma('dart2js:noInline')
  static AssetTradesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetTradesRequest>(create);
  static AssetTradesRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get take => $_getIZ(1);
  @$pb.TagNumber(2)
  set take($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTake() => $_has(1);
  @$pb.TagNumber(2)
  void clearTake() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get skip => $_getIZ(2);
  @$pb.TagNumber(3)
  set skip($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSkip() => $_has(2);
  @$pb.TagNumber(3)
  void clearSkip() => clearField(3);
}

enum FundsRequest_OptionalAssetId {
  assetId, 
  notSet
}

enum FundsRequest_OptionalFromDate {
  from, 
  notSet
}

enum FundsRequest_OptionalToDate {
  to, 
  notSet
}

class FundsRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, FundsRequest_OptionalAssetId> _FundsRequest_OptionalAssetIdByTag = {
    1 : FundsRequest_OptionalAssetId.assetId,
    0 : FundsRequest_OptionalAssetId.notSet
  };
  static const $core.Map<$core.int, FundsRequest_OptionalFromDate> _FundsRequest_OptionalFromDateByTag = {
    4 : FundsRequest_OptionalFromDate.from,
    0 : FundsRequest_OptionalFromDate.notSet
  };
  static const $core.Map<$core.int, FundsRequest_OptionalToDate> _FundsRequest_OptionalToDateByTag = {
    5 : FundsRequest_OptionalToDate.to,
    0 : FundsRequest_OptionalToDate.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FundsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1])
    ..oo(1, [4])
    ..oo(2, [5])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'take', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skip', $pb.PbFieldType.O3)
    ..aOM<$3.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'to', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  FundsRequest._() : super();
  factory FundsRequest() => create();
  factory FundsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FundsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FundsRequest clone() => FundsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FundsRequest copyWith(void Function(FundsRequest) updates) => super.copyWith((message) => updates(message as FundsRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FundsRequest create() => FundsRequest._();
  FundsRequest createEmptyInstance() => create();
  static $pb.PbList<FundsRequest> createRepeated() => $pb.PbList<FundsRequest>();
  @$core.pragma('dart2js:noInline')
  static FundsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FundsRequest>(create);
  static FundsRequest _defaultInstance;

  FundsRequest_OptionalAssetId whichOptionalAssetId() => _FundsRequest_OptionalAssetIdByTag[$_whichOneof(0)];
  void clearOptionalAssetId() => clearField($_whichOneof(0));

  FundsRequest_OptionalFromDate whichOptionalFromDate() => _FundsRequest_OptionalFromDateByTag[$_whichOneof(1)];
  void clearOptionalFromDate() => clearField($_whichOneof(1));

  FundsRequest_OptionalToDate whichOptionalToDate() => _FundsRequest_OptionalToDateByTag[$_whichOneof(2)];
  void clearOptionalToDate() => clearField($_whichOneof(2));

  @$pb.TagNumber(1)
  $core.String get assetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get take => $_getIZ(1);
  @$pb.TagNumber(2)
  set take($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTake() => $_has(1);
  @$pb.TagNumber(2)
  void clearTake() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get skip => $_getIZ(2);
  @$pb.TagNumber(3)
  set skip($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSkip() => $_has(2);
  @$pb.TagNumber(3)
  void clearSkip() => clearField(3);

  @$pb.TagNumber(4)
  $3.Timestamp get from => $_getN(3);
  @$pb.TagNumber(4)
  set from($3.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFrom() => $_has(3);
  @$pb.TagNumber(4)
  void clearFrom() => clearField(4);
  @$pb.TagNumber(4)
  $3.Timestamp ensureFrom() => $_ensure(3);

  @$pb.TagNumber(5)
  $3.Timestamp get to => $_getN(4);
  @$pb.TagNumber(5)
  set to($3.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTo() => $_has(4);
  @$pb.TagNumber(5)
  void clearTo() => clearField(5);
  @$pb.TagNumber(5)
  $3.Timestamp ensureTo() => $_ensure(4);
}

class ExplorerLinksRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExplorerLinksRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transactionHash', protoName: 'transactionHash')
    ..hasRequiredFields = false
  ;

  ExplorerLinksRequest._() : super();
  factory ExplorerLinksRequest() => create();
  factory ExplorerLinksRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExplorerLinksRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExplorerLinksRequest clone() => ExplorerLinksRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExplorerLinksRequest copyWith(void Function(ExplorerLinksRequest) updates) => super.copyWith((message) => updates(message as ExplorerLinksRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExplorerLinksRequest create() => ExplorerLinksRequest._();
  ExplorerLinksRequest createEmptyInstance() => create();
  static $pb.PbList<ExplorerLinksRequest> createRepeated() => $pb.PbList<ExplorerLinksRequest>();
  @$core.pragma('dart2js:noInline')
  static ExplorerLinksRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExplorerLinksRequest>(create);
  static ExplorerLinksRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get transactionHash => $_getSZ(1);
  @$pb.TagNumber(2)
  set transactionHash($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTransactionHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransactionHash() => clearField(2);
}

class PublicTradesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublicTradesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairId', protoName: 'assetPairId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skip', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'take', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  PublicTradesRequest._() : super();
  factory PublicTradesRequest() => create();
  factory PublicTradesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublicTradesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublicTradesRequest clone() => PublicTradesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublicTradesRequest copyWith(void Function(PublicTradesRequest) updates) => super.copyWith((message) => updates(message as PublicTradesRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublicTradesRequest create() => PublicTradesRequest._();
  PublicTradesRequest createEmptyInstance() => create();
  static $pb.PbList<PublicTradesRequest> createRepeated() => $pb.PbList<PublicTradesRequest>();
  @$core.pragma('dart2js:noInline')
  static PublicTradesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublicTradesRequest>(create);
  static PublicTradesRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetPairId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetPairId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetPairId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetPairId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get skip => $_getIZ(1);
  @$pb.TagNumber(2)
  set skip($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSkip() => $_has(1);
  @$pb.TagNumber(2)
  void clearSkip() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get take => $_getIZ(2);
  @$pb.TagNumber(3)
  set take($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTake() => $_has(2);
  @$pb.TagNumber(3)
  void clearTake() => clearField(3);
}

class WatchlistRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WatchlistRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  WatchlistRequest._() : super();
  factory WatchlistRequest() => create();
  factory WatchlistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchlistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WatchlistRequest clone() => WatchlistRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WatchlistRequest copyWith(void Function(WatchlistRequest) updates) => super.copyWith((message) => updates(message as WatchlistRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WatchlistRequest create() => WatchlistRequest._();
  WatchlistRequest createEmptyInstance() => create();
  static $pb.PbList<WatchlistRequest> createRepeated() => $pb.PbList<WatchlistRequest>();
  @$core.pragma('dart2js:noInline')
  static WatchlistRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchlistRequest>(create);
  static WatchlistRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class AddWatchlistRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddWatchlistRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'order', $pb.PbFieldType.O3)
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetIds', protoName: 'assetIds')
    ..hasRequiredFields = false
  ;

  AddWatchlistRequest._() : super();
  factory AddWatchlistRequest() => create();
  factory AddWatchlistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddWatchlistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddWatchlistRequest clone() => AddWatchlistRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddWatchlistRequest copyWith(void Function(AddWatchlistRequest) updates) => super.copyWith((message) => updates(message as AddWatchlistRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddWatchlistRequest create() => AddWatchlistRequest._();
  AddWatchlistRequest createEmptyInstance() => create();
  static $pb.PbList<AddWatchlistRequest> createRepeated() => $pb.PbList<AddWatchlistRequest>();
  @$core.pragma('dart2js:noInline')
  static AddWatchlistRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddWatchlistRequest>(create);
  static AddWatchlistRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get order => $_getIZ(1);
  @$pb.TagNumber(2)
  set order($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrder() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrder() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get assetIds => $_getList(2);
}

class UpdateWatchlistRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateWatchlistRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'order', $pb.PbFieldType.O3)
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetIds', protoName: 'assetIds')
    ..hasRequiredFields = false
  ;

  UpdateWatchlistRequest._() : super();
  factory UpdateWatchlistRequest() => create();
  factory UpdateWatchlistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateWatchlistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateWatchlistRequest clone() => UpdateWatchlistRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateWatchlistRequest copyWith(void Function(UpdateWatchlistRequest) updates) => super.copyWith((message) => updates(message as UpdateWatchlistRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateWatchlistRequest create() => UpdateWatchlistRequest._();
  UpdateWatchlistRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateWatchlistRequest> createRepeated() => $pb.PbList<UpdateWatchlistRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateWatchlistRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateWatchlistRequest>(create);
  static UpdateWatchlistRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get order => $_getIZ(2);
  @$pb.TagNumber(3)
  set order($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrder() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrder() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get assetIds => $_getList(3);
}

class DeleteWatchlistRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteWatchlistRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteWatchlistRequest._() : super();
  factory DeleteWatchlistRequest() => create();
  factory DeleteWatchlistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteWatchlistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteWatchlistRequest clone() => DeleteWatchlistRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteWatchlistRequest copyWith(void Function(DeleteWatchlistRequest) updates) => super.copyWith((message) => updates(message as DeleteWatchlistRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteWatchlistRequest create() => DeleteWatchlistRequest._();
  DeleteWatchlistRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteWatchlistRequest> createRepeated() => $pb.PbList<DeleteWatchlistRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteWatchlistRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteWatchlistRequest>(create);
  static DeleteWatchlistRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class SetAddressRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetAddressRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..hasRequiredFields = false
  ;

  SetAddressRequest._() : super();
  factory SetAddressRequest() => create();
  factory SetAddressRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetAddressRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetAddressRequest clone() => SetAddressRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetAddressRequest copyWith(void Function(SetAddressRequest) updates) => super.copyWith((message) => updates(message as SetAddressRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetAddressRequest create() => SetAddressRequest._();
  SetAddressRequest createEmptyInstance() => create();
  static $pb.PbList<SetAddressRequest> createRepeated() => $pb.PbList<SetAddressRequest>();
  @$core.pragma('dart2js:noInline')
  static SetAddressRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetAddressRequest>(create);
  static SetAddressRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

class SetZipRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetZipRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'zip')
    ..hasRequiredFields = false
  ;

  SetZipRequest._() : super();
  factory SetZipRequest() => create();
  factory SetZipRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetZipRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetZipRequest clone() => SetZipRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetZipRequest copyWith(void Function(SetZipRequest) updates) => super.copyWith((message) => updates(message as SetZipRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetZipRequest create() => SetZipRequest._();
  SetZipRequest createEmptyInstance() => create();
  static $pb.PbList<SetZipRequest> createRepeated() => $pb.PbList<SetZipRequest>();
  @$core.pragma('dart2js:noInline')
  static SetZipRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetZipRequest>(create);
  static SetZipRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get zip => $_getSZ(0);
  @$pb.TagNumber(1)
  set zip($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasZip() => $_has(0);
  @$pb.TagNumber(1)
  void clearZip() => clearField(1);
}

class KycFileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KycFileRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'documentType', protoName: 'documentType')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filename')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'file', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  KycFileRequest._() : super();
  factory KycFileRequest() => create();
  factory KycFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KycFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KycFileRequest clone() => KycFileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KycFileRequest copyWith(void Function(KycFileRequest) updates) => super.copyWith((message) => updates(message as KycFileRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KycFileRequest create() => KycFileRequest._();
  KycFileRequest createEmptyInstance() => create();
  static $pb.PbList<KycFileRequest> createRepeated() => $pb.PbList<KycFileRequest>();
  @$core.pragma('dart2js:noInline')
  static KycFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KycFileRequest>(create);
  static KycFileRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get documentType => $_getSZ(0);
  @$pb.TagNumber(1)
  set documentType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDocumentType() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocumentType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get filename => $_getSZ(1);
  @$pb.TagNumber(2)
  set filename($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFilename() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilename() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get file => $_getN(2);
  @$pb.TagNumber(3)
  set file($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFile() => $_has(2);
  @$pb.TagNumber(3)
  void clearFile() => clearField(3);
}

class AnswersRequest_Choice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AnswersRequest.Choice', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'questionId', protoName: 'questionId')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'answerIds', protoName: 'answerIds')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'other')
    ..hasRequiredFields = false
  ;

  AnswersRequest_Choice._() : super();
  factory AnswersRequest_Choice() => create();
  factory AnswersRequest_Choice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnswersRequest_Choice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnswersRequest_Choice clone() => AnswersRequest_Choice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnswersRequest_Choice copyWith(void Function(AnswersRequest_Choice) updates) => super.copyWith((message) => updates(message as AnswersRequest_Choice)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AnswersRequest_Choice create() => AnswersRequest_Choice._();
  AnswersRequest_Choice createEmptyInstance() => create();
  static $pb.PbList<AnswersRequest_Choice> createRepeated() => $pb.PbList<AnswersRequest_Choice>();
  @$core.pragma('dart2js:noInline')
  static AnswersRequest_Choice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnswersRequest_Choice>(create);
  static AnswersRequest_Choice _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get questionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set questionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuestionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuestionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get answerIds => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get other => $_getSZ(2);
  @$pb.TagNumber(3)
  set other($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOther() => $_has(2);
  @$pb.TagNumber(3)
  void clearOther() => clearField(3);
}

class AnswersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AnswersRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pc<AnswersRequest_Choice>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'answers', $pb.PbFieldType.PM, subBuilder: AnswersRequest_Choice.create)
    ..hasRequiredFields = false
  ;

  AnswersRequest._() : super();
  factory AnswersRequest() => create();
  factory AnswersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnswersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnswersRequest clone() => AnswersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnswersRequest copyWith(void Function(AnswersRequest) updates) => super.copyWith((message) => updates(message as AnswersRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AnswersRequest create() => AnswersRequest._();
  AnswersRequest createEmptyInstance() => create();
  static $pb.PbList<AnswersRequest> createRepeated() => $pb.PbList<AnswersRequest>();
  @$core.pragma('dart2js:noInline')
  static AnswersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnswersRequest>(create);
  static AnswersRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AnswersRequest_Choice> get answers => $_getList(0);
}

enum SubmitProfileRequest_OptionalTier {
  tier, 
  notSet
}

class SubmitProfileRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SubmitProfileRequest_OptionalTier> _SubmitProfileRequest_OptionalTierByTag = {
    1 : SubmitProfileRequest_OptionalTier.tier,
    0 : SubmitProfileRequest_OptionalTier.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubmitProfileRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1])
    ..e<TierUpgrade>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tier', $pb.PbFieldType.OE, defaultOrMaker: TierUpgrade.Advanced, valueOf: TierUpgrade.valueOf, enumValues: TierUpgrade.values)
    ..hasRequiredFields = false
  ;

  SubmitProfileRequest._() : super();
  factory SubmitProfileRequest() => create();
  factory SubmitProfileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubmitProfileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubmitProfileRequest clone() => SubmitProfileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubmitProfileRequest copyWith(void Function(SubmitProfileRequest) updates) => super.copyWith((message) => updates(message as SubmitProfileRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubmitProfileRequest create() => SubmitProfileRequest._();
  SubmitProfileRequest createEmptyInstance() => create();
  static $pb.PbList<SubmitProfileRequest> createRepeated() => $pb.PbList<SubmitProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static SubmitProfileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubmitProfileRequest>(create);
  static SubmitProfileRequest _defaultInstance;

  SubmitProfileRequest_OptionalTier whichOptionalTier() => _SubmitProfileRequest_OptionalTierByTag[$_whichOneof(0)];
  void clearOptionalTier() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  TierUpgrade get tier => $_getN(0);
  @$pb.TagNumber(1)
  set tier(TierUpgrade v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTier() => $_has(0);
  @$pb.TagNumber(1)
  void clearTier() => clearField(1);
}

class WalletRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WalletRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..hasRequiredFields = false
  ;

  WalletRequest._() : super();
  factory WalletRequest() => create();
  factory WalletRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalletRequest clone() => WalletRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalletRequest copyWith(void Function(WalletRequest) updates) => super.copyWith((message) => updates(message as WalletRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WalletRequest create() => WalletRequest._();
  WalletRequest createEmptyInstance() => create();
  static $pb.PbList<WalletRequest> createRepeated() => $pb.PbList<WalletRequest>();
  @$core.pragma('dart2js:noInline')
  static WalletRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletRequest>(create);
  static WalletRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);
}

class SwiftCredentialsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SwiftCredentialsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..hasRequiredFields = false
  ;

  SwiftCredentialsRequest._() : super();
  factory SwiftCredentialsRequest() => create();
  factory SwiftCredentialsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCredentialsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SwiftCredentialsRequest clone() => SwiftCredentialsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SwiftCredentialsRequest copyWith(void Function(SwiftCredentialsRequest) updates) => super.copyWith((message) => updates(message as SwiftCredentialsRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCredentialsRequest create() => SwiftCredentialsRequest._();
  SwiftCredentialsRequest createEmptyInstance() => create();
  static $pb.PbList<SwiftCredentialsRequest> createRepeated() => $pb.PbList<SwiftCredentialsRequest>();
  @$core.pragma('dart2js:noInline')
  static SwiftCredentialsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCredentialsRequest>(create);
  static SwiftCredentialsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);
}

class BankTransferRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BankTransferRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'balanceChange', $pb.PbFieldType.OD, protoName: 'balanceChange')
    ..hasRequiredFields = false
  ;

  BankTransferRequest._() : super();
  factory BankTransferRequest() => create();
  factory BankTransferRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BankTransferRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BankTransferRequest clone() => BankTransferRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BankTransferRequest copyWith(void Function(BankTransferRequest) updates) => super.copyWith((message) => updates(message as BankTransferRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BankTransferRequest create() => BankTransferRequest._();
  BankTransferRequest createEmptyInstance() => create();
  static $pb.PbList<BankTransferRequest> createRepeated() => $pb.PbList<BankTransferRequest>();
  @$core.pragma('dart2js:noInline')
  static BankTransferRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BankTransferRequest>(create);
  static BankTransferRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get balanceChange => $_getN(1);
  @$pb.TagNumber(2)
  set balanceChange($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBalanceChange() => $_has(1);
  @$pb.TagNumber(2)
  void clearBalanceChange() => clearField(2);
}

class BankCardPaymentUrlRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BankCardPaymentUrlRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..hasRequiredFields = false
  ;

  BankCardPaymentUrlRequest._() : super();
  factory BankCardPaymentUrlRequest() => create();
  factory BankCardPaymentUrlRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BankCardPaymentUrlRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BankCardPaymentUrlRequest clone() => BankCardPaymentUrlRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BankCardPaymentUrlRequest copyWith(void Function(BankCardPaymentUrlRequest) updates) => super.copyWith((message) => updates(message as BankCardPaymentUrlRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BankCardPaymentUrlRequest create() => BankCardPaymentUrlRequest._();
  BankCardPaymentUrlRequest createEmptyInstance() => create();
  static $pb.PbList<BankCardPaymentUrlRequest> createRepeated() => $pb.PbList<BankCardPaymentUrlRequest>();
  @$core.pragma('dart2js:noInline')
  static BankCardPaymentUrlRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BankCardPaymentUrlRequest>(create);
  static BankCardPaymentUrlRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get amount => $_getSZ(0);
  @$pb.TagNumber(1)
  set amount($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAmount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmount() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get assetId => $_getSZ(1);
  @$pb.TagNumber(2)
  set assetId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAssetId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssetId() => clearField(2);
}

class CryptoDepositAddressRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CryptoDepositAddressRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..hasRequiredFields = false
  ;

  CryptoDepositAddressRequest._() : super();
  factory CryptoDepositAddressRequest() => create();
  factory CryptoDepositAddressRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CryptoDepositAddressRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CryptoDepositAddressRequest clone() => CryptoDepositAddressRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CryptoDepositAddressRequest copyWith(void Function(CryptoDepositAddressRequest) updates) => super.copyWith((message) => updates(message as CryptoDepositAddressRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CryptoDepositAddressRequest create() => CryptoDepositAddressRequest._();
  CryptoDepositAddressRequest createEmptyInstance() => create();
  static $pb.PbList<CryptoDepositAddressRequest> createRepeated() => $pb.PbList<CryptoDepositAddressRequest>();
  @$core.pragma('dart2js:noInline')
  static CryptoDepositAddressRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CryptoDepositAddressRequest>(create);
  static CryptoDepositAddressRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);
}

class WithdrawalCryptoInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WithdrawalCryptoInfoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..hasRequiredFields = false
  ;

  WithdrawalCryptoInfoRequest._() : super();
  factory WithdrawalCryptoInfoRequest() => create();
  factory WithdrawalCryptoInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithdrawalCryptoInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WithdrawalCryptoInfoRequest clone() => WithdrawalCryptoInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WithdrawalCryptoInfoRequest copyWith(void Function(WithdrawalCryptoInfoRequest) updates) => super.copyWith((message) => updates(message as WithdrawalCryptoInfoRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WithdrawalCryptoInfoRequest create() => WithdrawalCryptoInfoRequest._();
  WithdrawalCryptoInfoRequest createEmptyInstance() => create();
  static $pb.PbList<WithdrawalCryptoInfoRequest> createRepeated() => $pb.PbList<WithdrawalCryptoInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static WithdrawalCryptoInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithdrawalCryptoInfoRequest>(create);
  static WithdrawalCryptoInfoRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);
}

class CheckCryptoAddressRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CheckCryptoAddressRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressExtension', protoName: 'addressExtension')
    ..hasRequiredFields = false
  ;

  CheckCryptoAddressRequest._() : super();
  factory CheckCryptoAddressRequest() => create();
  factory CheckCryptoAddressRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckCryptoAddressRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckCryptoAddressRequest clone() => CheckCryptoAddressRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckCryptoAddressRequest copyWith(void Function(CheckCryptoAddressRequest) updates) => super.copyWith((message) => updates(message as CheckCryptoAddressRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckCryptoAddressRequest create() => CheckCryptoAddressRequest._();
  CheckCryptoAddressRequest createEmptyInstance() => create();
  static $pb.PbList<CheckCryptoAddressRequest> createRepeated() => $pb.PbList<CheckCryptoAddressRequest>();
  @$core.pragma('dart2js:noInline')
  static CheckCryptoAddressRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckCryptoAddressRequest>(create);
  static CheckCryptoAddressRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get address => $_getSZ(1);
  @$pb.TagNumber(2)
  set address($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get addressExtension => $_getSZ(2);
  @$pb.TagNumber(3)
  set addressExtension($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddressExtension() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddressExtension() => clearField(3);
}

class SwiftCashoutFeeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SwiftCashoutFeeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countryCode', protoName: 'countryCode')
    ..hasRequiredFields = false
  ;

  SwiftCashoutFeeRequest._() : super();
  factory SwiftCashoutFeeRequest() => create();
  factory SwiftCashoutFeeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCashoutFeeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SwiftCashoutFeeRequest clone() => SwiftCashoutFeeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SwiftCashoutFeeRequest copyWith(void Function(SwiftCashoutFeeRequest) updates) => super.copyWith((message) => updates(message as SwiftCashoutFeeRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutFeeRequest create() => SwiftCashoutFeeRequest._();
  SwiftCashoutFeeRequest createEmptyInstance() => create();
  static $pb.PbList<SwiftCashoutFeeRequest> createRepeated() => $pb.PbList<SwiftCashoutFeeRequest>();
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutFeeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCashoutFeeRequest>(create);
  static SwiftCashoutFeeRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get countryCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set countryCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCountryCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCountryCode() => clearField(2);
}

class SwiftCashoutRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SwiftCashoutRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'asset')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bic')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accNumber', protoName: 'accNumber')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accName', protoName: 'accName')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accHolderAddress', protoName: 'accHolderAddress')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bankName', protoName: 'bankName')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accHolderCountry', protoName: 'accHolderCountry')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accHolderZipCode', protoName: 'accHolderZipCode')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accHolderCity', protoName: 'accHolderCity')
    ..hasRequiredFields = false
  ;

  SwiftCashoutRequest._() : super();
  factory SwiftCashoutRequest() => create();
  factory SwiftCashoutRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCashoutRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SwiftCashoutRequest clone() => SwiftCashoutRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SwiftCashoutRequest copyWith(void Function(SwiftCashoutRequest) updates) => super.copyWith((message) => updates(message as SwiftCashoutRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutRequest create() => SwiftCashoutRequest._();
  SwiftCashoutRequest createEmptyInstance() => create();
  static $pb.PbList<SwiftCashoutRequest> createRepeated() => $pb.PbList<SwiftCashoutRequest>();
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCashoutRequest>(create);
  static SwiftCashoutRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get amount => $_getSZ(0);
  @$pb.TagNumber(1)
  set amount($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAmount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmount() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get asset => $_getSZ(1);
  @$pb.TagNumber(2)
  set asset($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAsset() => $_has(1);
  @$pb.TagNumber(2)
  void clearAsset() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get bic => $_getSZ(2);
  @$pb.TagNumber(3)
  set bic($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBic() => $_has(2);
  @$pb.TagNumber(3)
  void clearBic() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get accNumber => $_getSZ(3);
  @$pb.TagNumber(4)
  set accNumber($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get accName => $_getSZ(4);
  @$pb.TagNumber(5)
  set accName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAccName() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get accHolderAddress => $_getSZ(5);
  @$pb.TagNumber(6)
  set accHolderAddress($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAccHolderAddress() => $_has(5);
  @$pb.TagNumber(6)
  void clearAccHolderAddress() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get bankName => $_getSZ(6);
  @$pb.TagNumber(7)
  set bankName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBankName() => $_has(6);
  @$pb.TagNumber(7)
  void clearBankName() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get accHolderCountry => $_getSZ(7);
  @$pb.TagNumber(8)
  set accHolderCountry($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAccHolderCountry() => $_has(7);
  @$pb.TagNumber(8)
  void clearAccHolderCountry() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get accHolderZipCode => $_getSZ(8);
  @$pb.TagNumber(9)
  set accHolderZipCode($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAccHolderZipCode() => $_has(8);
  @$pb.TagNumber(9)
  void clearAccHolderZipCode() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get accHolderCity => $_getSZ(9);
  @$pb.TagNumber(10)
  set accHolderCity($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAccHolderCity() => $_has(9);
  @$pb.TagNumber(10)
  void clearAccHolderCity() => clearField(10);
}

class CryptoCashoutRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CryptoCashoutRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'volume')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'destinationAddress', protoName: 'destinationAddress')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'destinationAddressExtension', protoName: 'destinationAddressExtension')
    ..hasRequiredFields = false
  ;

  CryptoCashoutRequest._() : super();
  factory CryptoCashoutRequest() => create();
  factory CryptoCashoutRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CryptoCashoutRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CryptoCashoutRequest clone() => CryptoCashoutRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CryptoCashoutRequest copyWith(void Function(CryptoCashoutRequest) updates) => super.copyWith((message) => updates(message as CryptoCashoutRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CryptoCashoutRequest create() => CryptoCashoutRequest._();
  CryptoCashoutRequest createEmptyInstance() => create();
  static $pb.PbList<CryptoCashoutRequest> createRepeated() => $pb.PbList<CryptoCashoutRequest>();
  @$core.pragma('dart2js:noInline')
  static CryptoCashoutRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CryptoCashoutRequest>(create);
  static CryptoCashoutRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get volume => $_getSZ(1);
  @$pb.TagNumber(2)
  set volume($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVolume() => $_has(1);
  @$pb.TagNumber(2)
  void clearVolume() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get destinationAddress => $_getSZ(2);
  @$pb.TagNumber(3)
  set destinationAddress($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDestinationAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearDestinationAddress() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get destinationAddressExtension => $_getSZ(3);
  @$pb.TagNumber(4)
  set destinationAddressExtension($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDestinationAddressExtension() => $_has(3);
  @$pb.TagNumber(4)
  void clearDestinationAddressExtension() => clearField(4);
}

class AssetDisclaimerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssetDisclaimerRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disclaimerId', protoName: 'disclaimerId')
    ..hasRequiredFields = false
  ;

  AssetDisclaimerRequest._() : super();
  factory AssetDisclaimerRequest() => create();
  factory AssetDisclaimerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetDisclaimerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssetDisclaimerRequest clone() => AssetDisclaimerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssetDisclaimerRequest copyWith(void Function(AssetDisclaimerRequest) updates) => super.copyWith((message) => updates(message as AssetDisclaimerRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetDisclaimerRequest create() => AssetDisclaimerRequest._();
  AssetDisclaimerRequest createEmptyInstance() => create();
  static $pb.PbList<AssetDisclaimerRequest> createRepeated() => $pb.PbList<AssetDisclaimerRequest>();
  @$core.pragma('dart2js:noInline')
  static AssetDisclaimerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetDisclaimerRequest>(create);
  static AssetDisclaimerRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get disclaimerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set disclaimerId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDisclaimerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDisclaimerId() => clearField(1);
}

class CandleUpdatesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CandleUpdatesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairId', protoName: 'assetPairId')
    ..e<CandleType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: CandleType.Bid, valueOf: CandleType.valueOf, enumValues: CandleType.values)
    ..e<CandleInterval>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'interval', $pb.PbFieldType.OE, defaultOrMaker: CandleInterval.Min5, valueOf: CandleInterval.valueOf, enumValues: CandleInterval.values)
    ..hasRequiredFields = false
  ;

  CandleUpdatesRequest._() : super();
  factory CandleUpdatesRequest() => create();
  factory CandleUpdatesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CandleUpdatesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CandleUpdatesRequest clone() => CandleUpdatesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CandleUpdatesRequest copyWith(void Function(CandleUpdatesRequest) updates) => super.copyWith((message) => updates(message as CandleUpdatesRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CandleUpdatesRequest create() => CandleUpdatesRequest._();
  CandleUpdatesRequest createEmptyInstance() => create();
  static $pb.PbList<CandleUpdatesRequest> createRepeated() => $pb.PbList<CandleUpdatesRequest>();
  @$core.pragma('dart2js:noInline')
  static CandleUpdatesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CandleUpdatesRequest>(create);
  static CandleUpdatesRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetPairId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetPairId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetPairId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetPairId() => clearField(1);

  @$pb.TagNumber(2)
  CandleType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(CandleType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  CandleInterval get interval => $_getN(2);
  @$pb.TagNumber(3)
  set interval(CandleInterval v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasInterval() => $_has(2);
  @$pb.TagNumber(3)
  void clearInterval() => clearField(3);
}

class OrderbookUpdatesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrderbookUpdatesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairId', protoName: 'assetPairId')
    ..hasRequiredFields = false
  ;

  OrderbookUpdatesRequest._() : super();
  factory OrderbookUpdatesRequest() => create();
  factory OrderbookUpdatesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderbookUpdatesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrderbookUpdatesRequest clone() => OrderbookUpdatesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrderbookUpdatesRequest copyWith(void Function(OrderbookUpdatesRequest) updates) => super.copyWith((message) => updates(message as OrderbookUpdatesRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderbookUpdatesRequest create() => OrderbookUpdatesRequest._();
  OrderbookUpdatesRequest createEmptyInstance() => create();
  static $pb.PbList<OrderbookUpdatesRequest> createRepeated() => $pb.PbList<OrderbookUpdatesRequest>();
  @$core.pragma('dart2js:noInline')
  static OrderbookUpdatesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderbookUpdatesRequest>(create);
  static OrderbookUpdatesRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetPairId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetPairId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetPairId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetPairId() => clearField(1);
}

class PublicTradesUpdatesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublicTradesUpdatesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairId', protoName: 'assetPairId')
    ..hasRequiredFields = false
  ;

  PublicTradesUpdatesRequest._() : super();
  factory PublicTradesUpdatesRequest() => create();
  factory PublicTradesUpdatesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublicTradesUpdatesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublicTradesUpdatesRequest clone() => PublicTradesUpdatesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublicTradesUpdatesRequest copyWith(void Function(PublicTradesUpdatesRequest) updates) => super.copyWith((message) => updates(message as PublicTradesUpdatesRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublicTradesUpdatesRequest create() => PublicTradesUpdatesRequest._();
  PublicTradesUpdatesRequest createEmptyInstance() => create();
  static $pb.PbList<PublicTradesUpdatesRequest> createRepeated() => $pb.PbList<PublicTradesUpdatesRequest>();
  @$core.pragma('dart2js:noInline')
  static PublicTradesUpdatesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublicTradesUpdatesRequest>(create);
  static PublicTradesUpdatesRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetPairId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetPairId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetPairId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetPairId() => clearField(1);
}

class PricesResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PricesResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pc<PriceUpdate>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prices', $pb.PbFieldType.PM, subBuilder: PriceUpdate.create)
    ..hasRequiredFields = false
  ;

  PricesResponse_Body._() : super();
  factory PricesResponse_Body() => create();
  factory PricesResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PricesResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PricesResponse_Body clone() => PricesResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PricesResponse_Body copyWith(void Function(PricesResponse_Body) updates) => super.copyWith((message) => updates(message as PricesResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PricesResponse_Body create() => PricesResponse_Body._();
  PricesResponse_Body createEmptyInstance() => create();
  static $pb.PbList<PricesResponse_Body> createRepeated() => $pb.PbList<PricesResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static PricesResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PricesResponse_Body>(create);
  static PricesResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PriceUpdate> get prices => $_getList(0);
}

enum PricesResponse_Result {
  body, 
  error, 
  notSet
}

class PricesResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PricesResponse_Result> _PricesResponse_ResultByTag = {
    1 : PricesResponse_Result.body,
    2 : PricesResponse_Result.error,
    0 : PricesResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PricesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<PricesResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: PricesResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  PricesResponse._() : super();
  factory PricesResponse() => create();
  factory PricesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PricesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PricesResponse clone() => PricesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PricesResponse copyWith(void Function(PricesResponse) updates) => super.copyWith((message) => updates(message as PricesResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PricesResponse create() => PricesResponse._();
  PricesResponse createEmptyInstance() => create();
  static $pb.PbList<PricesResponse> createRepeated() => $pb.PbList<PricesResponse>();
  @$core.pragma('dart2js:noInline')
  static PricesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PricesResponse>(create);
  static PricesResponse _defaultInstance;

  PricesResponse_Result whichResult() => _PricesResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PricesResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(PricesResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  PricesResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class AssetsDictionaryResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssetsDictionaryResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pc<AssetCategory>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'categories', $pb.PbFieldType.PM, subBuilder: AssetCategory.create)
    ..pc<Asset>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assets', $pb.PbFieldType.PM, subBuilder: Asset.create)
    ..hasRequiredFields = false
  ;

  AssetsDictionaryResponse_Body._() : super();
  factory AssetsDictionaryResponse_Body() => create();
  factory AssetsDictionaryResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetsDictionaryResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssetsDictionaryResponse_Body clone() => AssetsDictionaryResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssetsDictionaryResponse_Body copyWith(void Function(AssetsDictionaryResponse_Body) updates) => super.copyWith((message) => updates(message as AssetsDictionaryResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetsDictionaryResponse_Body create() => AssetsDictionaryResponse_Body._();
  AssetsDictionaryResponse_Body createEmptyInstance() => create();
  static $pb.PbList<AssetsDictionaryResponse_Body> createRepeated() => $pb.PbList<AssetsDictionaryResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static AssetsDictionaryResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetsDictionaryResponse_Body>(create);
  static AssetsDictionaryResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AssetCategory> get categories => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<Asset> get assets => $_getList(1);
}

enum AssetsDictionaryResponse_Result {
  body, 
  error, 
  notSet
}

class AssetsDictionaryResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, AssetsDictionaryResponse_Result> _AssetsDictionaryResponse_ResultByTag = {
    1 : AssetsDictionaryResponse_Result.body,
    2 : AssetsDictionaryResponse_Result.error,
    0 : AssetsDictionaryResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssetsDictionaryResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<AssetsDictionaryResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: AssetsDictionaryResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  AssetsDictionaryResponse._() : super();
  factory AssetsDictionaryResponse() => create();
  factory AssetsDictionaryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetsDictionaryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssetsDictionaryResponse clone() => AssetsDictionaryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssetsDictionaryResponse copyWith(void Function(AssetsDictionaryResponse) updates) => super.copyWith((message) => updates(message as AssetsDictionaryResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetsDictionaryResponse create() => AssetsDictionaryResponse._();
  AssetsDictionaryResponse createEmptyInstance() => create();
  static $pb.PbList<AssetsDictionaryResponse> createRepeated() => $pb.PbList<AssetsDictionaryResponse>();
  @$core.pragma('dart2js:noInline')
  static AssetsDictionaryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetsDictionaryResponse>(create);
  static AssetsDictionaryResponse _defaultInstance;

  AssetsDictionaryResponse_Result whichResult() => _AssetsDictionaryResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AssetsDictionaryResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(AssetsDictionaryResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  AssetsDictionaryResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class BaseAssetResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BaseAssetResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..hasRequiredFields = false
  ;

  BaseAssetResponse_Body._() : super();
  factory BaseAssetResponse_Body() => create();
  factory BaseAssetResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BaseAssetResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BaseAssetResponse_Body clone() => BaseAssetResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BaseAssetResponse_Body copyWith(void Function(BaseAssetResponse_Body) updates) => super.copyWith((message) => updates(message as BaseAssetResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BaseAssetResponse_Body create() => BaseAssetResponse_Body._();
  BaseAssetResponse_Body createEmptyInstance() => create();
  static $pb.PbList<BaseAssetResponse_Body> createRepeated() => $pb.PbList<BaseAssetResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static BaseAssetResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BaseAssetResponse_Body>(create);
  static BaseAssetResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);
}

enum BaseAssetResponse_Result {
  body, 
  error, 
  notSet
}

class BaseAssetResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, BaseAssetResponse_Result> _BaseAssetResponse_ResultByTag = {
    1 : BaseAssetResponse_Result.body,
    2 : BaseAssetResponse_Result.error,
    0 : BaseAssetResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BaseAssetResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<BaseAssetResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: BaseAssetResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  BaseAssetResponse._() : super();
  factory BaseAssetResponse() => create();
  factory BaseAssetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BaseAssetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BaseAssetResponse clone() => BaseAssetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BaseAssetResponse copyWith(void Function(BaseAssetResponse) updates) => super.copyWith((message) => updates(message as BaseAssetResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BaseAssetResponse create() => BaseAssetResponse._();
  BaseAssetResponse createEmptyInstance() => create();
  static $pb.PbList<BaseAssetResponse> createRepeated() => $pb.PbList<BaseAssetResponse>();
  @$core.pragma('dart2js:noInline')
  static BaseAssetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BaseAssetResponse>(create);
  static BaseAssetResponse _defaultInstance;

  BaseAssetResponse_Result whichResult() => _BaseAssetResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  BaseAssetResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(BaseAssetResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  BaseAssetResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class AssetPairsResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssetPairsResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pc<AssetPair>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairs', $pb.PbFieldType.PM, protoName: 'assetPairs', subBuilder: AssetPair.create)
    ..hasRequiredFields = false
  ;

  AssetPairsResponse_Body._() : super();
  factory AssetPairsResponse_Body() => create();
  factory AssetPairsResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetPairsResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssetPairsResponse_Body clone() => AssetPairsResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssetPairsResponse_Body copyWith(void Function(AssetPairsResponse_Body) updates) => super.copyWith((message) => updates(message as AssetPairsResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetPairsResponse_Body create() => AssetPairsResponse_Body._();
  AssetPairsResponse_Body createEmptyInstance() => create();
  static $pb.PbList<AssetPairsResponse_Body> createRepeated() => $pb.PbList<AssetPairsResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static AssetPairsResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetPairsResponse_Body>(create);
  static AssetPairsResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AssetPair> get assetPairs => $_getList(0);
}

enum AssetPairsResponse_Result {
  body, 
  error, 
  notSet
}

class AssetPairsResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, AssetPairsResponse_Result> _AssetPairsResponse_ResultByTag = {
    1 : AssetPairsResponse_Result.body,
    2 : AssetPairsResponse_Result.error,
    0 : AssetPairsResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssetPairsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<AssetPairsResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: AssetPairsResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  AssetPairsResponse._() : super();
  factory AssetPairsResponse() => create();
  factory AssetPairsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetPairsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssetPairsResponse clone() => AssetPairsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssetPairsResponse copyWith(void Function(AssetPairsResponse) updates) => super.copyWith((message) => updates(message as AssetPairsResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetPairsResponse create() => AssetPairsResponse._();
  AssetPairsResponse createEmptyInstance() => create();
  static $pb.PbList<AssetPairsResponse> createRepeated() => $pb.PbList<AssetPairsResponse>();
  @$core.pragma('dart2js:noInline')
  static AssetPairsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetPairsResponse>(create);
  static AssetPairsResponse _defaultInstance;

  AssetPairsResponse_Result whichResult() => _AssetPairsResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AssetPairsResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(AssetPairsResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  AssetPairsResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class CandlesResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CandlesResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pc<Candle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'candles', $pb.PbFieldType.PM, subBuilder: Candle.create)
    ..hasRequiredFields = false
  ;

  CandlesResponse_Body._() : super();
  factory CandlesResponse_Body() => create();
  factory CandlesResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CandlesResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CandlesResponse_Body clone() => CandlesResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CandlesResponse_Body copyWith(void Function(CandlesResponse_Body) updates) => super.copyWith((message) => updates(message as CandlesResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CandlesResponse_Body create() => CandlesResponse_Body._();
  CandlesResponse_Body createEmptyInstance() => create();
  static $pb.PbList<CandlesResponse_Body> createRepeated() => $pb.PbList<CandlesResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static CandlesResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CandlesResponse_Body>(create);
  static CandlesResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Candle> get candles => $_getList(0);
}

enum CandlesResponse_Result {
  body, 
  error, 
  notSet
}

class CandlesResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CandlesResponse_Result> _CandlesResponse_ResultByTag = {
    1 : CandlesResponse_Result.body,
    2 : CandlesResponse_Result.error,
    0 : CandlesResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CandlesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<CandlesResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: CandlesResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  CandlesResponse._() : super();
  factory CandlesResponse() => create();
  factory CandlesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CandlesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CandlesResponse clone() => CandlesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CandlesResponse copyWith(void Function(CandlesResponse) updates) => super.copyWith((message) => updates(message as CandlesResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CandlesResponse create() => CandlesResponse._();
  CandlesResponse createEmptyInstance() => create();
  static $pb.PbList<CandlesResponse> createRepeated() => $pb.PbList<CandlesResponse>();
  @$core.pragma('dart2js:noInline')
  static CandlesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CandlesResponse>(create);
  static CandlesResponse _defaultInstance;

  CandlesResponse_Result whichResult() => _CandlesResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CandlesResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(CandlesResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  CandlesResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class BalancesResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BalancesResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pc<Balance>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'balances', $pb.PbFieldType.PM, subBuilder: Balance.create)
    ..hasRequiredFields = false
  ;

  BalancesResponse_Body._() : super();
  factory BalancesResponse_Body() => create();
  factory BalancesResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BalancesResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BalancesResponse_Body clone() => BalancesResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BalancesResponse_Body copyWith(void Function(BalancesResponse_Body) updates) => super.copyWith((message) => updates(message as BalancesResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BalancesResponse_Body create() => BalancesResponse_Body._();
  BalancesResponse_Body createEmptyInstance() => create();
  static $pb.PbList<BalancesResponse_Body> createRepeated() => $pb.PbList<BalancesResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static BalancesResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BalancesResponse_Body>(create);
  static BalancesResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Balance> get balances => $_getList(0);
}

enum BalancesResponse_Result {
  body, 
  error, 
  notSet
}

class BalancesResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, BalancesResponse_Result> _BalancesResponse_ResultByTag = {
    1 : BalancesResponse_Result.body,
    2 : BalancesResponse_Result.error,
    0 : BalancesResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BalancesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<BalancesResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: BalancesResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  BalancesResponse._() : super();
  factory BalancesResponse() => create();
  factory BalancesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BalancesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BalancesResponse clone() => BalancesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BalancesResponse copyWith(void Function(BalancesResponse) updates) => super.copyWith((message) => updates(message as BalancesResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BalancesResponse create() => BalancesResponse._();
  BalancesResponse createEmptyInstance() => create();
  static $pb.PbList<BalancesResponse> createRepeated() => $pb.PbList<BalancesResponse>();
  @$core.pragma('dart2js:noInline')
  static BalancesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BalancesResponse>(create);
  static BalancesResponse _defaultInstance;

  BalancesResponse_Result whichResult() => _BalancesResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  BalancesResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(BalancesResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  BalancesResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class MarketsResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MarketsResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pc<MarketsResponse_MarketModel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'markets', $pb.PbFieldType.PM, subBuilder: MarketsResponse_MarketModel.create)
    ..hasRequiredFields = false
  ;

  MarketsResponse_Body._() : super();
  factory MarketsResponse_Body() => create();
  factory MarketsResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MarketsResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MarketsResponse_Body clone() => MarketsResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MarketsResponse_Body copyWith(void Function(MarketsResponse_Body) updates) => super.copyWith((message) => updates(message as MarketsResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MarketsResponse_Body create() => MarketsResponse_Body._();
  MarketsResponse_Body createEmptyInstance() => create();
  static $pb.PbList<MarketsResponse_Body> createRepeated() => $pb.PbList<MarketsResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static MarketsResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MarketsResponse_Body>(create);
  static MarketsResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MarketsResponse_MarketModel> get markets => $_getList(0);
}

class MarketsResponse_MarketModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MarketsResponse.MarketModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPair', protoName: 'assetPair')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'volume24H', protoName: 'volume24H')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'priceChange24H', protoName: 'priceChange24H')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastPrice', protoName: 'lastPrice')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bid')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ask')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'high')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'low')
    ..hasRequiredFields = false
  ;

  MarketsResponse_MarketModel._() : super();
  factory MarketsResponse_MarketModel() => create();
  factory MarketsResponse_MarketModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MarketsResponse_MarketModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MarketsResponse_MarketModel clone() => MarketsResponse_MarketModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MarketsResponse_MarketModel copyWith(void Function(MarketsResponse_MarketModel) updates) => super.copyWith((message) => updates(message as MarketsResponse_MarketModel)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MarketsResponse_MarketModel create() => MarketsResponse_MarketModel._();
  MarketsResponse_MarketModel createEmptyInstance() => create();
  static $pb.PbList<MarketsResponse_MarketModel> createRepeated() => $pb.PbList<MarketsResponse_MarketModel>();
  @$core.pragma('dart2js:noInline')
  static MarketsResponse_MarketModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MarketsResponse_MarketModel>(create);
  static MarketsResponse_MarketModel _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetPair => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetPair($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetPair() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetPair() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get volume24H => $_getSZ(1);
  @$pb.TagNumber(2)
  set volume24H($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVolume24H() => $_has(1);
  @$pb.TagNumber(2)
  void clearVolume24H() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get priceChange24H => $_getSZ(2);
  @$pb.TagNumber(3)
  set priceChange24H($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPriceChange24H() => $_has(2);
  @$pb.TagNumber(3)
  void clearPriceChange24H() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get lastPrice => $_getSZ(3);
  @$pb.TagNumber(4)
  set lastPrice($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get bid => $_getSZ(4);
  @$pb.TagNumber(5)
  set bid($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBid() => $_has(4);
  @$pb.TagNumber(5)
  void clearBid() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get ask => $_getSZ(5);
  @$pb.TagNumber(6)
  set ask($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAsk() => $_has(5);
  @$pb.TagNumber(6)
  void clearAsk() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get high => $_getSZ(6);
  @$pb.TagNumber(7)
  set high($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasHigh() => $_has(6);
  @$pb.TagNumber(7)
  void clearHigh() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get low => $_getSZ(7);
  @$pb.TagNumber(8)
  set low($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLow() => $_has(7);
  @$pb.TagNumber(8)
  void clearLow() => clearField(8);
}

enum MarketsResponse_Result {
  body, 
  error, 
  notSet
}

class MarketsResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, MarketsResponse_Result> _MarketsResponse_ResultByTag = {
    1 : MarketsResponse_Result.body,
    2 : MarketsResponse_Result.error,
    0 : MarketsResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MarketsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<MarketsResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: MarketsResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  MarketsResponse._() : super();
  factory MarketsResponse() => create();
  factory MarketsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MarketsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MarketsResponse clone() => MarketsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MarketsResponse copyWith(void Function(MarketsResponse) updates) => super.copyWith((message) => updates(message as MarketsResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MarketsResponse create() => MarketsResponse._();
  MarketsResponse createEmptyInstance() => create();
  static $pb.PbList<MarketsResponse> createRepeated() => $pb.PbList<MarketsResponse>();
  @$core.pragma('dart2js:noInline')
  static MarketsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MarketsResponse>(create);
  static MarketsResponse _defaultInstance;

  MarketsResponse_Result whichResult() => _MarketsResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  MarketsResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(MarketsResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  MarketsResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class PendingActionsResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PendingActionsResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unsignedTxs', protoName: 'unsignedTxs')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offchainRequests', protoName: 'offchainRequests')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'needReinit', protoName: 'needReinit')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dialogPending', protoName: 'dialogPending')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingOperations', protoName: 'pendingOperations')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ethereumPendingActions', protoName: 'ethereumPendingActions')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionConfirmation', protoName: 'sessionConfirmation')
    ..hasRequiredFields = false
  ;

  PendingActionsResponse_Body._() : super();
  factory PendingActionsResponse_Body() => create();
  factory PendingActionsResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PendingActionsResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PendingActionsResponse_Body clone() => PendingActionsResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PendingActionsResponse_Body copyWith(void Function(PendingActionsResponse_Body) updates) => super.copyWith((message) => updates(message as PendingActionsResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingActionsResponse_Body create() => PendingActionsResponse_Body._();
  PendingActionsResponse_Body createEmptyInstance() => create();
  static $pb.PbList<PendingActionsResponse_Body> createRepeated() => $pb.PbList<PendingActionsResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static PendingActionsResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PendingActionsResponse_Body>(create);
  static PendingActionsResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get unsignedTxs => $_getBF(0);
  @$pb.TagNumber(1)
  set unsignedTxs($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnsignedTxs() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnsignedTxs() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get offchainRequests => $_getBF(1);
  @$pb.TagNumber(2)
  set offchainRequests($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOffchainRequests() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffchainRequests() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get needReinit => $_getBF(2);
  @$pb.TagNumber(3)
  set needReinit($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNeedReinit() => $_has(2);
  @$pb.TagNumber(3)
  void clearNeedReinit() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get dialogPending => $_getBF(3);
  @$pb.TagNumber(4)
  set dialogPending($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDialogPending() => $_has(3);
  @$pb.TagNumber(4)
  void clearDialogPending() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get pendingOperations => $_getBF(4);
  @$pb.TagNumber(5)
  set pendingOperations($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPendingOperations() => $_has(4);
  @$pb.TagNumber(5)
  void clearPendingOperations() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get ethereumPendingActions => $_getBF(5);
  @$pb.TagNumber(6)
  set ethereumPendingActions($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEthereumPendingActions() => $_has(5);
  @$pb.TagNumber(6)
  void clearEthereumPendingActions() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get sessionConfirmation => $_getBF(6);
  @$pb.TagNumber(7)
  set sessionConfirmation($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSessionConfirmation() => $_has(6);
  @$pb.TagNumber(7)
  void clearSessionConfirmation() => clearField(7);
}

enum PendingActionsResponse_Result {
  body, 
  error, 
  notSet
}

class PendingActionsResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PendingActionsResponse_Result> _PendingActionsResponse_ResultByTag = {
    1 : PendingActionsResponse_Result.body,
    2 : PendingActionsResponse_Result.error,
    0 : PendingActionsResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PendingActionsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<PendingActionsResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: PendingActionsResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  PendingActionsResponse._() : super();
  factory PendingActionsResponse() => create();
  factory PendingActionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PendingActionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PendingActionsResponse clone() => PendingActionsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PendingActionsResponse copyWith(void Function(PendingActionsResponse) updates) => super.copyWith((message) => updates(message as PendingActionsResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingActionsResponse create() => PendingActionsResponse._();
  PendingActionsResponse createEmptyInstance() => create();
  static $pb.PbList<PendingActionsResponse> createRepeated() => $pb.PbList<PendingActionsResponse>();
  @$core.pragma('dart2js:noInline')
  static PendingActionsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PendingActionsResponse>(create);
  static PendingActionsResponse _defaultInstance;

  PendingActionsResponse_Result whichResult() => _PendingActionsResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PendingActionsResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(PendingActionsResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  PendingActionsResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class AmountInBaseAssetResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AmountInBaseAssetResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pc<AmountInBaseAssetResponse_AmountInBasePayload>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'values', $pb.PbFieldType.PM, subBuilder: AmountInBaseAssetResponse_AmountInBasePayload.create)
    ..hasRequiredFields = false
  ;

  AmountInBaseAssetResponse_Body._() : super();
  factory AmountInBaseAssetResponse_Body() => create();
  factory AmountInBaseAssetResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AmountInBaseAssetResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AmountInBaseAssetResponse_Body clone() => AmountInBaseAssetResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AmountInBaseAssetResponse_Body copyWith(void Function(AmountInBaseAssetResponse_Body) updates) => super.copyWith((message) => updates(message as AmountInBaseAssetResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AmountInBaseAssetResponse_Body create() => AmountInBaseAssetResponse_Body._();
  AmountInBaseAssetResponse_Body createEmptyInstance() => create();
  static $pb.PbList<AmountInBaseAssetResponse_Body> createRepeated() => $pb.PbList<AmountInBaseAssetResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static AmountInBaseAssetResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AmountInBaseAssetResponse_Body>(create);
  static AmountInBaseAssetResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AmountInBaseAssetResponse_AmountInBasePayload> get values => $_getList(0);
}

class AmountInBaseAssetResponse_AmountInBasePayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AmountInBaseAssetResponse.AmountInBasePayload', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountInBase', protoName: 'amountInBase')
    ..hasRequiredFields = false
  ;

  AmountInBaseAssetResponse_AmountInBasePayload._() : super();
  factory AmountInBaseAssetResponse_AmountInBasePayload() => create();
  factory AmountInBaseAssetResponse_AmountInBasePayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AmountInBaseAssetResponse_AmountInBasePayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AmountInBaseAssetResponse_AmountInBasePayload clone() => AmountInBaseAssetResponse_AmountInBasePayload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AmountInBaseAssetResponse_AmountInBasePayload copyWith(void Function(AmountInBaseAssetResponse_AmountInBasePayload) updates) => super.copyWith((message) => updates(message as AmountInBaseAssetResponse_AmountInBasePayload)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AmountInBaseAssetResponse_AmountInBasePayload create() => AmountInBaseAssetResponse_AmountInBasePayload._();
  AmountInBaseAssetResponse_AmountInBasePayload createEmptyInstance() => create();
  static $pb.PbList<AmountInBaseAssetResponse_AmountInBasePayload> createRepeated() => $pb.PbList<AmountInBaseAssetResponse_AmountInBasePayload>();
  @$core.pragma('dart2js:noInline')
  static AmountInBaseAssetResponse_AmountInBasePayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AmountInBaseAssetResponse_AmountInBasePayload>(create);
  static AmountInBaseAssetResponse_AmountInBasePayload _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get amountInBase => $_getSZ(1);
  @$pb.TagNumber(2)
  set amountInBase($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmountInBase() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmountInBase() => clearField(2);
}

enum AmountInBaseAssetResponse_Result {
  body, 
  error, 
  notSet
}

class AmountInBaseAssetResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, AmountInBaseAssetResponse_Result> _AmountInBaseAssetResponse_ResultByTag = {
    1 : AmountInBaseAssetResponse_Result.body,
    2 : AmountInBaseAssetResponse_Result.error,
    0 : AmountInBaseAssetResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AmountInBaseAssetResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<AmountInBaseAssetResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: AmountInBaseAssetResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  AmountInBaseAssetResponse._() : super();
  factory AmountInBaseAssetResponse() => create();
  factory AmountInBaseAssetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AmountInBaseAssetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AmountInBaseAssetResponse clone() => AmountInBaseAssetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AmountInBaseAssetResponse copyWith(void Function(AmountInBaseAssetResponse) updates) => super.copyWith((message) => updates(message as AmountInBaseAssetResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AmountInBaseAssetResponse create() => AmountInBaseAssetResponse._();
  AmountInBaseAssetResponse createEmptyInstance() => create();
  static $pb.PbList<AmountInBaseAssetResponse> createRepeated() => $pb.PbList<AmountInBaseAssetResponse>();
  @$core.pragma('dart2js:noInline')
  static AmountInBaseAssetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AmountInBaseAssetResponse>(create);
  static AmountInBaseAssetResponse _defaultInstance;

  AmountInBaseAssetResponse_Result whichResult() => _AmountInBaseAssetResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AmountInBaseAssetResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(AmountInBaseAssetResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  AmountInBaseAssetResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class PushSettingsResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PushSettingsResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  PushSettingsResponse_Body._() : super();
  factory PushSettingsResponse_Body() => create();
  factory PushSettingsResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PushSettingsResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PushSettingsResponse_Body clone() => PushSettingsResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PushSettingsResponse_Body copyWith(void Function(PushSettingsResponse_Body) updates) => super.copyWith((message) => updates(message as PushSettingsResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PushSettingsResponse_Body create() => PushSettingsResponse_Body._();
  PushSettingsResponse_Body createEmptyInstance() => create();
  static $pb.PbList<PushSettingsResponse_Body> createRepeated() => $pb.PbList<PushSettingsResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static PushSettingsResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PushSettingsResponse_Body>(create);
  static PushSettingsResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);
}

enum PushSettingsResponse_Result {
  body, 
  error, 
  notSet
}

class PushSettingsResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PushSettingsResponse_Result> _PushSettingsResponse_ResultByTag = {
    1 : PushSettingsResponse_Result.body,
    2 : PushSettingsResponse_Result.error,
    0 : PushSettingsResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PushSettingsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<PushSettingsResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: PushSettingsResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  PushSettingsResponse._() : super();
  factory PushSettingsResponse() => create();
  factory PushSettingsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PushSettingsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PushSettingsResponse clone() => PushSettingsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PushSettingsResponse copyWith(void Function(PushSettingsResponse) updates) => super.copyWith((message) => updates(message as PushSettingsResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PushSettingsResponse create() => PushSettingsResponse._();
  PushSettingsResponse createEmptyInstance() => create();
  static $pb.PbList<PushSettingsResponse> createRepeated() => $pb.PbList<PushSettingsResponse>();
  @$core.pragma('dart2js:noInline')
  static PushSettingsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PushSettingsResponse>(create);
  static PushSettingsResponse _defaultInstance;

  PushSettingsResponse_Result whichResult() => _PushSettingsResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PushSettingsResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(PushSettingsResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  PushSettingsResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class RegisterPushResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterPushResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'installationId', protoName: 'installationId')
    ..hasRequiredFields = false
  ;

  RegisterPushResponse_Body._() : super();
  factory RegisterPushResponse_Body() => create();
  factory RegisterPushResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterPushResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterPushResponse_Body clone() => RegisterPushResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterPushResponse_Body copyWith(void Function(RegisterPushResponse_Body) updates) => super.copyWith((message) => updates(message as RegisterPushResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterPushResponse_Body create() => RegisterPushResponse_Body._();
  RegisterPushResponse_Body createEmptyInstance() => create();
  static $pb.PbList<RegisterPushResponse_Body> createRepeated() => $pb.PbList<RegisterPushResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static RegisterPushResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterPushResponse_Body>(create);
  static RegisterPushResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get installationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set installationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInstallationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInstallationId() => clearField(1);
}

enum RegisterPushResponse_Result {
  body, 
  error, 
  notSet
}

class RegisterPushResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, RegisterPushResponse_Result> _RegisterPushResponse_ResultByTag = {
    1 : RegisterPushResponse_Result.body,
    2 : RegisterPushResponse_Result.error,
    0 : RegisterPushResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterPushResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<RegisterPushResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: RegisterPushResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  RegisterPushResponse._() : super();
  factory RegisterPushResponse() => create();
  factory RegisterPushResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterPushResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterPushResponse clone() => RegisterPushResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterPushResponse copyWith(void Function(RegisterPushResponse) updates) => super.copyWith((message) => updates(message as RegisterPushResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterPushResponse create() => RegisterPushResponse._();
  RegisterPushResponse createEmptyInstance() => create();
  static $pb.PbList<RegisterPushResponse> createRepeated() => $pb.PbList<RegisterPushResponse>();
  @$core.pragma('dart2js:noInline')
  static RegisterPushResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterPushResponse>(create);
  static RegisterPushResponse _defaultInstance;

  RegisterPushResponse_Result whichResult() => _RegisterPushResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  RegisterPushResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(RegisterPushResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  RegisterPushResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class VerificationEmailResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerificationEmailResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..hasRequiredFields = false
  ;

  VerificationEmailResponse_Body._() : super();
  factory VerificationEmailResponse_Body() => create();
  factory VerificationEmailResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerificationEmailResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerificationEmailResponse_Body clone() => VerificationEmailResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerificationEmailResponse_Body copyWith(void Function(VerificationEmailResponse_Body) updates) => super.copyWith((message) => updates(message as VerificationEmailResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerificationEmailResponse_Body create() => VerificationEmailResponse_Body._();
  VerificationEmailResponse_Body createEmptyInstance() => create();
  static $pb.PbList<VerificationEmailResponse_Body> createRepeated() => $pb.PbList<VerificationEmailResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static VerificationEmailResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerificationEmailResponse_Body>(create);
  static VerificationEmailResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

enum VerificationEmailResponse_Result {
  body, 
  error, 
  notSet
}

class VerificationEmailResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, VerificationEmailResponse_Result> _VerificationEmailResponse_ResultByTag = {
    1 : VerificationEmailResponse_Result.body,
    2 : VerificationEmailResponse_Result.error,
    0 : VerificationEmailResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerificationEmailResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<VerificationEmailResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: VerificationEmailResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  VerificationEmailResponse._() : super();
  factory VerificationEmailResponse() => create();
  factory VerificationEmailResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerificationEmailResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerificationEmailResponse clone() => VerificationEmailResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerificationEmailResponse copyWith(void Function(VerificationEmailResponse) updates) => super.copyWith((message) => updates(message as VerificationEmailResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerificationEmailResponse create() => VerificationEmailResponse._();
  VerificationEmailResponse createEmptyInstance() => create();
  static $pb.PbList<VerificationEmailResponse> createRepeated() => $pb.PbList<VerificationEmailResponse>();
  @$core.pragma('dart2js:noInline')
  static VerificationEmailResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerificationEmailResponse>(create);
  static VerificationEmailResponse _defaultInstance;

  VerificationEmailResponse_Result whichResult() => _VerificationEmailResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  VerificationEmailResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(VerificationEmailResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  VerificationEmailResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class VerifyResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passed')
    ..hasRequiredFields = false
  ;

  VerifyResponse_Body._() : super();
  factory VerifyResponse_Body() => create();
  factory VerifyResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyResponse_Body clone() => VerifyResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyResponse_Body copyWith(void Function(VerifyResponse_Body) updates) => super.copyWith((message) => updates(message as VerifyResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyResponse_Body create() => VerifyResponse_Body._();
  VerifyResponse_Body createEmptyInstance() => create();
  static $pb.PbList<VerifyResponse_Body> createRepeated() => $pb.PbList<VerifyResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static VerifyResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyResponse_Body>(create);
  static VerifyResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get passed => $_getBF(0);
  @$pb.TagNumber(1)
  set passed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPassed() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassed() => clearField(1);
}

enum VerifyResponse_Result {
  body, 
  error, 
  notSet
}

class VerifyResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, VerifyResponse_Result> _VerifyResponse_ResultByTag = {
    1 : VerifyResponse_Result.body,
    2 : VerifyResponse_Result.error,
    0 : VerifyResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<VerifyResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: VerifyResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  VerifyResponse._() : super();
  factory VerifyResponse() => create();
  factory VerifyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyResponse clone() => VerifyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyResponse copyWith(void Function(VerifyResponse) updates) => super.copyWith((message) => updates(message as VerifyResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyResponse create() => VerifyResponse._();
  VerifyResponse createEmptyInstance() => create();
  static $pb.PbList<VerifyResponse> createRepeated() => $pb.PbList<VerifyResponse>();
  @$core.pragma('dart2js:noInline')
  static VerifyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyResponse>(create);
  static VerifyResponse _defaultInstance;

  VerifyResponse_Result whichResult() => _VerifyResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  VerifyResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(VerifyResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  VerifyResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class RegisterResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', protoName: 'sessionId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notificationsId', protoName: 'notificationsId')
    ..aOM<PersonalData>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'personalData', protoName: 'personalData', subBuilder: PersonalData.create)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'canCashInViaBankCard', protoName: 'canCashInViaBankCard')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'swiftDepositEnabled', protoName: 'swiftDepositEnabled')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state')
    ..hasRequiredFields = false
  ;

  RegisterResponse_Body._() : super();
  factory RegisterResponse_Body() => create();
  factory RegisterResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterResponse_Body clone() => RegisterResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterResponse_Body copyWith(void Function(RegisterResponse_Body) updates) => super.copyWith((message) => updates(message as RegisterResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterResponse_Body create() => RegisterResponse_Body._();
  RegisterResponse_Body createEmptyInstance() => create();
  static $pb.PbList<RegisterResponse_Body> createRepeated() => $pb.PbList<RegisterResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static RegisterResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterResponse_Body>(create);
  static RegisterResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get notificationsId => $_getSZ(1);
  @$pb.TagNumber(2)
  set notificationsId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNotificationsId() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotificationsId() => clearField(2);

  @$pb.TagNumber(3)
  PersonalData get personalData => $_getN(2);
  @$pb.TagNumber(3)
  set personalData(PersonalData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPersonalData() => $_has(2);
  @$pb.TagNumber(3)
  void clearPersonalData() => clearField(3);
  @$pb.TagNumber(3)
  PersonalData ensurePersonalData() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get canCashInViaBankCard => $_getBF(3);
  @$pb.TagNumber(4)
  set canCashInViaBankCard($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCanCashInViaBankCard() => $_has(3);
  @$pb.TagNumber(4)
  void clearCanCashInViaBankCard() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get swiftDepositEnabled => $_getBF(4);
  @$pb.TagNumber(5)
  set swiftDepositEnabled($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSwiftDepositEnabled() => $_has(4);
  @$pb.TagNumber(5)
  void clearSwiftDepositEnabled() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get state => $_getSZ(5);
  @$pb.TagNumber(6)
  set state($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasState() => $_has(5);
  @$pb.TagNumber(6)
  void clearState() => clearField(6);
}

enum RegisterResponse_Result {
  body, 
  error, 
  notSet
}

class RegisterResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, RegisterResponse_Result> _RegisterResponse_ResultByTag = {
    1 : RegisterResponse_Result.body,
    2 : RegisterResponse_Result.error,
    0 : RegisterResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<RegisterResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: RegisterResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  RegisterResponse._() : super();
  factory RegisterResponse() => create();
  factory RegisterResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterResponse clone() => RegisterResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterResponse copyWith(void Function(RegisterResponse) updates) => super.copyWith((message) => updates(message as RegisterResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterResponse create() => RegisterResponse._();
  RegisterResponse createEmptyInstance() => create();
  static $pb.PbList<RegisterResponse> createRepeated() => $pb.PbList<RegisterResponse>();
  @$core.pragma('dart2js:noInline')
  static RegisterResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterResponse>(create);
  static RegisterResponse _defaultInstance;

  RegisterResponse_Result whichResult() => _RegisterResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  RegisterResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(RegisterResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  RegisterResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class LoginResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', protoName: 'sessionId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notificationId', protoName: 'notificationId')
    ..hasRequiredFields = false
  ;

  LoginResponse_Body._() : super();
  factory LoginResponse_Body() => create();
  factory LoginResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginResponse_Body clone() => LoginResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginResponse_Body copyWith(void Function(LoginResponse_Body) updates) => super.copyWith((message) => updates(message as LoginResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginResponse_Body create() => LoginResponse_Body._();
  LoginResponse_Body createEmptyInstance() => create();
  static $pb.PbList<LoginResponse_Body> createRepeated() => $pb.PbList<LoginResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static LoginResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginResponse_Body>(create);
  static LoginResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get notificationId => $_getSZ(1);
  @$pb.TagNumber(2)
  set notificationId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNotificationId() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotificationId() => clearField(2);
}

enum LoginResponse_Result {
  body, 
  error, 
  notSet
}

class LoginResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, LoginResponse_Result> _LoginResponse_ResultByTag = {
    1 : LoginResponse_Result.body,
    2 : LoginResponse_Result.error,
    0 : LoginResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<LoginResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: LoginResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  LoginResponse._() : super();
  factory LoginResponse() => create();
  factory LoginResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginResponse clone() => LoginResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginResponse copyWith(void Function(LoginResponse) updates) => super.copyWith((message) => updates(message as LoginResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginResponse create() => LoginResponse._();
  LoginResponse createEmptyInstance() => create();
  static $pb.PbList<LoginResponse> createRepeated() => $pb.PbList<LoginResponse>();
  @$core.pragma('dart2js:noInline')
  static LoginResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginResponse>(create);
  static LoginResponse _defaultInstance;

  LoginResponse_Result whichResult() => _LoginResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  LoginResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(LoginResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  LoginResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class VerifyLoginSmsResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyLoginSmsResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passed')
    ..hasRequiredFields = false
  ;

  VerifyLoginSmsResponse_Body._() : super();
  factory VerifyLoginSmsResponse_Body() => create();
  factory VerifyLoginSmsResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyLoginSmsResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyLoginSmsResponse_Body clone() => VerifyLoginSmsResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyLoginSmsResponse_Body copyWith(void Function(VerifyLoginSmsResponse_Body) updates) => super.copyWith((message) => updates(message as VerifyLoginSmsResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyLoginSmsResponse_Body create() => VerifyLoginSmsResponse_Body._();
  VerifyLoginSmsResponse_Body createEmptyInstance() => create();
  static $pb.PbList<VerifyLoginSmsResponse_Body> createRepeated() => $pb.PbList<VerifyLoginSmsResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static VerifyLoginSmsResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyLoginSmsResponse_Body>(create);
  static VerifyLoginSmsResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get passed => $_getBF(0);
  @$pb.TagNumber(1)
  set passed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPassed() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassed() => clearField(1);
}

enum VerifyLoginSmsResponse_Result {
  body, 
  error, 
  notSet
}

class VerifyLoginSmsResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, VerifyLoginSmsResponse_Result> _VerifyLoginSmsResponse_ResultByTag = {
    1 : VerifyLoginSmsResponse_Result.body,
    2 : VerifyLoginSmsResponse_Result.error,
    0 : VerifyLoginSmsResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyLoginSmsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<VerifyLoginSmsResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: VerifyLoginSmsResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  VerifyLoginSmsResponse._() : super();
  factory VerifyLoginSmsResponse() => create();
  factory VerifyLoginSmsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyLoginSmsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyLoginSmsResponse clone() => VerifyLoginSmsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyLoginSmsResponse copyWith(void Function(VerifyLoginSmsResponse) updates) => super.copyWith((message) => updates(message as VerifyLoginSmsResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyLoginSmsResponse create() => VerifyLoginSmsResponse._();
  VerifyLoginSmsResponse createEmptyInstance() => create();
  static $pb.PbList<VerifyLoginSmsResponse> createRepeated() => $pb.PbList<VerifyLoginSmsResponse>();
  @$core.pragma('dart2js:noInline')
  static VerifyLoginSmsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyLoginSmsResponse>(create);
  static VerifyLoginSmsResponse _defaultInstance;

  VerifyLoginSmsResponse_Result whichResult() => _VerifyLoginSmsResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  VerifyLoginSmsResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(VerifyLoginSmsResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  VerifyLoginSmsResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class CheckPinResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CheckPinResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passed')
    ..hasRequiredFields = false
  ;

  CheckPinResponse_Body._() : super();
  factory CheckPinResponse_Body() => create();
  factory CheckPinResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckPinResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckPinResponse_Body clone() => CheckPinResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckPinResponse_Body copyWith(void Function(CheckPinResponse_Body) updates) => super.copyWith((message) => updates(message as CheckPinResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckPinResponse_Body create() => CheckPinResponse_Body._();
  CheckPinResponse_Body createEmptyInstance() => create();
  static $pb.PbList<CheckPinResponse_Body> createRepeated() => $pb.PbList<CheckPinResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static CheckPinResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckPinResponse_Body>(create);
  static CheckPinResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get passed => $_getBF(0);
  @$pb.TagNumber(1)
  set passed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPassed() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassed() => clearField(1);
}

enum CheckPinResponse_Result {
  body, 
  error, 
  notSet
}

class CheckPinResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CheckPinResponse_Result> _CheckPinResponse_ResultByTag = {
    1 : CheckPinResponse_Result.body,
    2 : CheckPinResponse_Result.error,
    0 : CheckPinResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CheckPinResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<CheckPinResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: CheckPinResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  CheckPinResponse._() : super();
  factory CheckPinResponse() => create();
  factory CheckPinResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckPinResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckPinResponse clone() => CheckPinResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckPinResponse copyWith(void Function(CheckPinResponse) updates) => super.copyWith((message) => updates(message as CheckPinResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckPinResponse create() => CheckPinResponse._();
  CheckPinResponse createEmptyInstance() => create();
  static $pb.PbList<CheckPinResponse> createRepeated() => $pb.PbList<CheckPinResponse>();
  @$core.pragma('dart2js:noInline')
  static CheckPinResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckPinResponse>(create);
  static CheckPinResponse _defaultInstance;

  CheckPinResponse_Result whichResult() => _CheckPinResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CheckPinResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(CheckPinResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  CheckPinResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class CheckSessionResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CheckSessionResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expired')
    ..hasRequiredFields = false
  ;

  CheckSessionResponse_Body._() : super();
  factory CheckSessionResponse_Body() => create();
  factory CheckSessionResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckSessionResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckSessionResponse_Body clone() => CheckSessionResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckSessionResponse_Body copyWith(void Function(CheckSessionResponse_Body) updates) => super.copyWith((message) => updates(message as CheckSessionResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckSessionResponse_Body create() => CheckSessionResponse_Body._();
  CheckSessionResponse_Body createEmptyInstance() => create();
  static $pb.PbList<CheckSessionResponse_Body> createRepeated() => $pb.PbList<CheckSessionResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static CheckSessionResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckSessionResponse_Body>(create);
  static CheckSessionResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get expired => $_getBF(0);
  @$pb.TagNumber(1)
  set expired($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasExpired() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpired() => clearField(1);
}

enum CheckSessionResponse_Result {
  body, 
  error, 
  notSet
}

class CheckSessionResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CheckSessionResponse_Result> _CheckSessionResponse_ResultByTag = {
    1 : CheckSessionResponse_Result.body,
    2 : CheckSessionResponse_Result.error,
    0 : CheckSessionResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CheckSessionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<CheckSessionResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: CheckSessionResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  CheckSessionResponse._() : super();
  factory CheckSessionResponse() => create();
  factory CheckSessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckSessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckSessionResponse clone() => CheckSessionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckSessionResponse copyWith(void Function(CheckSessionResponse) updates) => super.copyWith((message) => updates(message as CheckSessionResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckSessionResponse create() => CheckSessionResponse._();
  CheckSessionResponse createEmptyInstance() => create();
  static $pb.PbList<CheckSessionResponse> createRepeated() => $pb.PbList<CheckSessionResponse>();
  @$core.pragma('dart2js:noInline')
  static CheckSessionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckSessionResponse>(create);
  static CheckSessionResponse _defaultInstance;

  CheckSessionResponse_Result whichResult() => _CheckSessionResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CheckSessionResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(CheckSessionResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  CheckSessionResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class LimitOrdersResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LimitOrdersResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pc<LimitOrderModel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orders', $pb.PbFieldType.PM, subBuilder: LimitOrderModel.create)
    ..hasRequiredFields = false
  ;

  LimitOrdersResponse_Body._() : super();
  factory LimitOrdersResponse_Body() => create();
  factory LimitOrdersResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LimitOrdersResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LimitOrdersResponse_Body clone() => LimitOrdersResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LimitOrdersResponse_Body copyWith(void Function(LimitOrdersResponse_Body) updates) => super.copyWith((message) => updates(message as LimitOrdersResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LimitOrdersResponse_Body create() => LimitOrdersResponse_Body._();
  LimitOrdersResponse_Body createEmptyInstance() => create();
  static $pb.PbList<LimitOrdersResponse_Body> createRepeated() => $pb.PbList<LimitOrdersResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static LimitOrdersResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LimitOrdersResponse_Body>(create);
  static LimitOrdersResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<LimitOrderModel> get orders => $_getList(0);
}

enum LimitOrdersResponse_Result {
  body, 
  error, 
  notSet
}

class LimitOrdersResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, LimitOrdersResponse_Result> _LimitOrdersResponse_ResultByTag = {
    1 : LimitOrdersResponse_Result.body,
    2 : LimitOrdersResponse_Result.error,
    0 : LimitOrdersResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LimitOrdersResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<LimitOrdersResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: LimitOrdersResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  LimitOrdersResponse._() : super();
  factory LimitOrdersResponse() => create();
  factory LimitOrdersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LimitOrdersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LimitOrdersResponse clone() => LimitOrdersResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LimitOrdersResponse copyWith(void Function(LimitOrdersResponse) updates) => super.copyWith((message) => updates(message as LimitOrdersResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LimitOrdersResponse create() => LimitOrdersResponse._();
  LimitOrdersResponse createEmptyInstance() => create();
  static $pb.PbList<LimitOrdersResponse> createRepeated() => $pb.PbList<LimitOrdersResponse>();
  @$core.pragma('dart2js:noInline')
  static LimitOrdersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LimitOrdersResponse>(create);
  static LimitOrdersResponse _defaultInstance;

  LimitOrdersResponse_Result whichResult() => _LimitOrdersResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  LimitOrdersResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(LimitOrdersResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  LimitOrdersResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

enum PlaceOrderResponse_Result {
  body, 
  error, 
  notSet
}

class PlaceOrderResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PlaceOrderResponse_Result> _PlaceOrderResponse_ResultByTag = {
    1 : PlaceOrderResponse_Result.body,
    2 : PlaceOrderResponse_Result.error,
    0 : PlaceOrderResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PlaceOrderResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<OrderModel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: OrderModel.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  PlaceOrderResponse._() : super();
  factory PlaceOrderResponse() => create();
  factory PlaceOrderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlaceOrderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlaceOrderResponse clone() => PlaceOrderResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlaceOrderResponse copyWith(void Function(PlaceOrderResponse) updates) => super.copyWith((message) => updates(message as PlaceOrderResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PlaceOrderResponse create() => PlaceOrderResponse._();
  PlaceOrderResponse createEmptyInstance() => create();
  static $pb.PbList<PlaceOrderResponse> createRepeated() => $pb.PbList<PlaceOrderResponse>();
  @$core.pragma('dart2js:noInline')
  static PlaceOrderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlaceOrderResponse>(create);
  static PlaceOrderResponse _defaultInstance;

  PlaceOrderResponse_Result whichResult() => _PlaceOrderResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  OrderModel get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(OrderModel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  OrderModel ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class OrderModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrderModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOM<$3.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dateTime', protoName: 'dateTime', subBuilder: $3.Timestamp.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderType', protoName: 'orderType')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'volume')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'asset')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPair', protoName: 'assetPair')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalCost', protoName: 'totalCost')
    ..hasRequiredFields = false
  ;

  OrderModel._() : super();
  factory OrderModel() => create();
  factory OrderModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrderModel clone() => OrderModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrderModel copyWith(void Function(OrderModel) updates) => super.copyWith((message) => updates(message as OrderModel)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderModel create() => OrderModel._();
  OrderModel createEmptyInstance() => create();
  static $pb.PbList<OrderModel> createRepeated() => $pb.PbList<OrderModel>();
  @$core.pragma('dart2js:noInline')
  static OrderModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderModel>(create);
  static OrderModel _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $3.Timestamp get dateTime => $_getN(1);
  @$pb.TagNumber(2)
  set dateTime($3.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDateTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearDateTime() => clearField(2);
  @$pb.TagNumber(2)
  $3.Timestamp ensureDateTime() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get orderType => $_getSZ(2);
  @$pb.TagNumber(3)
  set orderType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrderType() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrderType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get volume => $_getSZ(3);
  @$pb.TagNumber(4)
  set volume($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVolume() => $_has(3);
  @$pb.TagNumber(4)
  void clearVolume() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get price => $_getSZ(4);
  @$pb.TagNumber(5)
  set price($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get asset => $_getSZ(5);
  @$pb.TagNumber(6)
  set asset($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAsset() => $_has(5);
  @$pb.TagNumber(6)
  void clearAsset() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get assetPair => $_getSZ(6);
  @$pb.TagNumber(7)
  set assetPair($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAssetPair() => $_has(6);
  @$pb.TagNumber(7)
  void clearAssetPair() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get totalCost => $_getSZ(7);
  @$pb.TagNumber(8)
  set totalCost($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTotalCost() => $_has(7);
  @$pb.TagNumber(8)
  void clearTotalCost() => clearField(8);
}

class LimitOrderModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LimitOrderModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOM<$3.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dateTime', protoName: 'dateTime', subBuilder: $3.Timestamp.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderType', protoName: 'orderType')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'volume')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'asset')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPair', protoName: 'assetPair')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalCost', protoName: 'totalCost')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remainingVolume', protoName: 'remainingVolume')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remainingOtherVolume', protoName: 'remainingOtherVolume')
    ..hasRequiredFields = false
  ;

  LimitOrderModel._() : super();
  factory LimitOrderModel() => create();
  factory LimitOrderModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LimitOrderModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LimitOrderModel clone() => LimitOrderModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LimitOrderModel copyWith(void Function(LimitOrderModel) updates) => super.copyWith((message) => updates(message as LimitOrderModel)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LimitOrderModel create() => LimitOrderModel._();
  LimitOrderModel createEmptyInstance() => create();
  static $pb.PbList<LimitOrderModel> createRepeated() => $pb.PbList<LimitOrderModel>();
  @$core.pragma('dart2js:noInline')
  static LimitOrderModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LimitOrderModel>(create);
  static LimitOrderModel _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $3.Timestamp get dateTime => $_getN(1);
  @$pb.TagNumber(2)
  set dateTime($3.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDateTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearDateTime() => clearField(2);
  @$pb.TagNumber(2)
  $3.Timestamp ensureDateTime() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get orderType => $_getSZ(2);
  @$pb.TagNumber(3)
  set orderType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrderType() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrderType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get volume => $_getSZ(3);
  @$pb.TagNumber(4)
  set volume($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVolume() => $_has(3);
  @$pb.TagNumber(4)
  void clearVolume() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get price => $_getSZ(4);
  @$pb.TagNumber(5)
  set price($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get asset => $_getSZ(5);
  @$pb.TagNumber(6)
  set asset($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAsset() => $_has(5);
  @$pb.TagNumber(6)
  void clearAsset() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get assetPair => $_getSZ(6);
  @$pb.TagNumber(7)
  set assetPair($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAssetPair() => $_has(6);
  @$pb.TagNumber(7)
  void clearAssetPair() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get totalCost => $_getSZ(7);
  @$pb.TagNumber(8)
  set totalCost($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTotalCost() => $_has(7);
  @$pb.TagNumber(8)
  void clearTotalCost() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get remainingVolume => $_getSZ(8);
  @$pb.TagNumber(9)
  set remainingVolume($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRemainingVolume() => $_has(8);
  @$pb.TagNumber(9)
  void clearRemainingVolume() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get remainingOtherVolume => $_getSZ(9);
  @$pb.TagNumber(10)
  set remainingOtherVolume($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasRemainingOtherVolume() => $_has(9);
  @$pb.TagNumber(10)
  void clearRemainingOtherVolume() => clearField(10);
}

class CancelOrderResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CancelOrderResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payload')
    ..hasRequiredFields = false
  ;

  CancelOrderResponse_Body._() : super();
  factory CancelOrderResponse_Body() => create();
  factory CancelOrderResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelOrderResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelOrderResponse_Body clone() => CancelOrderResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelOrderResponse_Body copyWith(void Function(CancelOrderResponse_Body) updates) => super.copyWith((message) => updates(message as CancelOrderResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CancelOrderResponse_Body create() => CancelOrderResponse_Body._();
  CancelOrderResponse_Body createEmptyInstance() => create();
  static $pb.PbList<CancelOrderResponse_Body> createRepeated() => $pb.PbList<CancelOrderResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static CancelOrderResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelOrderResponse_Body>(create);
  static CancelOrderResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get payload => $_getBF(0);
  @$pb.TagNumber(1)
  set payload($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
}

enum CancelOrderResponse_Result {
  body, 
  error, 
  notSet
}

class CancelOrderResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CancelOrderResponse_Result> _CancelOrderResponse_ResultByTag = {
    1 : CancelOrderResponse_Result.body,
    2 : CancelOrderResponse_Result.error,
    0 : CancelOrderResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CancelOrderResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<CancelOrderResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: CancelOrderResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  CancelOrderResponse._() : super();
  factory CancelOrderResponse() => create();
  factory CancelOrderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelOrderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelOrderResponse clone() => CancelOrderResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelOrderResponse copyWith(void Function(CancelOrderResponse) updates) => super.copyWith((message) => updates(message as CancelOrderResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CancelOrderResponse create() => CancelOrderResponse._();
  CancelOrderResponse createEmptyInstance() => create();
  static $pb.PbList<CancelOrderResponse> createRepeated() => $pb.PbList<CancelOrderResponse>();
  @$core.pragma('dart2js:noInline')
  static CancelOrderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelOrderResponse>(create);
  static CancelOrderResponse _defaultInstance;

  CancelOrderResponse_Result whichResult() => _CancelOrderResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CancelOrderResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(CancelOrderResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  CancelOrderResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class TradesResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TradesResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pc<TradesResponse_TradeModel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trades', $pb.PbFieldType.PM, subBuilder: TradesResponse_TradeModel.create)
    ..hasRequiredFields = false
  ;

  TradesResponse_Body._() : super();
  factory TradesResponse_Body() => create();
  factory TradesResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TradesResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TradesResponse_Body clone() => TradesResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TradesResponse_Body copyWith(void Function(TradesResponse_Body) updates) => super.copyWith((message) => updates(message as TradesResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TradesResponse_Body create() => TradesResponse_Body._();
  TradesResponse_Body createEmptyInstance() => create();
  static $pb.PbList<TradesResponse_Body> createRepeated() => $pb.PbList<TradesResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static TradesResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TradesResponse_Body>(create);
  static TradesResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TradesResponse_TradeModel> get trades => $_getList(0);
}

class TradesResponse_TradeModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TradesResponse.TradeModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderId', protoName: 'orderId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairId', protoName: 'assetPairId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'direction')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'baseAssetName', protoName: 'baseAssetName')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'baseVolume', protoName: 'baseVolume')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quoteAssetName', protoName: 'quoteAssetName')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quoteVolume', protoName: 'quoteVolume')
    ..aOM<$3.Timestamp>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  TradesResponse_TradeModel._() : super();
  factory TradesResponse_TradeModel() => create();
  factory TradesResponse_TradeModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TradesResponse_TradeModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TradesResponse_TradeModel clone() => TradesResponse_TradeModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TradesResponse_TradeModel copyWith(void Function(TradesResponse_TradeModel) updates) => super.copyWith((message) => updates(message as TradesResponse_TradeModel)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TradesResponse_TradeModel create() => TradesResponse_TradeModel._();
  TradesResponse_TradeModel createEmptyInstance() => create();
  static $pb.PbList<TradesResponse_TradeModel> createRepeated() => $pb.PbList<TradesResponse_TradeModel>();
  @$core.pragma('dart2js:noInline')
  static TradesResponse_TradeModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TradesResponse_TradeModel>(create);
  static TradesResponse_TradeModel _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get orderId => $_getSZ(1);
  @$pb.TagNumber(2)
  set orderId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrderId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get assetPairId => $_getSZ(2);
  @$pb.TagNumber(3)
  set assetPairId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAssetPairId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAssetPairId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get price => $_getSZ(3);
  @$pb.TagNumber(4)
  set price($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get direction => $_getSZ(4);
  @$pb.TagNumber(5)
  set direction($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDirection() => $_has(4);
  @$pb.TagNumber(5)
  void clearDirection() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get baseAssetName => $_getSZ(5);
  @$pb.TagNumber(6)
  set baseAssetName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBaseAssetName() => $_has(5);
  @$pb.TagNumber(6)
  void clearBaseAssetName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get baseVolume => $_getSZ(6);
  @$pb.TagNumber(7)
  set baseVolume($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBaseVolume() => $_has(6);
  @$pb.TagNumber(7)
  void clearBaseVolume() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get quoteAssetName => $_getSZ(7);
  @$pb.TagNumber(8)
  set quoteAssetName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasQuoteAssetName() => $_has(7);
  @$pb.TagNumber(8)
  void clearQuoteAssetName() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get quoteVolume => $_getSZ(8);
  @$pb.TagNumber(9)
  set quoteVolume($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasQuoteVolume() => $_has(8);
  @$pb.TagNumber(9)
  void clearQuoteVolume() => clearField(9);

  @$pb.TagNumber(10)
  $3.Timestamp get timestamp => $_getN(9);
  @$pb.TagNumber(10)
  set timestamp($3.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasTimestamp() => $_has(9);
  @$pb.TagNumber(10)
  void clearTimestamp() => clearField(10);
  @$pb.TagNumber(10)
  $3.Timestamp ensureTimestamp() => $_ensure(9);
}

enum TradesResponse_Result {
  body, 
  error, 
  notSet
}

class TradesResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, TradesResponse_Result> _TradesResponse_ResultByTag = {
    1 : TradesResponse_Result.body,
    2 : TradesResponse_Result.error,
    0 : TradesResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TradesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<TradesResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: TradesResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  TradesResponse._() : super();
  factory TradesResponse() => create();
  factory TradesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TradesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TradesResponse clone() => TradesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TradesResponse copyWith(void Function(TradesResponse) updates) => super.copyWith((message) => updates(message as TradesResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TradesResponse create() => TradesResponse._();
  TradesResponse createEmptyInstance() => create();
  static $pb.PbList<TradesResponse> createRepeated() => $pb.PbList<TradesResponse>();
  @$core.pragma('dart2js:noInline')
  static TradesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TradesResponse>(create);
  static TradesResponse _defaultInstance;

  TradesResponse_Result whichResult() => _TradesResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  TradesResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(TradesResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  TradesResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class AssetTradesResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssetTradesResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pc<AssetTradesResponse_AssetTradeModel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trades', $pb.PbFieldType.PM, subBuilder: AssetTradesResponse_AssetTradeModel.create)
    ..hasRequiredFields = false
  ;

  AssetTradesResponse_Body._() : super();
  factory AssetTradesResponse_Body() => create();
  factory AssetTradesResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetTradesResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssetTradesResponse_Body clone() => AssetTradesResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssetTradesResponse_Body copyWith(void Function(AssetTradesResponse_Body) updates) => super.copyWith((message) => updates(message as AssetTradesResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetTradesResponse_Body create() => AssetTradesResponse_Body._();
  AssetTradesResponse_Body createEmptyInstance() => create();
  static $pb.PbList<AssetTradesResponse_Body> createRepeated() => $pb.PbList<AssetTradesResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static AssetTradesResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetTradesResponse_Body>(create);
  static AssetTradesResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AssetTradesResponse_AssetTradeModel> get trades => $_getList(0);
}

class AssetTradesResponse_AssetTradeModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssetTradesResponse.AssetTradeModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairId', protoName: 'assetPairId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'baseAssetId', protoName: 'baseAssetId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quoteAssetId', protoName: 'quoteAssetId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'baseVolume', protoName: 'baseVolume')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quoteVolume', protoName: 'quoteVolume')
    ..aOM<$3.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  AssetTradesResponse_AssetTradeModel._() : super();
  factory AssetTradesResponse_AssetTradeModel() => create();
  factory AssetTradesResponse_AssetTradeModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetTradesResponse_AssetTradeModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssetTradesResponse_AssetTradeModel clone() => AssetTradesResponse_AssetTradeModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssetTradesResponse_AssetTradeModel copyWith(void Function(AssetTradesResponse_AssetTradeModel) updates) => super.copyWith((message) => updates(message as AssetTradesResponse_AssetTradeModel)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetTradesResponse_AssetTradeModel create() => AssetTradesResponse_AssetTradeModel._();
  AssetTradesResponse_AssetTradeModel createEmptyInstance() => create();
  static $pb.PbList<AssetTradesResponse_AssetTradeModel> createRepeated() => $pb.PbList<AssetTradesResponse_AssetTradeModel>();
  @$core.pragma('dart2js:noInline')
  static AssetTradesResponse_AssetTradeModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetTradesResponse_AssetTradeModel>(create);
  static AssetTradesResponse_AssetTradeModel _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get assetPairId => $_getSZ(1);
  @$pb.TagNumber(2)
  set assetPairId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAssetPairId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssetPairId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get baseAssetId => $_getSZ(2);
  @$pb.TagNumber(3)
  set baseAssetId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBaseAssetId() => $_has(2);
  @$pb.TagNumber(3)
  void clearBaseAssetId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get quoteAssetId => $_getSZ(3);
  @$pb.TagNumber(4)
  set quoteAssetId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasQuoteAssetId() => $_has(3);
  @$pb.TagNumber(4)
  void clearQuoteAssetId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get price => $_getSZ(4);
  @$pb.TagNumber(5)
  set price($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get baseVolume => $_getSZ(5);
  @$pb.TagNumber(6)
  set baseVolume($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBaseVolume() => $_has(5);
  @$pb.TagNumber(6)
  void clearBaseVolume() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get quoteVolume => $_getSZ(6);
  @$pb.TagNumber(7)
  set quoteVolume($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasQuoteVolume() => $_has(6);
  @$pb.TagNumber(7)
  void clearQuoteVolume() => clearField(7);

  @$pb.TagNumber(8)
  $3.Timestamp get timestamp => $_getN(7);
  @$pb.TagNumber(8)
  set timestamp($3.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasTimestamp() => $_has(7);
  @$pb.TagNumber(8)
  void clearTimestamp() => clearField(8);
  @$pb.TagNumber(8)
  $3.Timestamp ensureTimestamp() => $_ensure(7);
}

enum AssetTradesResponse_Result {
  body, 
  error, 
  notSet
}

class AssetTradesResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, AssetTradesResponse_Result> _AssetTradesResponse_ResultByTag = {
    1 : AssetTradesResponse_Result.body,
    2 : AssetTradesResponse_Result.error,
    0 : AssetTradesResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssetTradesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<AssetTradesResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: AssetTradesResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  AssetTradesResponse._() : super();
  factory AssetTradesResponse() => create();
  factory AssetTradesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetTradesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssetTradesResponse clone() => AssetTradesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssetTradesResponse copyWith(void Function(AssetTradesResponse) updates) => super.copyWith((message) => updates(message as AssetTradesResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetTradesResponse create() => AssetTradesResponse._();
  AssetTradesResponse createEmptyInstance() => create();
  static $pb.PbList<AssetTradesResponse> createRepeated() => $pb.PbList<AssetTradesResponse>();
  @$core.pragma('dart2js:noInline')
  static AssetTradesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetTradesResponse>(create);
  static AssetTradesResponse _defaultInstance;

  AssetTradesResponse_Result whichResult() => _AssetTradesResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AssetTradesResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(AssetTradesResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  AssetTradesResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class FundsResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FundsResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pc<FundsResponse_FundsModel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'funds', $pb.PbFieldType.PM, subBuilder: FundsResponse_FundsModel.create)
    ..hasRequiredFields = false
  ;

  FundsResponse_Body._() : super();
  factory FundsResponse_Body() => create();
  factory FundsResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FundsResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FundsResponse_Body clone() => FundsResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FundsResponse_Body copyWith(void Function(FundsResponse_Body) updates) => super.copyWith((message) => updates(message as FundsResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FundsResponse_Body create() => FundsResponse_Body._();
  FundsResponse_Body createEmptyInstance() => create();
  static $pb.PbList<FundsResponse_Body> createRepeated() => $pb.PbList<FundsResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static FundsResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FundsResponse_Body>(create);
  static FundsResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<FundsResponse_FundsModel> get funds => $_getList(0);
}

class FundsResponse_FundsModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FundsResponse.FundsModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetName', protoName: 'assetName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'volume')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operation')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOM<$3.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', subBuilder: $3.Timestamp.create)
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockchainHash', protoName: 'blockchainHash')
    ..hasRequiredFields = false
  ;

  FundsResponse_FundsModel._() : super();
  factory FundsResponse_FundsModel() => create();
  factory FundsResponse_FundsModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FundsResponse_FundsModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FundsResponse_FundsModel clone() => FundsResponse_FundsModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FundsResponse_FundsModel copyWith(void Function(FundsResponse_FundsModel) updates) => super.copyWith((message) => updates(message as FundsResponse_FundsModel)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FundsResponse_FundsModel create() => FundsResponse_FundsModel._();
  FundsResponse_FundsModel createEmptyInstance() => create();
  static $pb.PbList<FundsResponse_FundsModel> createRepeated() => $pb.PbList<FundsResponse_FundsModel>();
  @$core.pragma('dart2js:noInline')
  static FundsResponse_FundsModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FundsResponse_FundsModel>(create);
  static FundsResponse_FundsModel _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get assetId => $_getSZ(1);
  @$pb.TagNumber(2)
  set assetId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAssetId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssetId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get assetName => $_getSZ(2);
  @$pb.TagNumber(3)
  set assetName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAssetName() => $_has(2);
  @$pb.TagNumber(3)
  void clearAssetName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get volume => $_getSZ(3);
  @$pb.TagNumber(4)
  set volume($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVolume() => $_has(3);
  @$pb.TagNumber(4)
  void clearVolume() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get operation => $_getSZ(4);
  @$pb.TagNumber(5)
  set operation($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOperation() => $_has(4);
  @$pb.TagNumber(5)
  void clearOperation() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get type => $_getSZ(5);
  @$pb.TagNumber(6)
  set type($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get status => $_getSZ(6);
  @$pb.TagNumber(7)
  set status($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearStatus() => clearField(7);

  @$pb.TagNumber(8)
  $3.Timestamp get timestamp => $_getN(7);
  @$pb.TagNumber(8)
  set timestamp($3.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasTimestamp() => $_has(7);
  @$pb.TagNumber(8)
  void clearTimestamp() => clearField(8);
  @$pb.TagNumber(8)
  $3.Timestamp ensureTimestamp() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.String get blockchainHash => $_getSZ(8);
  @$pb.TagNumber(9)
  set blockchainHash($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBlockchainHash() => $_has(8);
  @$pb.TagNumber(9)
  void clearBlockchainHash() => clearField(9);
}

enum FundsResponse_Result {
  body, 
  error, 
  notSet
}

class FundsResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, FundsResponse_Result> _FundsResponse_ResultByTag = {
    1 : FundsResponse_Result.body,
    2 : FundsResponse_Result.error,
    0 : FundsResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FundsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<FundsResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: FundsResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  FundsResponse._() : super();
  factory FundsResponse() => create();
  factory FundsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FundsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FundsResponse clone() => FundsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FundsResponse copyWith(void Function(FundsResponse) updates) => super.copyWith((message) => updates(message as FundsResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FundsResponse create() => FundsResponse._();
  FundsResponse createEmptyInstance() => create();
  static $pb.PbList<FundsResponse> createRepeated() => $pb.PbList<FundsResponse>();
  @$core.pragma('dart2js:noInline')
  static FundsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FundsResponse>(create);
  static FundsResponse _defaultInstance;

  FundsResponse_Result whichResult() => _FundsResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  FundsResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(FundsResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  FundsResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class ExplorerLinksResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExplorerLinksResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pc<ExplorerLinksResponse_ExplorerLinkModel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'links', $pb.PbFieldType.PM, subBuilder: ExplorerLinksResponse_ExplorerLinkModel.create)
    ..hasRequiredFields = false
  ;

  ExplorerLinksResponse_Body._() : super();
  factory ExplorerLinksResponse_Body() => create();
  factory ExplorerLinksResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExplorerLinksResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExplorerLinksResponse_Body clone() => ExplorerLinksResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExplorerLinksResponse_Body copyWith(void Function(ExplorerLinksResponse_Body) updates) => super.copyWith((message) => updates(message as ExplorerLinksResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExplorerLinksResponse_Body create() => ExplorerLinksResponse_Body._();
  ExplorerLinksResponse_Body createEmptyInstance() => create();
  static $pb.PbList<ExplorerLinksResponse_Body> createRepeated() => $pb.PbList<ExplorerLinksResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static ExplorerLinksResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExplorerLinksResponse_Body>(create);
  static ExplorerLinksResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ExplorerLinksResponse_ExplorerLinkModel> get links => $_getList(0);
}

class ExplorerLinksResponse_ExplorerLinkModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExplorerLinksResponse.ExplorerLinkModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  ExplorerLinksResponse_ExplorerLinkModel._() : super();
  factory ExplorerLinksResponse_ExplorerLinkModel() => create();
  factory ExplorerLinksResponse_ExplorerLinkModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExplorerLinksResponse_ExplorerLinkModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExplorerLinksResponse_ExplorerLinkModel clone() => ExplorerLinksResponse_ExplorerLinkModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExplorerLinksResponse_ExplorerLinkModel copyWith(void Function(ExplorerLinksResponse_ExplorerLinkModel) updates) => super.copyWith((message) => updates(message as ExplorerLinksResponse_ExplorerLinkModel)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExplorerLinksResponse_ExplorerLinkModel create() => ExplorerLinksResponse_ExplorerLinkModel._();
  ExplorerLinksResponse_ExplorerLinkModel createEmptyInstance() => create();
  static $pb.PbList<ExplorerLinksResponse_ExplorerLinkModel> createRepeated() => $pb.PbList<ExplorerLinksResponse_ExplorerLinkModel>();
  @$core.pragma('dart2js:noInline')
  static ExplorerLinksResponse_ExplorerLinkModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExplorerLinksResponse_ExplorerLinkModel>(create);
  static ExplorerLinksResponse_ExplorerLinkModel _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

enum ExplorerLinksResponse_Result {
  body, 
  error, 
  notSet
}

class ExplorerLinksResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ExplorerLinksResponse_Result> _ExplorerLinksResponse_ResultByTag = {
    1 : ExplorerLinksResponse_Result.body,
    2 : ExplorerLinksResponse_Result.error,
    0 : ExplorerLinksResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExplorerLinksResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ExplorerLinksResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: ExplorerLinksResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  ExplorerLinksResponse._() : super();
  factory ExplorerLinksResponse() => create();
  factory ExplorerLinksResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExplorerLinksResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExplorerLinksResponse clone() => ExplorerLinksResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExplorerLinksResponse copyWith(void Function(ExplorerLinksResponse) updates) => super.copyWith((message) => updates(message as ExplorerLinksResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExplorerLinksResponse create() => ExplorerLinksResponse._();
  ExplorerLinksResponse createEmptyInstance() => create();
  static $pb.PbList<ExplorerLinksResponse> createRepeated() => $pb.PbList<ExplorerLinksResponse>();
  @$core.pragma('dart2js:noInline')
  static ExplorerLinksResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExplorerLinksResponse>(create);
  static ExplorerLinksResponse _defaultInstance;

  ExplorerLinksResponse_Result whichResult() => _ExplorerLinksResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ExplorerLinksResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(ExplorerLinksResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  ExplorerLinksResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class PublicTradesResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublicTradesResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pc<PublicTrade>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', $pb.PbFieldType.PM, subBuilder: PublicTrade.create)
    ..hasRequiredFields = false
  ;

  PublicTradesResponse_Body._() : super();
  factory PublicTradesResponse_Body() => create();
  factory PublicTradesResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublicTradesResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublicTradesResponse_Body clone() => PublicTradesResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublicTradesResponse_Body copyWith(void Function(PublicTradesResponse_Body) updates) => super.copyWith((message) => updates(message as PublicTradesResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublicTradesResponse_Body create() => PublicTradesResponse_Body._();
  PublicTradesResponse_Body createEmptyInstance() => create();
  static $pb.PbList<PublicTradesResponse_Body> createRepeated() => $pb.PbList<PublicTradesResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static PublicTradesResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublicTradesResponse_Body>(create);
  static PublicTradesResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PublicTrade> get result => $_getList(0);
}

enum PublicTradesResponse_Result {
  body, 
  error, 
  notSet
}

class PublicTradesResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PublicTradesResponse_Result> _PublicTradesResponse_ResultByTag = {
    1 : PublicTradesResponse_Result.body,
    2 : PublicTradesResponse_Result.error,
    0 : PublicTradesResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublicTradesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<PublicTradesResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: PublicTradesResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  PublicTradesResponse._() : super();
  factory PublicTradesResponse() => create();
  factory PublicTradesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublicTradesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublicTradesResponse clone() => PublicTradesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublicTradesResponse copyWith(void Function(PublicTradesResponse) updates) => super.copyWith((message) => updates(message as PublicTradesResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublicTradesResponse create() => PublicTradesResponse._();
  PublicTradesResponse createEmptyInstance() => create();
  static $pb.PbList<PublicTradesResponse> createRepeated() => $pb.PbList<PublicTradesResponse>();
  @$core.pragma('dart2js:noInline')
  static PublicTradesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublicTradesResponse>(create);
  static PublicTradesResponse _defaultInstance;

  PublicTradesResponse_Result whichResult() => _PublicTradesResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PublicTradesResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(PublicTradesResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  PublicTradesResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class PublicTrade extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublicTrade', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairId', protoName: 'assetPairId')
    ..aOM<$3.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dateTime', protoName: 'dateTime', subBuilder: $3.Timestamp.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'volume')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'side')
    ..hasRequiredFields = false
  ;

  PublicTrade._() : super();
  factory PublicTrade() => create();
  factory PublicTrade.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublicTrade.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublicTrade clone() => PublicTrade()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublicTrade copyWith(void Function(PublicTrade) updates) => super.copyWith((message) => updates(message as PublicTrade)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublicTrade create() => PublicTrade._();
  PublicTrade createEmptyInstance() => create();
  static $pb.PbList<PublicTrade> createRepeated() => $pb.PbList<PublicTrade>();
  @$core.pragma('dart2js:noInline')
  static PublicTrade getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublicTrade>(create);
  static PublicTrade _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get assetPairId => $_getSZ(1);
  @$pb.TagNumber(2)
  set assetPairId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAssetPairId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssetPairId() => clearField(2);

  @$pb.TagNumber(3)
  $3.Timestamp get dateTime => $_getN(2);
  @$pb.TagNumber(3)
  set dateTime($3.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDateTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearDateTime() => clearField(3);
  @$pb.TagNumber(3)
  $3.Timestamp ensureDateTime() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get volume => $_getSZ(3);
  @$pb.TagNumber(4)
  set volume($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVolume() => $_has(3);
  @$pb.TagNumber(4)
  void clearVolume() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get price => $_getSZ(4);
  @$pb.TagNumber(5)
  set price($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get side => $_getSZ(5);
  @$pb.TagNumber(6)
  set side($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSide() => $_has(5);
  @$pb.TagNumber(6)
  void clearSide() => clearField(6);
}

class WatchlistsResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WatchlistsResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pc<Watchlist>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', $pb.PbFieldType.PM, subBuilder: Watchlist.create)
    ..hasRequiredFields = false
  ;

  WatchlistsResponse_Body._() : super();
  factory WatchlistsResponse_Body() => create();
  factory WatchlistsResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchlistsResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WatchlistsResponse_Body clone() => WatchlistsResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WatchlistsResponse_Body copyWith(void Function(WatchlistsResponse_Body) updates) => super.copyWith((message) => updates(message as WatchlistsResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WatchlistsResponse_Body create() => WatchlistsResponse_Body._();
  WatchlistsResponse_Body createEmptyInstance() => create();
  static $pb.PbList<WatchlistsResponse_Body> createRepeated() => $pb.PbList<WatchlistsResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static WatchlistsResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchlistsResponse_Body>(create);
  static WatchlistsResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Watchlist> get result => $_getList(0);
}

enum WatchlistsResponse_Result {
  body, 
  error, 
  notSet
}

class WatchlistsResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, WatchlistsResponse_Result> _WatchlistsResponse_ResultByTag = {
    1 : WatchlistsResponse_Result.body,
    2 : WatchlistsResponse_Result.error,
    0 : WatchlistsResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WatchlistsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<WatchlistsResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: WatchlistsResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  WatchlistsResponse._() : super();
  factory WatchlistsResponse() => create();
  factory WatchlistsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchlistsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WatchlistsResponse clone() => WatchlistsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WatchlistsResponse copyWith(void Function(WatchlistsResponse) updates) => super.copyWith((message) => updates(message as WatchlistsResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WatchlistsResponse create() => WatchlistsResponse._();
  WatchlistsResponse createEmptyInstance() => create();
  static $pb.PbList<WatchlistsResponse> createRepeated() => $pb.PbList<WatchlistsResponse>();
  @$core.pragma('dart2js:noInline')
  static WatchlistsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchlistsResponse>(create);
  static WatchlistsResponse _defaultInstance;

  WatchlistsResponse_Result whichResult() => _WatchlistsResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  WatchlistsResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(WatchlistsResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  WatchlistsResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

enum WatchlistResponse_Result {
  body, 
  error, 
  notSet
}

class WatchlistResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, WatchlistResponse_Result> _WatchlistResponse_ResultByTag = {
    1 : WatchlistResponse_Result.body,
    2 : WatchlistResponse_Result.error,
    0 : WatchlistResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WatchlistResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<Watchlist>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: Watchlist.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  WatchlistResponse._() : super();
  factory WatchlistResponse() => create();
  factory WatchlistResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchlistResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WatchlistResponse clone() => WatchlistResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WatchlistResponse copyWith(void Function(WatchlistResponse) updates) => super.copyWith((message) => updates(message as WatchlistResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WatchlistResponse create() => WatchlistResponse._();
  WatchlistResponse createEmptyInstance() => create();
  static $pb.PbList<WatchlistResponse> createRepeated() => $pb.PbList<WatchlistResponse>();
  @$core.pragma('dart2js:noInline')
  static WatchlistResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchlistResponse>(create);
  static WatchlistResponse _defaultInstance;

  WatchlistResponse_Result whichResult() => _WatchlistResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Watchlist get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(Watchlist v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  Watchlist ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

enum TierInfoResponse_Result {
  body, 
  error, 
  notSet
}

class TierInfoResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, TierInfoResponse_Result> _TierInfoResponse_ResultByTag = {
    1 : TierInfoResponse_Result.body,
    2 : TierInfoResponse_Result.error,
    0 : TierInfoResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TierInfoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<TierInfoPayload>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: TierInfoPayload.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  TierInfoResponse._() : super();
  factory TierInfoResponse() => create();
  factory TierInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TierInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TierInfoResponse clone() => TierInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TierInfoResponse copyWith(void Function(TierInfoResponse) updates) => super.copyWith((message) => updates(message as TierInfoResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TierInfoResponse create() => TierInfoResponse._();
  TierInfoResponse createEmptyInstance() => create();
  static $pb.PbList<TierInfoResponse> createRepeated() => $pb.PbList<TierInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static TierInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TierInfoResponse>(create);
  static TierInfoResponse _defaultInstance;

  TierInfoResponse_Result whichResult() => _TierInfoResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  TierInfoPayload get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(TierInfoPayload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  TierInfoPayload ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

enum PersonalDataResponse_Result {
  body, 
  error, 
  notSet
}

class PersonalDataResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PersonalDataResponse_Result> _PersonalDataResponse_ResultByTag = {
    1 : PersonalDataResponse_Result.body,
    2 : PersonalDataResponse_Result.error,
    0 : PersonalDataResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PersonalDataResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<PersonalData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: PersonalData.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  PersonalDataResponse._() : super();
  factory PersonalDataResponse() => create();
  factory PersonalDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PersonalDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PersonalDataResponse clone() => PersonalDataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PersonalDataResponse copyWith(void Function(PersonalDataResponse) updates) => super.copyWith((message) => updates(message as PersonalDataResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PersonalDataResponse create() => PersonalDataResponse._();
  PersonalDataResponse createEmptyInstance() => create();
  static $pb.PbList<PersonalDataResponse> createRepeated() => $pb.PbList<PersonalDataResponse>();
  @$core.pragma('dart2js:noInline')
  static PersonalDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PersonalDataResponse>(create);
  static PersonalDataResponse _defaultInstance;

  PersonalDataResponse_Result whichResult() => _PersonalDataResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PersonalData get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(PersonalData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  PersonalData ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class PersonalData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PersonalData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fullName', protoName: 'fullName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstName', protoName: 'firstName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastName', protoName: 'lastName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'country')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'city')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'zip')
    ..hasRequiredFields = false
  ;

  PersonalData._() : super();
  factory PersonalData() => create();
  factory PersonalData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PersonalData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PersonalData clone() => PersonalData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PersonalData copyWith(void Function(PersonalData) updates) => super.copyWith((message) => updates(message as PersonalData)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PersonalData create() => PersonalData._();
  PersonalData createEmptyInstance() => create();
  static $pb.PbList<PersonalData> createRepeated() => $pb.PbList<PersonalData>();
  @$core.pragma('dart2js:noInline')
  static PersonalData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PersonalData>(create);
  static PersonalData _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fullName => $_getSZ(0);
  @$pb.TagNumber(1)
  set fullName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFullName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFullName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get firstName => $_getSZ(1);
  @$pb.TagNumber(2)
  set firstName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFirstName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirstName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get lastName => $_getSZ(2);
  @$pb.TagNumber(3)
  set lastName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastName() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get email => $_getSZ(3);
  @$pb.TagNumber(4)
  set email($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmail() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get phone => $_getSZ(4);
  @$pb.TagNumber(5)
  set phone($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPhone() => $_has(4);
  @$pb.TagNumber(5)
  void clearPhone() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get country => $_getSZ(5);
  @$pb.TagNumber(6)
  set country($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCountry() => $_has(5);
  @$pb.TagNumber(6)
  void clearCountry() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get address => $_getSZ(6);
  @$pb.TagNumber(7)
  set address($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAddress() => $_has(6);
  @$pb.TagNumber(7)
  void clearAddress() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get city => $_getSZ(7);
  @$pb.TagNumber(8)
  set city($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCity() => $_has(7);
  @$pb.TagNumber(8)
  void clearCity() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get zip => $_getSZ(8);
  @$pb.TagNumber(9)
  set zip($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasZip() => $_has(8);
  @$pb.TagNumber(9)
  void clearZip() => clearField(9);
}

class KycDocumentsResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KycDocumentsResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..m<$core.String, KycDocument>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', entryClassName: 'KycDocumentsResponse.Body.ResultEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: KycDocument.create, packageName: const $pb.PackageName('antaresWallet'))
    ..hasRequiredFields = false
  ;

  KycDocumentsResponse_Body._() : super();
  factory KycDocumentsResponse_Body() => create();
  factory KycDocumentsResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KycDocumentsResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KycDocumentsResponse_Body clone() => KycDocumentsResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KycDocumentsResponse_Body copyWith(void Function(KycDocumentsResponse_Body) updates) => super.copyWith((message) => updates(message as KycDocumentsResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KycDocumentsResponse_Body create() => KycDocumentsResponse_Body._();
  KycDocumentsResponse_Body createEmptyInstance() => create();
  static $pb.PbList<KycDocumentsResponse_Body> createRepeated() => $pb.PbList<KycDocumentsResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static KycDocumentsResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KycDocumentsResponse_Body>(create);
  static KycDocumentsResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, KycDocument> get result => $_getMap(0);
}

enum KycDocumentsResponse_Result {
  body, 
  error, 
  notSet
}

class KycDocumentsResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, KycDocumentsResponse_Result> _KycDocumentsResponse_ResultByTag = {
    1 : KycDocumentsResponse_Result.body,
    2 : KycDocumentsResponse_Result.error,
    0 : KycDocumentsResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KycDocumentsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<KycDocumentsResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: KycDocumentsResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  KycDocumentsResponse._() : super();
  factory KycDocumentsResponse() => create();
  factory KycDocumentsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KycDocumentsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KycDocumentsResponse clone() => KycDocumentsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KycDocumentsResponse copyWith(void Function(KycDocumentsResponse) updates) => super.copyWith((message) => updates(message as KycDocumentsResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KycDocumentsResponse create() => KycDocumentsResponse._();
  KycDocumentsResponse createEmptyInstance() => create();
  static $pb.PbList<KycDocumentsResponse> createRepeated() => $pb.PbList<KycDocumentsResponse>();
  @$core.pragma('dart2js:noInline')
  static KycDocumentsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KycDocumentsResponse>(create);
  static KycDocumentsResponse _defaultInstance;

  KycDocumentsResponse_Result whichResult() => _KycDocumentsResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  KycDocumentsResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(KycDocumentsResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  KycDocumentsResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class KycDocument extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KycDocument', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rejectReason', protoName: 'rejectReason')
    ..pc<KycFile>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'files', $pb.PbFieldType.PM, subBuilder: KycFile.create)
    ..hasRequiredFields = false
  ;

  KycDocument._() : super();
  factory KycDocument() => create();
  factory KycDocument.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KycDocument.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KycDocument clone() => KycDocument()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KycDocument copyWith(void Function(KycDocument) updates) => super.copyWith((message) => updates(message as KycDocument)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KycDocument create() => KycDocument._();
  KycDocument createEmptyInstance() => create();
  static $pb.PbList<KycDocument> createRepeated() => $pb.PbList<KycDocument>();
  @$core.pragma('dart2js:noInline')
  static KycDocument getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KycDocument>(create);
  static KycDocument _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get status => $_getSZ(2);
  @$pb.TagNumber(3)
  set status($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get rejectReason => $_getSZ(3);
  @$pb.TagNumber(4)
  set rejectReason($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRejectReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearRejectReason() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<KycFile> get files => $_getList(4);
}

class KycFile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KycFile', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contentType', protoName: 'contentType')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileName', protoName: 'fileName')
    ..hasRequiredFields = false
  ;

  KycFile._() : super();
  factory KycFile() => create();
  factory KycFile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KycFile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KycFile clone() => KycFile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KycFile copyWith(void Function(KycFile) updates) => super.copyWith((message) => updates(message as KycFile)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KycFile create() => KycFile._();
  KycFile createEmptyInstance() => create();
  static $pb.PbList<KycFile> createRepeated() => $pb.PbList<KycFile>();
  @$core.pragma('dart2js:noInline')
  static KycFile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KycFile>(create);
  static KycFile _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get contentType => $_getSZ(3);
  @$pb.TagNumber(4)
  set contentType($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContentType() => $_has(3);
  @$pb.TagNumber(4)
  void clearContentType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get fileName => $_getSZ(4);
  @$pb.TagNumber(5)
  set fileName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFileName() => $_has(4);
  @$pb.TagNumber(5)
  void clearFileName() => clearField(5);
}

class QuestionnaireResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QuestionnaireResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pc<QuestionnaireResponse_Question>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'questionnaire', $pb.PbFieldType.PM, subBuilder: QuestionnaireResponse_Question.create)
    ..hasRequiredFields = false
  ;

  QuestionnaireResponse_Body._() : super();
  factory QuestionnaireResponse_Body() => create();
  factory QuestionnaireResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuestionnaireResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuestionnaireResponse_Body clone() => QuestionnaireResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuestionnaireResponse_Body copyWith(void Function(QuestionnaireResponse_Body) updates) => super.copyWith((message) => updates(message as QuestionnaireResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuestionnaireResponse_Body create() => QuestionnaireResponse_Body._();
  QuestionnaireResponse_Body createEmptyInstance() => create();
  static $pb.PbList<QuestionnaireResponse_Body> createRepeated() => $pb.PbList<QuestionnaireResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static QuestionnaireResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuestionnaireResponse_Body>(create);
  static QuestionnaireResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<QuestionnaireResponse_Question> get questionnaire => $_getList(0);
}

class QuestionnaireResponse_Question extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QuestionnaireResponse.Question', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'required')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hasOther', protoName: 'hasOther')
    ..pc<QuestionnaireResponse_Answer>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'answers', $pb.PbFieldType.PM, subBuilder: QuestionnaireResponse_Answer.create)
    ..hasRequiredFields = false
  ;

  QuestionnaireResponse_Question._() : super();
  factory QuestionnaireResponse_Question() => create();
  factory QuestionnaireResponse_Question.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuestionnaireResponse_Question.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuestionnaireResponse_Question clone() => QuestionnaireResponse_Question()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuestionnaireResponse_Question copyWith(void Function(QuestionnaireResponse_Question) updates) => super.copyWith((message) => updates(message as QuestionnaireResponse_Question)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuestionnaireResponse_Question create() => QuestionnaireResponse_Question._();
  QuestionnaireResponse_Question createEmptyInstance() => create();
  static $pb.PbList<QuestionnaireResponse_Question> createRepeated() => $pb.PbList<QuestionnaireResponse_Question>();
  @$core.pragma('dart2js:noInline')
  static QuestionnaireResponse_Question getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuestionnaireResponse_Question>(create);
  static QuestionnaireResponse_Question _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get type => $_getSZ(2);
  @$pb.TagNumber(3)
  set type($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get required => $_getBF(3);
  @$pb.TagNumber(4)
  set required($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRequired() => $_has(3);
  @$pb.TagNumber(4)
  void clearRequired() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get hasOther => $_getBF(4);
  @$pb.TagNumber(5)
  set hasOther($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHasOther() => $_has(4);
  @$pb.TagNumber(5)
  void clearHasOther() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<QuestionnaireResponse_Answer> get answers => $_getList(5);
}

class QuestionnaireResponse_Answer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QuestionnaireResponse.Answer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..hasRequiredFields = false
  ;

  QuestionnaireResponse_Answer._() : super();
  factory QuestionnaireResponse_Answer() => create();
  factory QuestionnaireResponse_Answer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuestionnaireResponse_Answer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuestionnaireResponse_Answer clone() => QuestionnaireResponse_Answer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuestionnaireResponse_Answer copyWith(void Function(QuestionnaireResponse_Answer) updates) => super.copyWith((message) => updates(message as QuestionnaireResponse_Answer)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuestionnaireResponse_Answer create() => QuestionnaireResponse_Answer._();
  QuestionnaireResponse_Answer createEmptyInstance() => create();
  static $pb.PbList<QuestionnaireResponse_Answer> createRepeated() => $pb.PbList<QuestionnaireResponse_Answer>();
  @$core.pragma('dart2js:noInline')
  static QuestionnaireResponse_Answer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuestionnaireResponse_Answer>(create);
  static QuestionnaireResponse_Answer _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);
}

enum QuestionnaireResponse_Result {
  body, 
  error, 
  notSet
}

class QuestionnaireResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, QuestionnaireResponse_Result> _QuestionnaireResponse_ResultByTag = {
    1 : QuestionnaireResponse_Result.body,
    2 : QuestionnaireResponse_Result.error,
    0 : QuestionnaireResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QuestionnaireResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<QuestionnaireResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: QuestionnaireResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  QuestionnaireResponse._() : super();
  factory QuestionnaireResponse() => create();
  factory QuestionnaireResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuestionnaireResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuestionnaireResponse clone() => QuestionnaireResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuestionnaireResponse copyWith(void Function(QuestionnaireResponse) updates) => super.copyWith((message) => updates(message as QuestionnaireResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuestionnaireResponse create() => QuestionnaireResponse._();
  QuestionnaireResponse createEmptyInstance() => create();
  static $pb.PbList<QuestionnaireResponse> createRepeated() => $pb.PbList<QuestionnaireResponse>();
  @$core.pragma('dart2js:noInline')
  static QuestionnaireResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuestionnaireResponse>(create);
  static QuestionnaireResponse _defaultInstance;

  QuestionnaireResponse_Result whichResult() => _QuestionnaireResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  QuestionnaireResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(QuestionnaireResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  QuestionnaireResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class TierInfoPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TierInfoPayload', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOM<CurrentTier>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currentTier', protoName: 'currentTier', subBuilder: CurrentTier.create)
    ..aOM<NextTier>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nextTier', protoName: 'nextTier', subBuilder: NextTier.create)
    ..aOM<UpgradeRequest>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'upgradeRequest', protoName: 'upgradeRequest', subBuilder: UpgradeRequest.create)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'questionnaireAnswered', protoName: 'questionnaireAnswered')
    ..hasRequiredFields = false
  ;

  TierInfoPayload._() : super();
  factory TierInfoPayload() => create();
  factory TierInfoPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TierInfoPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TierInfoPayload clone() => TierInfoPayload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TierInfoPayload copyWith(void Function(TierInfoPayload) updates) => super.copyWith((message) => updates(message as TierInfoPayload)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TierInfoPayload create() => TierInfoPayload._();
  TierInfoPayload createEmptyInstance() => create();
  static $pb.PbList<TierInfoPayload> createRepeated() => $pb.PbList<TierInfoPayload>();
  @$core.pragma('dart2js:noInline')
  static TierInfoPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TierInfoPayload>(create);
  static TierInfoPayload _defaultInstance;

  @$pb.TagNumber(1)
  CurrentTier get currentTier => $_getN(0);
  @$pb.TagNumber(1)
  set currentTier(CurrentTier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCurrentTier() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrentTier() => clearField(1);
  @$pb.TagNumber(1)
  CurrentTier ensureCurrentTier() => $_ensure(0);

  @$pb.TagNumber(2)
  NextTier get nextTier => $_getN(1);
  @$pb.TagNumber(2)
  set nextTier(NextTier v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNextTier() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextTier() => clearField(2);
  @$pb.TagNumber(2)
  NextTier ensureNextTier() => $_ensure(1);

  @$pb.TagNumber(3)
  UpgradeRequest get upgradeRequest => $_getN(2);
  @$pb.TagNumber(3)
  set upgradeRequest(UpgradeRequest v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpgradeRequest() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpgradeRequest() => clearField(3);
  @$pb.TagNumber(3)
  UpgradeRequest ensureUpgradeRequest() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get questionnaireAnswered => $_getBF(3);
  @$pb.TagNumber(4)
  set questionnaireAnswered($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasQuestionnaireAnswered() => $_has(3);
  @$pb.TagNumber(4)
  void clearQuestionnaireAnswered() => clearField(4);
}

class WalletsResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WalletsResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOM<WalletsResponse_LykkeWalletsPayload>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lykke', subBuilder: WalletsResponse_LykkeWalletsPayload.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'multiSig', protoName: 'multiSig')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coloredMultiSig', protoName: 'coloredMultiSig')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'solarCoinAddress', protoName: 'solarCoinAddress')
    ..hasRequiredFields = false
  ;

  WalletsResponse_Body._() : super();
  factory WalletsResponse_Body() => create();
  factory WalletsResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletsResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalletsResponse_Body clone() => WalletsResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalletsResponse_Body copyWith(void Function(WalletsResponse_Body) updates) => super.copyWith((message) => updates(message as WalletsResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WalletsResponse_Body create() => WalletsResponse_Body._();
  WalletsResponse_Body createEmptyInstance() => create();
  static $pb.PbList<WalletsResponse_Body> createRepeated() => $pb.PbList<WalletsResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static WalletsResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletsResponse_Body>(create);
  static WalletsResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  WalletsResponse_LykkeWalletsPayload get lykke => $_getN(0);
  @$pb.TagNumber(1)
  set lykke(WalletsResponse_LykkeWalletsPayload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLykke() => $_has(0);
  @$pb.TagNumber(1)
  void clearLykke() => clearField(1);
  @$pb.TagNumber(1)
  WalletsResponse_LykkeWalletsPayload ensureLykke() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get multiSig => $_getSZ(1);
  @$pb.TagNumber(2)
  set multiSig($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMultiSig() => $_has(1);
  @$pb.TagNumber(2)
  void clearMultiSig() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get coloredMultiSig => $_getSZ(2);
  @$pb.TagNumber(3)
  set coloredMultiSig($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasColoredMultiSig() => $_has(2);
  @$pb.TagNumber(3)
  void clearColoredMultiSig() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get solarCoinAddress => $_getSZ(3);
  @$pb.TagNumber(4)
  set solarCoinAddress($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSolarCoinAddress() => $_has(3);
  @$pb.TagNumber(4)
  void clearSolarCoinAddress() => clearField(4);
}

class WalletsResponse_LykkeWalletsPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WalletsResponse.LykkeWalletsPayload', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pc<WalletsResponse_WalletAsset>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assets', $pb.PbFieldType.PM, subBuilder: WalletsResponse_WalletAsset.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'equity')
    ..hasRequiredFields = false
  ;

  WalletsResponse_LykkeWalletsPayload._() : super();
  factory WalletsResponse_LykkeWalletsPayload() => create();
  factory WalletsResponse_LykkeWalletsPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletsResponse_LykkeWalletsPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalletsResponse_LykkeWalletsPayload clone() => WalletsResponse_LykkeWalletsPayload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalletsResponse_LykkeWalletsPayload copyWith(void Function(WalletsResponse_LykkeWalletsPayload) updates) => super.copyWith((message) => updates(message as WalletsResponse_LykkeWalletsPayload)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WalletsResponse_LykkeWalletsPayload create() => WalletsResponse_LykkeWalletsPayload._();
  WalletsResponse_LykkeWalletsPayload createEmptyInstance() => create();
  static $pb.PbList<WalletsResponse_LykkeWalletsPayload> createRepeated() => $pb.PbList<WalletsResponse_LykkeWalletsPayload>();
  @$core.pragma('dart2js:noInline')
  static WalletsResponse_LykkeWalletsPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletsResponse_LykkeWalletsPayload>(create);
  static WalletsResponse_LykkeWalletsPayload _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<WalletsResponse_WalletAsset> get assets => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get equity => $_getSZ(1);
  @$pb.TagNumber(2)
  set equity($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEquity() => $_has(1);
  @$pb.TagNumber(2)
  void clearEquity() => clearField(2);
}

class WalletsResponse_WalletAsset extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WalletsResponse.WalletAsset', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'balance')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairId', protoName: 'assetPairId')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hideIfZero', protoName: 'hideIfZero')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'issuerId', protoName: 'issuerId')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accuracy', $pb.PbFieldType.O3)
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'categoryId', protoName: 'categoryId')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountInBase', protoName: 'amountInBase')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reserved')
    ..hasRequiredFields = false
  ;

  WalletsResponse_WalletAsset._() : super();
  factory WalletsResponse_WalletAsset() => create();
  factory WalletsResponse_WalletAsset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletsResponse_WalletAsset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalletsResponse_WalletAsset clone() => WalletsResponse_WalletAsset()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalletsResponse_WalletAsset copyWith(void Function(WalletsResponse_WalletAsset) updates) => super.copyWith((message) => updates(message as WalletsResponse_WalletAsset)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WalletsResponse_WalletAsset create() => WalletsResponse_WalletAsset._();
  WalletsResponse_WalletAsset createEmptyInstance() => create();
  static $pb.PbList<WalletsResponse_WalletAsset> createRepeated() => $pb.PbList<WalletsResponse_WalletAsset>();
  @$core.pragma('dart2js:noInline')
  static WalletsResponse_WalletAsset getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletsResponse_WalletAsset>(create);
  static WalletsResponse_WalletAsset _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get balance => $_getSZ(2);
  @$pb.TagNumber(3)
  set balance($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBalance() => $_has(2);
  @$pb.TagNumber(3)
  void clearBalance() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get symbol => $_getSZ(3);
  @$pb.TagNumber(4)
  set symbol($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSymbol() => $_has(3);
  @$pb.TagNumber(4)
  void clearSymbol() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get assetPairId => $_getSZ(4);
  @$pb.TagNumber(5)
  set assetPairId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAssetPairId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAssetPairId() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get hideIfZero => $_getBF(5);
  @$pb.TagNumber(6)
  set hideIfZero($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHideIfZero() => $_has(5);
  @$pb.TagNumber(6)
  void clearHideIfZero() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get issuerId => $_getSZ(6);
  @$pb.TagNumber(7)
  set issuerId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIssuerId() => $_has(6);
  @$pb.TagNumber(7)
  void clearIssuerId() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get accuracy => $_getIZ(7);
  @$pb.TagNumber(8)
  set accuracy($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAccuracy() => $_has(7);
  @$pb.TagNumber(8)
  void clearAccuracy() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get categoryId => $_getSZ(8);
  @$pb.TagNumber(9)
  set categoryId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCategoryId() => $_has(8);
  @$pb.TagNumber(9)
  void clearCategoryId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get amountInBase => $_getSZ(9);
  @$pb.TagNumber(10)
  set amountInBase($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAmountInBase() => $_has(9);
  @$pb.TagNumber(10)
  void clearAmountInBase() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get reserved => $_getSZ(10);
  @$pb.TagNumber(11)
  set reserved($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasReserved() => $_has(10);
  @$pb.TagNumber(11)
  void clearReserved() => clearField(11);
}

enum WalletsResponse_Result {
  body, 
  error, 
  notSet
}

class WalletsResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, WalletsResponse_Result> _WalletsResponse_ResultByTag = {
    1 : WalletsResponse_Result.body,
    2 : WalletsResponse_Result.error,
    0 : WalletsResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WalletsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<WalletsResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: WalletsResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  WalletsResponse._() : super();
  factory WalletsResponse() => create();
  factory WalletsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalletsResponse clone() => WalletsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalletsResponse copyWith(void Function(WalletsResponse) updates) => super.copyWith((message) => updates(message as WalletsResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WalletsResponse create() => WalletsResponse._();
  WalletsResponse createEmptyInstance() => create();
  static $pb.PbList<WalletsResponse> createRepeated() => $pb.PbList<WalletsResponse>();
  @$core.pragma('dart2js:noInline')
  static WalletsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletsResponse>(create);
  static WalletsResponse _defaultInstance;

  WalletsResponse_Result whichResult() => _WalletsResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  WalletsResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(WalletsResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  WalletsResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class WalletResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WalletResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'balance')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairId', protoName: 'assetPairId')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hideIfZero', protoName: 'hideIfZero')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'issuerId', protoName: 'issuerId')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accuracy', $pb.PbFieldType.O3)
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'categoryId', protoName: 'categoryId')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountInBase', protoName: 'amountInBase')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reserved')
    ..hasRequiredFields = false
  ;

  WalletResponse_Body._() : super();
  factory WalletResponse_Body() => create();
  factory WalletResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalletResponse_Body clone() => WalletResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalletResponse_Body copyWith(void Function(WalletResponse_Body) updates) => super.copyWith((message) => updates(message as WalletResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WalletResponse_Body create() => WalletResponse_Body._();
  WalletResponse_Body createEmptyInstance() => create();
  static $pb.PbList<WalletResponse_Body> createRepeated() => $pb.PbList<WalletResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static WalletResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletResponse_Body>(create);
  static WalletResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get balance => $_getSZ(2);
  @$pb.TagNumber(3)
  set balance($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBalance() => $_has(2);
  @$pb.TagNumber(3)
  void clearBalance() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get symbol => $_getSZ(3);
  @$pb.TagNumber(4)
  set symbol($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSymbol() => $_has(3);
  @$pb.TagNumber(4)
  void clearSymbol() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get assetPairId => $_getSZ(4);
  @$pb.TagNumber(5)
  set assetPairId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAssetPairId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAssetPairId() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get hideIfZero => $_getBF(5);
  @$pb.TagNumber(6)
  set hideIfZero($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHideIfZero() => $_has(5);
  @$pb.TagNumber(6)
  void clearHideIfZero() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get issuerId => $_getSZ(6);
  @$pb.TagNumber(7)
  set issuerId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIssuerId() => $_has(6);
  @$pb.TagNumber(7)
  void clearIssuerId() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get accuracy => $_getIZ(7);
  @$pb.TagNumber(8)
  set accuracy($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAccuracy() => $_has(7);
  @$pb.TagNumber(8)
  void clearAccuracy() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get categoryId => $_getSZ(8);
  @$pb.TagNumber(9)
  set categoryId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCategoryId() => $_has(8);
  @$pb.TagNumber(9)
  void clearCategoryId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get amountInBase => $_getSZ(9);
  @$pb.TagNumber(10)
  set amountInBase($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAmountInBase() => $_has(9);
  @$pb.TagNumber(10)
  void clearAmountInBase() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get reserved => $_getSZ(10);
  @$pb.TagNumber(11)
  set reserved($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasReserved() => $_has(10);
  @$pb.TagNumber(11)
  void clearReserved() => clearField(11);
}

enum WalletResponse_Result {
  body, 
  error, 
  notSet
}

class WalletResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, WalletResponse_Result> _WalletResponse_ResultByTag = {
    1 : WalletResponse_Result.body,
    2 : WalletResponse_Result.error,
    0 : WalletResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WalletResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<WalletResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: WalletResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  WalletResponse._() : super();
  factory WalletResponse() => create();
  factory WalletResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalletResponse clone() => WalletResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalletResponse copyWith(void Function(WalletResponse) updates) => super.copyWith((message) => updates(message as WalletResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WalletResponse create() => WalletResponse._();
  WalletResponse createEmptyInstance() => create();
  static $pb.PbList<WalletResponse> createRepeated() => $pb.PbList<WalletResponse>();
  @$core.pragma('dart2js:noInline')
  static WalletResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletResponse>(create);
  static WalletResponse _defaultInstance;

  WalletResponse_Result whichResult() => _WalletResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  WalletResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(WalletResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  WalletResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class SwiftCredentialsResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SwiftCredentialsResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bic')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountNumber', protoName: 'accountNumber')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountName', protoName: 'accountName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'purposeOfPayment', protoName: 'purposeOfPayment')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bankAddress', protoName: 'bankAddress')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'companyAddress', protoName: 'companyAddress')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'correspondentAccount', protoName: 'correspondentAccount')
    ..hasRequiredFields = false
  ;

  SwiftCredentialsResponse_Body._() : super();
  factory SwiftCredentialsResponse_Body() => create();
  factory SwiftCredentialsResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCredentialsResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SwiftCredentialsResponse_Body clone() => SwiftCredentialsResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SwiftCredentialsResponse_Body copyWith(void Function(SwiftCredentialsResponse_Body) updates) => super.copyWith((message) => updates(message as SwiftCredentialsResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCredentialsResponse_Body create() => SwiftCredentialsResponse_Body._();
  SwiftCredentialsResponse_Body createEmptyInstance() => create();
  static $pb.PbList<SwiftCredentialsResponse_Body> createRepeated() => $pb.PbList<SwiftCredentialsResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static SwiftCredentialsResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCredentialsResponse_Body>(create);
  static SwiftCredentialsResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bic => $_getSZ(0);
  @$pb.TagNumber(1)
  set bic($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBic() => $_has(0);
  @$pb.TagNumber(1)
  void clearBic() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountNumber($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountName => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountName() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get purposeOfPayment => $_getSZ(3);
  @$pb.TagNumber(4)
  set purposeOfPayment($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPurposeOfPayment() => $_has(3);
  @$pb.TagNumber(4)
  void clearPurposeOfPayment() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get bankAddress => $_getSZ(4);
  @$pb.TagNumber(5)
  set bankAddress($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBankAddress() => $_has(4);
  @$pb.TagNumber(5)
  void clearBankAddress() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get companyAddress => $_getSZ(5);
  @$pb.TagNumber(6)
  set companyAddress($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCompanyAddress() => $_has(5);
  @$pb.TagNumber(6)
  void clearCompanyAddress() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get correspondentAccount => $_getSZ(6);
  @$pb.TagNumber(7)
  set correspondentAccount($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCorrespondentAccount() => $_has(6);
  @$pb.TagNumber(7)
  void clearCorrespondentAccount() => clearField(7);
}

enum SwiftCredentialsResponse_Result {
  body, 
  error, 
  notSet
}

class SwiftCredentialsResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SwiftCredentialsResponse_Result> _SwiftCredentialsResponse_ResultByTag = {
    1 : SwiftCredentialsResponse_Result.body,
    2 : SwiftCredentialsResponse_Result.error,
    0 : SwiftCredentialsResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SwiftCredentialsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SwiftCredentialsResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: SwiftCredentialsResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  SwiftCredentialsResponse._() : super();
  factory SwiftCredentialsResponse() => create();
  factory SwiftCredentialsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCredentialsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SwiftCredentialsResponse clone() => SwiftCredentialsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SwiftCredentialsResponse copyWith(void Function(SwiftCredentialsResponse) updates) => super.copyWith((message) => updates(message as SwiftCredentialsResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCredentialsResponse create() => SwiftCredentialsResponse._();
  SwiftCredentialsResponse createEmptyInstance() => create();
  static $pb.PbList<SwiftCredentialsResponse> createRepeated() => $pb.PbList<SwiftCredentialsResponse>();
  @$core.pragma('dart2js:noInline')
  static SwiftCredentialsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCredentialsResponse>(create);
  static SwiftCredentialsResponse _defaultInstance;

  SwiftCredentialsResponse_Result whichResult() => _SwiftCredentialsResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SwiftCredentialsResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(SwiftCredentialsResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  SwiftCredentialsResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class CountryPhoneCodesResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CountryPhoneCodesResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'current')
    ..pc<Country>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countriesList', $pb.PbFieldType.PM, protoName: 'countriesList', subBuilder: Country.create)
    ..hasRequiredFields = false
  ;

  CountryPhoneCodesResponse_Body._() : super();
  factory CountryPhoneCodesResponse_Body() => create();
  factory CountryPhoneCodesResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CountryPhoneCodesResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CountryPhoneCodesResponse_Body clone() => CountryPhoneCodesResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CountryPhoneCodesResponse_Body copyWith(void Function(CountryPhoneCodesResponse_Body) updates) => super.copyWith((message) => updates(message as CountryPhoneCodesResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CountryPhoneCodesResponse_Body create() => CountryPhoneCodesResponse_Body._();
  CountryPhoneCodesResponse_Body createEmptyInstance() => create();
  static $pb.PbList<CountryPhoneCodesResponse_Body> createRepeated() => $pb.PbList<CountryPhoneCodesResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static CountryPhoneCodesResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CountryPhoneCodesResponse_Body>(create);
  static CountryPhoneCodesResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get current => $_getSZ(0);
  @$pb.TagNumber(1)
  set current($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCurrent() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrent() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Country> get countriesList => $_getList(1);
}

enum CountryPhoneCodesResponse_Result {
  body, 
  error, 
  notSet
}

class CountryPhoneCodesResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CountryPhoneCodesResponse_Result> _CountryPhoneCodesResponse_ResultByTag = {
    1 : CountryPhoneCodesResponse_Result.body,
    2 : CountryPhoneCodesResponse_Result.error,
    0 : CountryPhoneCodesResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CountryPhoneCodesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<CountryPhoneCodesResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: CountryPhoneCodesResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  CountryPhoneCodesResponse._() : super();
  factory CountryPhoneCodesResponse() => create();
  factory CountryPhoneCodesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CountryPhoneCodesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CountryPhoneCodesResponse clone() => CountryPhoneCodesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CountryPhoneCodesResponse copyWith(void Function(CountryPhoneCodesResponse) updates) => super.copyWith((message) => updates(message as CountryPhoneCodesResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CountryPhoneCodesResponse create() => CountryPhoneCodesResponse._();
  CountryPhoneCodesResponse createEmptyInstance() => create();
  static $pb.PbList<CountryPhoneCodesResponse> createRepeated() => $pb.PbList<CountryPhoneCodesResponse>();
  @$core.pragma('dart2js:noInline')
  static CountryPhoneCodesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CountryPhoneCodesResponse>(create);
  static CountryPhoneCodesResponse _defaultInstance;

  CountryPhoneCodesResponse_Result whichResult() => _CountryPhoneCodesResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CountryPhoneCodesResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(CountryPhoneCodesResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  CountryPhoneCodesResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class BankCardPaymentDetailsResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BankCardPaymentDetailsResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.OD)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'walletId', protoName: 'walletId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstName', protoName: 'firstName')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastName', protoName: 'lastName')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'city')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'zip')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'country')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'depositOption', protoName: 'depositOption')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'okUrl', protoName: 'okUrl')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failUrl', protoName: 'failUrl')
    ..hasRequiredFields = false
  ;

  BankCardPaymentDetailsResponse_Body._() : super();
  factory BankCardPaymentDetailsResponse_Body() => create();
  factory BankCardPaymentDetailsResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BankCardPaymentDetailsResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BankCardPaymentDetailsResponse_Body clone() => BankCardPaymentDetailsResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BankCardPaymentDetailsResponse_Body copyWith(void Function(BankCardPaymentDetailsResponse_Body) updates) => super.copyWith((message) => updates(message as BankCardPaymentDetailsResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BankCardPaymentDetailsResponse_Body create() => BankCardPaymentDetailsResponse_Body._();
  BankCardPaymentDetailsResponse_Body createEmptyInstance() => create();
  static $pb.PbList<BankCardPaymentDetailsResponse_Body> createRepeated() => $pb.PbList<BankCardPaymentDetailsResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static BankCardPaymentDetailsResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BankCardPaymentDetailsResponse_Body>(create);
  static BankCardPaymentDetailsResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get amount => $_getN(0);
  @$pb.TagNumber(1)
  set amount($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAmount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmount() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get assetId => $_getSZ(1);
  @$pb.TagNumber(2)
  set assetId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAssetId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssetId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get walletId => $_getSZ(2);
  @$pb.TagNumber(3)
  set walletId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWalletId() => $_has(2);
  @$pb.TagNumber(3)
  void clearWalletId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get firstName => $_getSZ(3);
  @$pb.TagNumber(4)
  set firstName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFirstName() => $_has(3);
  @$pb.TagNumber(4)
  void clearFirstName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get lastName => $_getSZ(4);
  @$pb.TagNumber(5)
  set lastName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLastName() => $_has(4);
  @$pb.TagNumber(5)
  void clearLastName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get city => $_getSZ(5);
  @$pb.TagNumber(6)
  set city($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCity() => $_has(5);
  @$pb.TagNumber(6)
  void clearCity() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get zip => $_getSZ(6);
  @$pb.TagNumber(7)
  set zip($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasZip() => $_has(6);
  @$pb.TagNumber(7)
  void clearZip() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get address => $_getSZ(7);
  @$pb.TagNumber(8)
  set address($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAddress() => $_has(7);
  @$pb.TagNumber(8)
  void clearAddress() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get country => $_getSZ(8);
  @$pb.TagNumber(9)
  set country($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCountry() => $_has(8);
  @$pb.TagNumber(9)
  void clearCountry() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get email => $_getSZ(9);
  @$pb.TagNumber(10)
  set email($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasEmail() => $_has(9);
  @$pb.TagNumber(10)
  void clearEmail() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get phone => $_getSZ(10);
  @$pb.TagNumber(11)
  set phone($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasPhone() => $_has(10);
  @$pb.TagNumber(11)
  void clearPhone() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get depositOption => $_getSZ(11);
  @$pb.TagNumber(12)
  set depositOption($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasDepositOption() => $_has(11);
  @$pb.TagNumber(12)
  void clearDepositOption() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get okUrl => $_getSZ(12);
  @$pb.TagNumber(13)
  set okUrl($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasOkUrl() => $_has(12);
  @$pb.TagNumber(13)
  void clearOkUrl() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get failUrl => $_getSZ(13);
  @$pb.TagNumber(14)
  set failUrl($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasFailUrl() => $_has(13);
  @$pb.TagNumber(14)
  void clearFailUrl() => clearField(14);
}

enum BankCardPaymentDetailsResponse_Result {
  body, 
  error, 
  notSet
}

class BankCardPaymentDetailsResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, BankCardPaymentDetailsResponse_Result> _BankCardPaymentDetailsResponse_ResultByTag = {
    1 : BankCardPaymentDetailsResponse_Result.body,
    2 : BankCardPaymentDetailsResponse_Result.error,
    0 : BankCardPaymentDetailsResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BankCardPaymentDetailsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<BankCardPaymentDetailsResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: BankCardPaymentDetailsResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  BankCardPaymentDetailsResponse._() : super();
  factory BankCardPaymentDetailsResponse() => create();
  factory BankCardPaymentDetailsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BankCardPaymentDetailsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BankCardPaymentDetailsResponse clone() => BankCardPaymentDetailsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BankCardPaymentDetailsResponse copyWith(void Function(BankCardPaymentDetailsResponse) updates) => super.copyWith((message) => updates(message as BankCardPaymentDetailsResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BankCardPaymentDetailsResponse create() => BankCardPaymentDetailsResponse._();
  BankCardPaymentDetailsResponse createEmptyInstance() => create();
  static $pb.PbList<BankCardPaymentDetailsResponse> createRepeated() => $pb.PbList<BankCardPaymentDetailsResponse>();
  @$core.pragma('dart2js:noInline')
  static BankCardPaymentDetailsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BankCardPaymentDetailsResponse>(create);
  static BankCardPaymentDetailsResponse _defaultInstance;

  BankCardPaymentDetailsResponse_Result whichResult() => _BankCardPaymentDetailsResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  BankCardPaymentDetailsResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(BankCardPaymentDetailsResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  BankCardPaymentDetailsResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class BankCardPaymentUrlResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BankCardPaymentUrlResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'okUrl', protoName: 'okUrl')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failUrl', protoName: 'failUrl')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reloadRegex', protoName: 'reloadRegex')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'urlsToFormatRegex', protoName: 'urlsToFormatRegex')
    ..hasRequiredFields = false
  ;

  BankCardPaymentUrlResponse_Body._() : super();
  factory BankCardPaymentUrlResponse_Body() => create();
  factory BankCardPaymentUrlResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BankCardPaymentUrlResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BankCardPaymentUrlResponse_Body clone() => BankCardPaymentUrlResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BankCardPaymentUrlResponse_Body copyWith(void Function(BankCardPaymentUrlResponse_Body) updates) => super.copyWith((message) => updates(message as BankCardPaymentUrlResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BankCardPaymentUrlResponse_Body create() => BankCardPaymentUrlResponse_Body._();
  BankCardPaymentUrlResponse_Body createEmptyInstance() => create();
  static $pb.PbList<BankCardPaymentUrlResponse_Body> createRepeated() => $pb.PbList<BankCardPaymentUrlResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static BankCardPaymentUrlResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BankCardPaymentUrlResponse_Body>(create);
  static BankCardPaymentUrlResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get okUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set okUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOkUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearOkUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get failUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set failUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFailUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearFailUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get reloadRegex => $_getSZ(3);
  @$pb.TagNumber(4)
  set reloadRegex($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReloadRegex() => $_has(3);
  @$pb.TagNumber(4)
  void clearReloadRegex() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get urlsToFormatRegex => $_getSZ(4);
  @$pb.TagNumber(5)
  set urlsToFormatRegex($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUrlsToFormatRegex() => $_has(4);
  @$pb.TagNumber(5)
  void clearUrlsToFormatRegex() => clearField(5);
}

enum BankCardPaymentUrlResponse_Result {
  body, 
  error, 
  notSet
}

class BankCardPaymentUrlResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, BankCardPaymentUrlResponse_Result> _BankCardPaymentUrlResponse_ResultByTag = {
    1 : BankCardPaymentUrlResponse_Result.body,
    2 : BankCardPaymentUrlResponse_Result.error,
    0 : BankCardPaymentUrlResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BankCardPaymentUrlResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<BankCardPaymentUrlResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: BankCardPaymentUrlResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  BankCardPaymentUrlResponse._() : super();
  factory BankCardPaymentUrlResponse() => create();
  factory BankCardPaymentUrlResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BankCardPaymentUrlResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BankCardPaymentUrlResponse clone() => BankCardPaymentUrlResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BankCardPaymentUrlResponse copyWith(void Function(BankCardPaymentUrlResponse) updates) => super.copyWith((message) => updates(message as BankCardPaymentUrlResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BankCardPaymentUrlResponse create() => BankCardPaymentUrlResponse._();
  BankCardPaymentUrlResponse createEmptyInstance() => create();
  static $pb.PbList<BankCardPaymentUrlResponse> createRepeated() => $pb.PbList<BankCardPaymentUrlResponse>();
  @$core.pragma('dart2js:noInline')
  static BankCardPaymentUrlResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BankCardPaymentUrlResponse>(create);
  static BankCardPaymentUrlResponse _defaultInstance;

  BankCardPaymentUrlResponse_Result whichResult() => _BankCardPaymentUrlResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  BankCardPaymentUrlResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(BankCardPaymentUrlResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  BankCardPaymentUrlResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class EthereumSettingsResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EthereumSettingsResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stepsCount', $pb.PbFieldType.O3, protoName: 'stepsCount')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ethAssetId', protoName: 'ethAssetId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stepGas', protoName: 'stepGas')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minGas', protoName: 'minGas')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxGas', protoName: 'maxGas')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minGasPrice', protoName: 'minGasPrice')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxGasPrice', protoName: 'maxGasPrice')
    ..aOM<EthereumSettingsResponse_BitcoinFee>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bitcoin', subBuilder: EthereumSettingsResponse_BitcoinFee.create)
    ..hasRequiredFields = false
  ;

  EthereumSettingsResponse_Body._() : super();
  factory EthereumSettingsResponse_Body() => create();
  factory EthereumSettingsResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthereumSettingsResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthereumSettingsResponse_Body clone() => EthereumSettingsResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthereumSettingsResponse_Body copyWith(void Function(EthereumSettingsResponse_Body) updates) => super.copyWith((message) => updates(message as EthereumSettingsResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EthereumSettingsResponse_Body create() => EthereumSettingsResponse_Body._();
  EthereumSettingsResponse_Body createEmptyInstance() => create();
  static $pb.PbList<EthereumSettingsResponse_Body> createRepeated() => $pb.PbList<EthereumSettingsResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static EthereumSettingsResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthereumSettingsResponse_Body>(create);
  static EthereumSettingsResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get stepsCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set stepsCount($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStepsCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearStepsCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ethAssetId => $_getSZ(1);
  @$pb.TagNumber(2)
  set ethAssetId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEthAssetId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEthAssetId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get stepGas => $_getSZ(2);
  @$pb.TagNumber(3)
  set stepGas($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStepGas() => $_has(2);
  @$pb.TagNumber(3)
  void clearStepGas() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get minGas => $_getSZ(3);
  @$pb.TagNumber(4)
  set minGas($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMinGas() => $_has(3);
  @$pb.TagNumber(4)
  void clearMinGas() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get maxGas => $_getSZ(4);
  @$pb.TagNumber(5)
  set maxGas($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMaxGas() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaxGas() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get minGasPrice => $_getSZ(5);
  @$pb.TagNumber(6)
  set minGasPrice($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMinGasPrice() => $_has(5);
  @$pb.TagNumber(6)
  void clearMinGasPrice() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get maxGasPrice => $_getSZ(6);
  @$pb.TagNumber(7)
  set maxGasPrice($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMaxGasPrice() => $_has(6);
  @$pb.TagNumber(7)
  void clearMaxGasPrice() => clearField(7);

  @$pb.TagNumber(8)
  EthereumSettingsResponse_BitcoinFee get bitcoin => $_getN(7);
  @$pb.TagNumber(8)
  set bitcoin(EthereumSettingsResponse_BitcoinFee v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasBitcoin() => $_has(7);
  @$pb.TagNumber(8)
  void clearBitcoin() => clearField(8);
  @$pb.TagNumber(8)
  EthereumSettingsResponse_BitcoinFee ensureBitcoin() => $_ensure(7);
}

class EthereumSettingsResponse_BitcoinFee extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EthereumSettingsResponse.BitcoinFee', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minFee', protoName: 'minFee')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxFee', protoName: 'maxFee')
    ..hasRequiredFields = false
  ;

  EthereumSettingsResponse_BitcoinFee._() : super();
  factory EthereumSettingsResponse_BitcoinFee() => create();
  factory EthereumSettingsResponse_BitcoinFee.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthereumSettingsResponse_BitcoinFee.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthereumSettingsResponse_BitcoinFee clone() => EthereumSettingsResponse_BitcoinFee()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthereumSettingsResponse_BitcoinFee copyWith(void Function(EthereumSettingsResponse_BitcoinFee) updates) => super.copyWith((message) => updates(message as EthereumSettingsResponse_BitcoinFee)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EthereumSettingsResponse_BitcoinFee create() => EthereumSettingsResponse_BitcoinFee._();
  EthereumSettingsResponse_BitcoinFee createEmptyInstance() => create();
  static $pb.PbList<EthereumSettingsResponse_BitcoinFee> createRepeated() => $pb.PbList<EthereumSettingsResponse_BitcoinFee>();
  @$core.pragma('dart2js:noInline')
  static EthereumSettingsResponse_BitcoinFee getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthereumSettingsResponse_BitcoinFee>(create);
  static EthereumSettingsResponse_BitcoinFee _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get minFee => $_getSZ(0);
  @$pb.TagNumber(1)
  set minFee($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMinFee() => $_has(0);
  @$pb.TagNumber(1)
  void clearMinFee() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get maxFee => $_getSZ(1);
  @$pb.TagNumber(2)
  set maxFee($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMaxFee() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxFee() => clearField(2);
}

enum EthereumSettingsResponse_Result {
  body, 
  error, 
  notSet
}

class EthereumSettingsResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, EthereumSettingsResponse_Result> _EthereumSettingsResponse_ResultByTag = {
    1 : EthereumSettingsResponse_Result.body,
    2 : EthereumSettingsResponse_Result.error,
    0 : EthereumSettingsResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EthereumSettingsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<EthereumSettingsResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: EthereumSettingsResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  EthereumSettingsResponse._() : super();
  factory EthereumSettingsResponse() => create();
  factory EthereumSettingsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthereumSettingsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthereumSettingsResponse clone() => EthereumSettingsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthereumSettingsResponse copyWith(void Function(EthereumSettingsResponse) updates) => super.copyWith((message) => updates(message as EthereumSettingsResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EthereumSettingsResponse create() => EthereumSettingsResponse._();
  EthereumSettingsResponse createEmptyInstance() => create();
  static $pb.PbList<EthereumSettingsResponse> createRepeated() => $pb.PbList<EthereumSettingsResponse>();
  @$core.pragma('dart2js:noInline')
  static EthereumSettingsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthereumSettingsResponse>(create);
  static EthereumSettingsResponse _defaultInstance;

  EthereumSettingsResponse_Result whichResult() => _EthereumSettingsResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  EthereumSettingsResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(EthereumSettingsResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  EthereumSettingsResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class CheckCryptoAddressResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CheckCryptoAddressResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isValid', protoName: 'isValid')
    ..hasRequiredFields = false
  ;

  CheckCryptoAddressResponse_Body._() : super();
  factory CheckCryptoAddressResponse_Body() => create();
  factory CheckCryptoAddressResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckCryptoAddressResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckCryptoAddressResponse_Body clone() => CheckCryptoAddressResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckCryptoAddressResponse_Body copyWith(void Function(CheckCryptoAddressResponse_Body) updates) => super.copyWith((message) => updates(message as CheckCryptoAddressResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckCryptoAddressResponse_Body create() => CheckCryptoAddressResponse_Body._();
  CheckCryptoAddressResponse_Body createEmptyInstance() => create();
  static $pb.PbList<CheckCryptoAddressResponse_Body> createRepeated() => $pb.PbList<CheckCryptoAddressResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static CheckCryptoAddressResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckCryptoAddressResponse_Body>(create);
  static CheckCryptoAddressResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isValid => $_getBF(0);
  @$pb.TagNumber(1)
  set isValid($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsValid() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsValid() => clearField(1);
}

enum CheckCryptoAddressResponse_Result {
  body, 
  error, 
  notSet
}

class CheckCryptoAddressResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CheckCryptoAddressResponse_Result> _CheckCryptoAddressResponse_ResultByTag = {
    1 : CheckCryptoAddressResponse_Result.body,
    2 : CheckCryptoAddressResponse_Result.error,
    0 : CheckCryptoAddressResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CheckCryptoAddressResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<CheckCryptoAddressResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: CheckCryptoAddressResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  CheckCryptoAddressResponse._() : super();
  factory CheckCryptoAddressResponse() => create();
  factory CheckCryptoAddressResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckCryptoAddressResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckCryptoAddressResponse clone() => CheckCryptoAddressResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckCryptoAddressResponse copyWith(void Function(CheckCryptoAddressResponse) updates) => super.copyWith((message) => updates(message as CheckCryptoAddressResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckCryptoAddressResponse create() => CheckCryptoAddressResponse._();
  CheckCryptoAddressResponse createEmptyInstance() => create();
  static $pb.PbList<CheckCryptoAddressResponse> createRepeated() => $pb.PbList<CheckCryptoAddressResponse>();
  @$core.pragma('dart2js:noInline')
  static CheckCryptoAddressResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckCryptoAddressResponse>(create);
  static CheckCryptoAddressResponse _defaultInstance;

  CheckCryptoAddressResponse_Result whichResult() => _CheckCryptoAddressResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CheckCryptoAddressResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(CheckCryptoAddressResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  CheckCryptoAddressResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class CryptoDepositAddressResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CryptoDepositAddressResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tag')
    ..hasRequiredFields = false
  ;

  CryptoDepositAddressResponse_Body._() : super();
  factory CryptoDepositAddressResponse_Body() => create();
  factory CryptoDepositAddressResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CryptoDepositAddressResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CryptoDepositAddressResponse_Body clone() => CryptoDepositAddressResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CryptoDepositAddressResponse_Body copyWith(void Function(CryptoDepositAddressResponse_Body) updates) => super.copyWith((message) => updates(message as CryptoDepositAddressResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CryptoDepositAddressResponse_Body create() => CryptoDepositAddressResponse_Body._();
  CryptoDepositAddressResponse_Body createEmptyInstance() => create();
  static $pb.PbList<CryptoDepositAddressResponse_Body> createRepeated() => $pb.PbList<CryptoDepositAddressResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static CryptoDepositAddressResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CryptoDepositAddressResponse_Body>(create);
  static CryptoDepositAddressResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get tag => $_getSZ(1);
  @$pb.TagNumber(2)
  set tag($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTag() => $_has(1);
  @$pb.TagNumber(2)
  void clearTag() => clearField(2);
}

enum CryptoDepositAddressResponse_Result {
  body, 
  error, 
  notSet
}

class CryptoDepositAddressResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CryptoDepositAddressResponse_Result> _CryptoDepositAddressResponse_ResultByTag = {
    1 : CryptoDepositAddressResponse_Result.body,
    2 : CryptoDepositAddressResponse_Result.error,
    0 : CryptoDepositAddressResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CryptoDepositAddressResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<CryptoDepositAddressResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: CryptoDepositAddressResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  CryptoDepositAddressResponse._() : super();
  factory CryptoDepositAddressResponse() => create();
  factory CryptoDepositAddressResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CryptoDepositAddressResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CryptoDepositAddressResponse clone() => CryptoDepositAddressResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CryptoDepositAddressResponse copyWith(void Function(CryptoDepositAddressResponse) updates) => super.copyWith((message) => updates(message as CryptoDepositAddressResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CryptoDepositAddressResponse create() => CryptoDepositAddressResponse._();
  CryptoDepositAddressResponse createEmptyInstance() => create();
  static $pb.PbList<CryptoDepositAddressResponse> createRepeated() => $pb.PbList<CryptoDepositAddressResponse>();
  @$core.pragma('dart2js:noInline')
  static CryptoDepositAddressResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CryptoDepositAddressResponse>(create);
  static CryptoDepositAddressResponse _defaultInstance;

  CryptoDepositAddressResponse_Result whichResult() => _CryptoDepositAddressResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CryptoDepositAddressResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(CryptoDepositAddressResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  CryptoDepositAddressResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class WithdrawalCryptoInfoResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WithdrawalCryptoInfoResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'baseAddressTitle', protoName: 'baseAddressTitle')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressExtensionMandatory', protoName: 'addressExtensionMandatory')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressExtensionTitle', protoName: 'addressExtensionTitle')
    ..hasRequiredFields = false
  ;

  WithdrawalCryptoInfoResponse_Body._() : super();
  factory WithdrawalCryptoInfoResponse_Body() => create();
  factory WithdrawalCryptoInfoResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithdrawalCryptoInfoResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WithdrawalCryptoInfoResponse_Body clone() => WithdrawalCryptoInfoResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WithdrawalCryptoInfoResponse_Body copyWith(void Function(WithdrawalCryptoInfoResponse_Body) updates) => super.copyWith((message) => updates(message as WithdrawalCryptoInfoResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WithdrawalCryptoInfoResponse_Body create() => WithdrawalCryptoInfoResponse_Body._();
  WithdrawalCryptoInfoResponse_Body createEmptyInstance() => create();
  static $pb.PbList<WithdrawalCryptoInfoResponse_Body> createRepeated() => $pb.PbList<WithdrawalCryptoInfoResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static WithdrawalCryptoInfoResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithdrawalCryptoInfoResponse_Body>(create);
  static WithdrawalCryptoInfoResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get baseAddressTitle => $_getSZ(0);
  @$pb.TagNumber(1)
  set baseAddressTitle($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBaseAddressTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearBaseAddressTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get addressExtensionMandatory => $_getBF(1);
  @$pb.TagNumber(2)
  set addressExtensionMandatory($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddressExtensionMandatory() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddressExtensionMandatory() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get addressExtensionTitle => $_getSZ(2);
  @$pb.TagNumber(3)
  set addressExtensionTitle($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddressExtensionTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddressExtensionTitle() => clearField(3);
}

enum WithdrawalCryptoInfoResponse_Result {
  body, 
  error, 
  notSet
}

class WithdrawalCryptoInfoResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, WithdrawalCryptoInfoResponse_Result> _WithdrawalCryptoInfoResponse_ResultByTag = {
    1 : WithdrawalCryptoInfoResponse_Result.body,
    2 : WithdrawalCryptoInfoResponse_Result.error,
    0 : WithdrawalCryptoInfoResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WithdrawalCryptoInfoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<WithdrawalCryptoInfoResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: WithdrawalCryptoInfoResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  WithdrawalCryptoInfoResponse._() : super();
  factory WithdrawalCryptoInfoResponse() => create();
  factory WithdrawalCryptoInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithdrawalCryptoInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WithdrawalCryptoInfoResponse clone() => WithdrawalCryptoInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WithdrawalCryptoInfoResponse copyWith(void Function(WithdrawalCryptoInfoResponse) updates) => super.copyWith((message) => updates(message as WithdrawalCryptoInfoResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WithdrawalCryptoInfoResponse create() => WithdrawalCryptoInfoResponse._();
  WithdrawalCryptoInfoResponse createEmptyInstance() => create();
  static $pb.PbList<WithdrawalCryptoInfoResponse> createRepeated() => $pb.PbList<WithdrawalCryptoInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static WithdrawalCryptoInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithdrawalCryptoInfoResponse>(create);
  static WithdrawalCryptoInfoResponse _defaultInstance;

  WithdrawalCryptoInfoResponse_Result whichResult() => _WithdrawalCryptoInfoResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  WithdrawalCryptoInfoResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(WithdrawalCryptoInfoResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  WithdrawalCryptoInfoResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class SwiftCashoutInfoResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SwiftCashoutInfoResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bic')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accNumber', protoName: 'accNumber')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accName', protoName: 'accName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bankName', protoName: 'bankName')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accHolderAddress', protoName: 'accHolderAddress')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accHolderCity', protoName: 'accHolderCity')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accHolderCountry', protoName: 'accHolderCountry')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accHolderZipCode', protoName: 'accHolderZipCode')
    ..hasRequiredFields = false
  ;

  SwiftCashoutInfoResponse_Body._() : super();
  factory SwiftCashoutInfoResponse_Body() => create();
  factory SwiftCashoutInfoResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCashoutInfoResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SwiftCashoutInfoResponse_Body clone() => SwiftCashoutInfoResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SwiftCashoutInfoResponse_Body copyWith(void Function(SwiftCashoutInfoResponse_Body) updates) => super.copyWith((message) => updates(message as SwiftCashoutInfoResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutInfoResponse_Body create() => SwiftCashoutInfoResponse_Body._();
  SwiftCashoutInfoResponse_Body createEmptyInstance() => create();
  static $pb.PbList<SwiftCashoutInfoResponse_Body> createRepeated() => $pb.PbList<SwiftCashoutInfoResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutInfoResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCashoutInfoResponse_Body>(create);
  static SwiftCashoutInfoResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bic => $_getSZ(0);
  @$pb.TagNumber(1)
  set bic($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBic() => $_has(0);
  @$pb.TagNumber(1)
  void clearBic() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set accNumber($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accName => $_getSZ(2);
  @$pb.TagNumber(3)
  set accName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccName() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get bankName => $_getSZ(3);
  @$pb.TagNumber(4)
  set bankName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBankName() => $_has(3);
  @$pb.TagNumber(4)
  void clearBankName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get accHolderAddress => $_getSZ(4);
  @$pb.TagNumber(5)
  set accHolderAddress($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAccHolderAddress() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccHolderAddress() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get accHolderCity => $_getSZ(5);
  @$pb.TagNumber(6)
  set accHolderCity($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAccHolderCity() => $_has(5);
  @$pb.TagNumber(6)
  void clearAccHolderCity() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get accHolderCountry => $_getSZ(6);
  @$pb.TagNumber(7)
  set accHolderCountry($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAccHolderCountry() => $_has(6);
  @$pb.TagNumber(7)
  void clearAccHolderCountry() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get accHolderZipCode => $_getSZ(7);
  @$pb.TagNumber(8)
  set accHolderZipCode($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAccHolderZipCode() => $_has(7);
  @$pb.TagNumber(8)
  void clearAccHolderZipCode() => clearField(8);
}

enum SwiftCashoutInfoResponse_Result {
  body, 
  error, 
  notSet
}

class SwiftCashoutInfoResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SwiftCashoutInfoResponse_Result> _SwiftCashoutInfoResponse_ResultByTag = {
    1 : SwiftCashoutInfoResponse_Result.body,
    2 : SwiftCashoutInfoResponse_Result.error,
    0 : SwiftCashoutInfoResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SwiftCashoutInfoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SwiftCashoutInfoResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: SwiftCashoutInfoResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  SwiftCashoutInfoResponse._() : super();
  factory SwiftCashoutInfoResponse() => create();
  factory SwiftCashoutInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCashoutInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SwiftCashoutInfoResponse clone() => SwiftCashoutInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SwiftCashoutInfoResponse copyWith(void Function(SwiftCashoutInfoResponse) updates) => super.copyWith((message) => updates(message as SwiftCashoutInfoResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutInfoResponse create() => SwiftCashoutInfoResponse._();
  SwiftCashoutInfoResponse createEmptyInstance() => create();
  static $pb.PbList<SwiftCashoutInfoResponse> createRepeated() => $pb.PbList<SwiftCashoutInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCashoutInfoResponse>(create);
  static SwiftCashoutInfoResponse _defaultInstance;

  SwiftCashoutInfoResponse_Result whichResult() => _SwiftCashoutInfoResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SwiftCashoutInfoResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(SwiftCashoutInfoResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  SwiftCashoutInfoResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class SwiftCashoutResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SwiftCashoutResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transferId', protoName: 'transferId')
    ..hasRequiredFields = false
  ;

  SwiftCashoutResponse_Body._() : super();
  factory SwiftCashoutResponse_Body() => create();
  factory SwiftCashoutResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCashoutResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SwiftCashoutResponse_Body clone() => SwiftCashoutResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SwiftCashoutResponse_Body copyWith(void Function(SwiftCashoutResponse_Body) updates) => super.copyWith((message) => updates(message as SwiftCashoutResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutResponse_Body create() => SwiftCashoutResponse_Body._();
  SwiftCashoutResponse_Body createEmptyInstance() => create();
  static $pb.PbList<SwiftCashoutResponse_Body> createRepeated() => $pb.PbList<SwiftCashoutResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCashoutResponse_Body>(create);
  static SwiftCashoutResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get transferId => $_getSZ(0);
  @$pb.TagNumber(1)
  set transferId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTransferId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransferId() => clearField(1);
}

enum SwiftCashoutResponse_Result {
  body, 
  error, 
  notSet
}

class SwiftCashoutResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SwiftCashoutResponse_Result> _SwiftCashoutResponse_ResultByTag = {
    1 : SwiftCashoutResponse_Result.body,
    2 : SwiftCashoutResponse_Result.error,
    0 : SwiftCashoutResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SwiftCashoutResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SwiftCashoutResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: SwiftCashoutResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  SwiftCashoutResponse._() : super();
  factory SwiftCashoutResponse() => create();
  factory SwiftCashoutResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCashoutResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SwiftCashoutResponse clone() => SwiftCashoutResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SwiftCashoutResponse copyWith(void Function(SwiftCashoutResponse) updates) => super.copyWith((message) => updates(message as SwiftCashoutResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutResponse create() => SwiftCashoutResponse._();
  SwiftCashoutResponse createEmptyInstance() => create();
  static $pb.PbList<SwiftCashoutResponse> createRepeated() => $pb.PbList<SwiftCashoutResponse>();
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCashoutResponse>(create);
  static SwiftCashoutResponse _defaultInstance;

  SwiftCashoutResponse_Result whichResult() => _SwiftCashoutResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SwiftCashoutResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(SwiftCashoutResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  SwiftCashoutResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class AppSettingsResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppSettingsResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RateRefreshPeriod', $pb.PbFieldType.O3, protoName: 'RateRefreshPeriod')
    ..aOM<AppSettingsResponse_ApiAsset>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BaseAsset', protoName: 'BaseAsset', subBuilder: AppSettingsResponse_ApiAsset.create)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signOrder', protoName: 'signOrder')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DepositUrl', protoName: 'DepositUrl')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DebugMode', protoName: 'DebugMode')
    ..aOM<AppSettingsResponse_ApiRefundSettings>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RefundSettings', protoName: 'RefundSettings', subBuilder: AppSettingsResponse_ApiRefundSettings.create)
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MarketOrderPriceDeviation', $pb.PbFieldType.OD, protoName: 'MarketOrderPriceDeviation')
    ..aOM<AppSettingsResponse_ApiFeeSettings>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FeeSettings', protoName: 'FeeSettings', subBuilder: AppSettingsResponse_ApiFeeSettings.create)
    ..hasRequiredFields = false
  ;

  AppSettingsResponse_Body._() : super();
  factory AppSettingsResponse_Body() => create();
  factory AppSettingsResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppSettingsResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppSettingsResponse_Body clone() => AppSettingsResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppSettingsResponse_Body copyWith(void Function(AppSettingsResponse_Body) updates) => super.copyWith((message) => updates(message as AppSettingsResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppSettingsResponse_Body create() => AppSettingsResponse_Body._();
  AppSettingsResponse_Body createEmptyInstance() => create();
  static $pb.PbList<AppSettingsResponse_Body> createRepeated() => $pb.PbList<AppSettingsResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static AppSettingsResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppSettingsResponse_Body>(create);
  static AppSettingsResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rateRefreshPeriod => $_getIZ(0);
  @$pb.TagNumber(1)
  set rateRefreshPeriod($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRateRefreshPeriod() => $_has(0);
  @$pb.TagNumber(1)
  void clearRateRefreshPeriod() => clearField(1);

  @$pb.TagNumber(2)
  AppSettingsResponse_ApiAsset get baseAsset => $_getN(1);
  @$pb.TagNumber(2)
  set baseAsset(AppSettingsResponse_ApiAsset v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBaseAsset() => $_has(1);
  @$pb.TagNumber(2)
  void clearBaseAsset() => clearField(2);
  @$pb.TagNumber(2)
  AppSettingsResponse_ApiAsset ensureBaseAsset() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get signOrder => $_getBF(2);
  @$pb.TagNumber(3)
  set signOrder($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSignOrder() => $_has(2);
  @$pb.TagNumber(3)
  void clearSignOrder() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get depositUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set depositUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDepositUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearDepositUrl() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get debugMode => $_getBF(4);
  @$pb.TagNumber(5)
  set debugMode($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDebugMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearDebugMode() => clearField(5);

  @$pb.TagNumber(6)
  AppSettingsResponse_ApiRefundSettings get refundSettings => $_getN(5);
  @$pb.TagNumber(6)
  set refundSettings(AppSettingsResponse_ApiRefundSettings v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasRefundSettings() => $_has(5);
  @$pb.TagNumber(6)
  void clearRefundSettings() => clearField(6);
  @$pb.TagNumber(6)
  AppSettingsResponse_ApiRefundSettings ensureRefundSettings() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.double get marketOrderPriceDeviation => $_getN(6);
  @$pb.TagNumber(7)
  set marketOrderPriceDeviation($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMarketOrderPriceDeviation() => $_has(6);
  @$pb.TagNumber(7)
  void clearMarketOrderPriceDeviation() => clearField(7);

  @$pb.TagNumber(8)
  AppSettingsResponse_ApiFeeSettings get feeSettings => $_getN(7);
  @$pb.TagNumber(8)
  set feeSettings(AppSettingsResponse_ApiFeeSettings v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasFeeSettings() => $_has(7);
  @$pb.TagNumber(8)
  void clearFeeSettings() => clearField(8);
  @$pb.TagNumber(8)
  AppSettingsResponse_ApiFeeSettings ensureFeeSettings() => $_ensure(7);
}

class AppSettingsResponse_ApiAsset extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppSettingsResponse.ApiAsset', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accuracy', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hideWithdraw', protoName: 'hideWithdraw')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hideDeposit', protoName: 'hideDeposit')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kycNeeded', protoName: 'kycNeeded')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bankCardsDepositEnabled', protoName: 'bankCardsDepositEnabled')
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'swiftDepositEnabled', protoName: 'swiftDepositEnabled')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockchainDepositEnabled', protoName: 'blockchainDepositEnabled')
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'otherDepositOptionsEnabled', protoName: 'otherDepositOptionsEnabled')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'categoryId', protoName: 'categoryId')
    ..hasRequiredFields = false
  ;

  AppSettingsResponse_ApiAsset._() : super();
  factory AppSettingsResponse_ApiAsset() => create();
  factory AppSettingsResponse_ApiAsset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppSettingsResponse_ApiAsset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppSettingsResponse_ApiAsset clone() => AppSettingsResponse_ApiAsset()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppSettingsResponse_ApiAsset copyWith(void Function(AppSettingsResponse_ApiAsset) updates) => super.copyWith((message) => updates(message as AppSettingsResponse_ApiAsset)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppSettingsResponse_ApiAsset create() => AppSettingsResponse_ApiAsset._();
  AppSettingsResponse_ApiAsset createEmptyInstance() => create();
  static $pb.PbList<AppSettingsResponse_ApiAsset> createRepeated() => $pb.PbList<AppSettingsResponse_ApiAsset>();
  @$core.pragma('dart2js:noInline')
  static AppSettingsResponse_ApiAsset getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppSettingsResponse_ApiAsset>(create);
  static AppSettingsResponse_ApiAsset _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get accuracy => $_getIZ(2);
  @$pb.TagNumber(3)
  set accuracy($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccuracy() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccuracy() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get symbol => $_getSZ(3);
  @$pb.TagNumber(4)
  set symbol($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSymbol() => $_has(3);
  @$pb.TagNumber(4)
  void clearSymbol() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get hideWithdraw => $_getBF(4);
  @$pb.TagNumber(5)
  set hideWithdraw($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHideWithdraw() => $_has(4);
  @$pb.TagNumber(5)
  void clearHideWithdraw() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get hideDeposit => $_getBF(5);
  @$pb.TagNumber(6)
  set hideDeposit($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHideDeposit() => $_has(5);
  @$pb.TagNumber(6)
  void clearHideDeposit() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get kycNeeded => $_getBF(6);
  @$pb.TagNumber(7)
  set kycNeeded($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasKycNeeded() => $_has(6);
  @$pb.TagNumber(7)
  void clearKycNeeded() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get bankCardsDepositEnabled => $_getBF(7);
  @$pb.TagNumber(8)
  set bankCardsDepositEnabled($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBankCardsDepositEnabled() => $_has(7);
  @$pb.TagNumber(8)
  void clearBankCardsDepositEnabled() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get swiftDepositEnabled => $_getBF(8);
  @$pb.TagNumber(9)
  set swiftDepositEnabled($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSwiftDepositEnabled() => $_has(8);
  @$pb.TagNumber(9)
  void clearSwiftDepositEnabled() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get blockchainDepositEnabled => $_getBF(9);
  @$pb.TagNumber(10)
  set blockchainDepositEnabled($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBlockchainDepositEnabled() => $_has(9);
  @$pb.TagNumber(10)
  void clearBlockchainDepositEnabled() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get otherDepositOptionsEnabled => $_getBF(10);
  @$pb.TagNumber(11)
  set otherDepositOptionsEnabled($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasOtherDepositOptionsEnabled() => $_has(10);
  @$pb.TagNumber(11)
  void clearOtherDepositOptionsEnabled() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get categoryId => $_getSZ(11);
  @$pb.TagNumber(12)
  set categoryId($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasCategoryId() => $_has(11);
  @$pb.TagNumber(12)
  void clearCategoryId() => clearField(12);
}

class AppSettingsResponse_ApiRefundSettings extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppSettingsResponse.ApiRefundSettings', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..hasRequiredFields = false
  ;

  AppSettingsResponse_ApiRefundSettings._() : super();
  factory AppSettingsResponse_ApiRefundSettings() => create();
  factory AppSettingsResponse_ApiRefundSettings.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppSettingsResponse_ApiRefundSettings.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppSettingsResponse_ApiRefundSettings clone() => AppSettingsResponse_ApiRefundSettings()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppSettingsResponse_ApiRefundSettings copyWith(void Function(AppSettingsResponse_ApiRefundSettings) updates) => super.copyWith((message) => updates(message as AppSettingsResponse_ApiRefundSettings)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppSettingsResponse_ApiRefundSettings create() => AppSettingsResponse_ApiRefundSettings._();
  AppSettingsResponse_ApiRefundSettings createEmptyInstance() => create();
  static $pb.PbList<AppSettingsResponse_ApiRefundSettings> createRepeated() => $pb.PbList<AppSettingsResponse_ApiRefundSettings>();
  @$core.pragma('dart2js:noInline')
  static AppSettingsResponse_ApiRefundSettings getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppSettingsResponse_ApiRefundSettings>(create);
  static AppSettingsResponse_ApiRefundSettings _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

class AppSettingsResponse_ApiFeeSettings extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppSettingsResponse.ApiFeeSettings', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BankCardsFeeSizePercentage', $pb.PbFieldType.OD, protoName: 'BankCardsFeeSizePercentage')
    ..pc<CashOutFee>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CashOut', $pb.PbFieldType.PM, protoName: 'CashOut', subBuilder: CashOutFee.create)
    ..hasRequiredFields = false
  ;

  AppSettingsResponse_ApiFeeSettings._() : super();
  factory AppSettingsResponse_ApiFeeSettings() => create();
  factory AppSettingsResponse_ApiFeeSettings.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppSettingsResponse_ApiFeeSettings.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppSettingsResponse_ApiFeeSettings clone() => AppSettingsResponse_ApiFeeSettings()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppSettingsResponse_ApiFeeSettings copyWith(void Function(AppSettingsResponse_ApiFeeSettings) updates) => super.copyWith((message) => updates(message as AppSettingsResponse_ApiFeeSettings)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppSettingsResponse_ApiFeeSettings create() => AppSettingsResponse_ApiFeeSettings._();
  AppSettingsResponse_ApiFeeSettings createEmptyInstance() => create();
  static $pb.PbList<AppSettingsResponse_ApiFeeSettings> createRepeated() => $pb.PbList<AppSettingsResponse_ApiFeeSettings>();
  @$core.pragma('dart2js:noInline')
  static AppSettingsResponse_ApiFeeSettings getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppSettingsResponse_ApiFeeSettings>(create);
  static AppSettingsResponse_ApiFeeSettings _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get bankCardsFeeSizePercentage => $_getN(0);
  @$pb.TagNumber(1)
  set bankCardsFeeSizePercentage($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBankCardsFeeSizePercentage() => $_has(0);
  @$pb.TagNumber(1)
  void clearBankCardsFeeSizePercentage() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<CashOutFee> get cashOut => $_getList(1);
}

enum AppSettingsResponse_Result {
  body, 
  error, 
  notSet
}

class AppSettingsResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, AppSettingsResponse_Result> _AppSettingsResponse_ResultByTag = {
    1 : AppSettingsResponse_Result.body,
    2 : AppSettingsResponse_Result.error,
    0 : AppSettingsResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppSettingsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<AppSettingsResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: AppSettingsResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  AppSettingsResponse._() : super();
  factory AppSettingsResponse() => create();
  factory AppSettingsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppSettingsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppSettingsResponse clone() => AppSettingsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppSettingsResponse copyWith(void Function(AppSettingsResponse) updates) => super.copyWith((message) => updates(message as AppSettingsResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppSettingsResponse create() => AppSettingsResponse._();
  AppSettingsResponse createEmptyInstance() => create();
  static $pb.PbList<AppSettingsResponse> createRepeated() => $pb.PbList<AppSettingsResponse>();
  @$core.pragma('dart2js:noInline')
  static AppSettingsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppSettingsResponse>(create);
  static AppSettingsResponse _defaultInstance;

  AppSettingsResponse_Result whichResult() => _AppSettingsResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AppSettingsResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(AppSettingsResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  AppSettingsResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class PrivateWalletsResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PrivateWalletsResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pc<PrivateWallet>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wallets', $pb.PbFieldType.PM, subBuilder: PrivateWallet.create)
    ..hasRequiredFields = false
  ;

  PrivateWalletsResponse_Body._() : super();
  factory PrivateWalletsResponse_Body() => create();
  factory PrivateWalletsResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrivateWalletsResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrivateWalletsResponse_Body clone() => PrivateWalletsResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrivateWalletsResponse_Body copyWith(void Function(PrivateWalletsResponse_Body) updates) => super.copyWith((message) => updates(message as PrivateWalletsResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PrivateWalletsResponse_Body create() => PrivateWalletsResponse_Body._();
  PrivateWalletsResponse_Body createEmptyInstance() => create();
  static $pb.PbList<PrivateWalletsResponse_Body> createRepeated() => $pb.PbList<PrivateWalletsResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static PrivateWalletsResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrivateWalletsResponse_Body>(create);
  static PrivateWalletsResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PrivateWallet> get wallets => $_getList(0);
}

enum PrivateWalletsResponse_Result {
  body, 
  error, 
  notSet
}

class PrivateWalletsResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PrivateWalletsResponse_Result> _PrivateWalletsResponse_ResultByTag = {
    1 : PrivateWalletsResponse_Result.body,
    2 : PrivateWalletsResponse_Result.error,
    0 : PrivateWalletsResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PrivateWalletsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<PrivateWalletsResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: PrivateWalletsResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  PrivateWalletsResponse._() : super();
  factory PrivateWalletsResponse() => create();
  factory PrivateWalletsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrivateWalletsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrivateWalletsResponse clone() => PrivateWalletsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrivateWalletsResponse copyWith(void Function(PrivateWalletsResponse) updates) => super.copyWith((message) => updates(message as PrivateWalletsResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PrivateWalletsResponse create() => PrivateWalletsResponse._();
  PrivateWalletsResponse createEmptyInstance() => create();
  static $pb.PbList<PrivateWalletsResponse> createRepeated() => $pb.PbList<PrivateWalletsResponse>();
  @$core.pragma('dart2js:noInline')
  static PrivateWalletsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrivateWalletsResponse>(create);
  static PrivateWalletsResponse _defaultInstance;

  PrivateWalletsResponse_Result whichResult() => _PrivateWalletsResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PrivateWalletsResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(PrivateWalletsResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  PrivateWalletsResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class AssetDisclaimersResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssetDisclaimersResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pc<AssetDisclaimer>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disclaimers', $pb.PbFieldType.PM, subBuilder: AssetDisclaimer.create)
    ..hasRequiredFields = false
  ;

  AssetDisclaimersResponse_Body._() : super();
  factory AssetDisclaimersResponse_Body() => create();
  factory AssetDisclaimersResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetDisclaimersResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssetDisclaimersResponse_Body clone() => AssetDisclaimersResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssetDisclaimersResponse_Body copyWith(void Function(AssetDisclaimersResponse_Body) updates) => super.copyWith((message) => updates(message as AssetDisclaimersResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetDisclaimersResponse_Body create() => AssetDisclaimersResponse_Body._();
  AssetDisclaimersResponse_Body createEmptyInstance() => create();
  static $pb.PbList<AssetDisclaimersResponse_Body> createRepeated() => $pb.PbList<AssetDisclaimersResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static AssetDisclaimersResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetDisclaimersResponse_Body>(create);
  static AssetDisclaimersResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AssetDisclaimer> get disclaimers => $_getList(0);
}

enum AssetDisclaimersResponse_Result {
  body, 
  error, 
  notSet
}

class AssetDisclaimersResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, AssetDisclaimersResponse_Result> _AssetDisclaimersResponse_ResultByTag = {
    1 : AssetDisclaimersResponse_Result.body,
    2 : AssetDisclaimersResponse_Result.error,
    0 : AssetDisclaimersResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssetDisclaimersResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<AssetDisclaimersResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: AssetDisclaimersResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  AssetDisclaimersResponse._() : super();
  factory AssetDisclaimersResponse() => create();
  factory AssetDisclaimersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetDisclaimersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssetDisclaimersResponse clone() => AssetDisclaimersResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssetDisclaimersResponse copyWith(void Function(AssetDisclaimersResponse) updates) => super.copyWith((message) => updates(message as AssetDisclaimersResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetDisclaimersResponse create() => AssetDisclaimersResponse._();
  AssetDisclaimersResponse createEmptyInstance() => create();
  static $pb.PbList<AssetDisclaimersResponse> createRepeated() => $pb.PbList<AssetDisclaimersResponse>();
  @$core.pragma('dart2js:noInline')
  static AssetDisclaimersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetDisclaimersResponse>(create);
  static AssetDisclaimersResponse _defaultInstance;

  AssetDisclaimersResponse_Result whichResult() => _AssetDisclaimersResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AssetDisclaimersResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(AssetDisclaimersResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  AssetDisclaimersResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class AssetDisclaimer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssetDisclaimer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..hasRequiredFields = false
  ;

  AssetDisclaimer._() : super();
  factory AssetDisclaimer() => create();
  factory AssetDisclaimer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetDisclaimer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssetDisclaimer clone() => AssetDisclaimer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssetDisclaimer copyWith(void Function(AssetDisclaimer) updates) => super.copyWith((message) => updates(message as AssetDisclaimer)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetDisclaimer create() => AssetDisclaimer._();
  AssetDisclaimer createEmptyInstance() => create();
  static $pb.PbList<AssetDisclaimer> createRepeated() => $pb.PbList<AssetDisclaimer>();
  @$core.pragma('dart2js:noInline')
  static AssetDisclaimer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetDisclaimer>(create);
  static AssetDisclaimer _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);
}

enum PrivateWallet_OptionalNumber {
  number, 
  notSet
}

class PrivateWallet extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PrivateWallet_OptionalNumber> _PrivateWallet_OptionalNumberByTag = {
    5 : PrivateWallet_OptionalNumber.number,
    0 : PrivateWallet_OptionalNumber.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PrivateWallet', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [5])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'encodedPrivateKey', protoName: 'encodedPrivateKey')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isColdStorage', protoName: 'isColdStorage')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'number', $pb.PbFieldType.O3)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'smallIconUrl', protoName: 'smallIconUrl')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mediumIconUrl', protoName: 'mediumIconUrl')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'largeIconUrl', protoName: 'largeIconUrl')
    ..pc<BalanceRecord>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'balances', $pb.PbFieldType.PM, subBuilder: BalanceRecord.create)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockchain')
    ..hasRequiredFields = false
  ;

  PrivateWallet._() : super();
  factory PrivateWallet() => create();
  factory PrivateWallet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrivateWallet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrivateWallet clone() => PrivateWallet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrivateWallet copyWith(void Function(PrivateWallet) updates) => super.copyWith((message) => updates(message as PrivateWallet)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PrivateWallet create() => PrivateWallet._();
  PrivateWallet createEmptyInstance() => create();
  static $pb.PbList<PrivateWallet> createRepeated() => $pb.PbList<PrivateWallet>();
  @$core.pragma('dart2js:noInline')
  static PrivateWallet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrivateWallet>(create);
  static PrivateWallet _defaultInstance;

  PrivateWallet_OptionalNumber whichOptionalNumber() => _PrivateWallet_OptionalNumberByTag[$_whichOneof(0)];
  void clearOptionalNumber() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get encodedPrivateKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set encodedPrivateKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEncodedPrivateKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearEncodedPrivateKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isColdStorage => $_getBF(3);
  @$pb.TagNumber(4)
  set isColdStorage($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsColdStorage() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsColdStorage() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get number => $_getIZ(4);
  @$pb.TagNumber(5)
  set number($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNumber() => $_has(4);
  @$pb.TagNumber(5)
  void clearNumber() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get smallIconUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set smallIconUrl($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSmallIconUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearSmallIconUrl() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get mediumIconUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set mediumIconUrl($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMediumIconUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearMediumIconUrl() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get largeIconUrl => $_getSZ(7);
  @$pb.TagNumber(8)
  set largeIconUrl($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLargeIconUrl() => $_has(7);
  @$pb.TagNumber(8)
  void clearLargeIconUrl() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<BalanceRecord> get balances => $_getList(8);

  @$pb.TagNumber(10)
  $core.String get blockchain => $_getSZ(9);
  @$pb.TagNumber(10)
  set blockchain($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBlockchain() => $_has(9);
  @$pb.TagNumber(10)
  void clearBlockchain() => clearField(10);
}

class BalanceRecord extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BalanceRecord', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'balance')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'baseAssetId', protoName: 'baseAssetId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountInBase', protoName: 'amountInBase')
    ..hasRequiredFields = false
  ;

  BalanceRecord._() : super();
  factory BalanceRecord() => create();
  factory BalanceRecord.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BalanceRecord.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BalanceRecord clone() => BalanceRecord()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BalanceRecord copyWith(void Function(BalanceRecord) updates) => super.copyWith((message) => updates(message as BalanceRecord)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BalanceRecord create() => BalanceRecord._();
  BalanceRecord createEmptyInstance() => create();
  static $pb.PbList<BalanceRecord> createRepeated() => $pb.PbList<BalanceRecord>();
  @$core.pragma('dart2js:noInline')
  static BalanceRecord getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BalanceRecord>(create);
  static BalanceRecord _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get balance => $_getSZ(1);
  @$pb.TagNumber(2)
  set balance($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBalance() => $_has(1);
  @$pb.TagNumber(2)
  void clearBalance() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get baseAssetId => $_getSZ(2);
  @$pb.TagNumber(3)
  set baseAssetId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBaseAssetId() => $_has(2);
  @$pb.TagNumber(3)
  void clearBaseAssetId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get amountInBase => $_getSZ(3);
  @$pb.TagNumber(4)
  set amountInBase($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAmountInBase() => $_has(3);
  @$pb.TagNumber(4)
  void clearAmountInBase() => clearField(4);
}

class CashOutFee extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CashOutFee', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size', $pb.PbFieldType.OD)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..hasRequiredFields = false
  ;

  CashOutFee._() : super();
  factory CashOutFee() => create();
  factory CashOutFee.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CashOutFee.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CashOutFee clone() => CashOutFee()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CashOutFee copyWith(void Function(CashOutFee) updates) => super.copyWith((message) => updates(message as CashOutFee)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CashOutFee create() => CashOutFee._();
  CashOutFee createEmptyInstance() => create();
  static $pb.PbList<CashOutFee> createRepeated() => $pb.PbList<CashOutFee>();
  @$core.pragma('dart2js:noInline')
  static CashOutFee getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CashOutFee>(create);
  static CashOutFee _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get size => $_getN(1);
  @$pb.TagNumber(2)
  set size($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get type => $_getSZ(2);
  @$pb.TagNumber(3)
  set type($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);
}

class SwiftCashoutFeeResponse_Body extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SwiftCashoutFeeResponse.Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'country')
    ..hasRequiredFields = false
  ;

  SwiftCashoutFeeResponse_Body._() : super();
  factory SwiftCashoutFeeResponse_Body() => create();
  factory SwiftCashoutFeeResponse_Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCashoutFeeResponse_Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SwiftCashoutFeeResponse_Body clone() => SwiftCashoutFeeResponse_Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SwiftCashoutFeeResponse_Body copyWith(void Function(SwiftCashoutFeeResponse_Body) updates) => super.copyWith((message) => updates(message as SwiftCashoutFeeResponse_Body)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutFeeResponse_Body create() => SwiftCashoutFeeResponse_Body._();
  SwiftCashoutFeeResponse_Body createEmptyInstance() => create();
  static $pb.PbList<SwiftCashoutFeeResponse_Body> createRepeated() => $pb.PbList<SwiftCashoutFeeResponse_Body>();
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutFeeResponse_Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCashoutFeeResponse_Body>(create);
  static SwiftCashoutFeeResponse_Body _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get size => $_getSZ(0);
  @$pb.TagNumber(1)
  set size($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearSize() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get assetId => $_getSZ(1);
  @$pb.TagNumber(2)
  set assetId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAssetId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssetId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get country => $_getSZ(2);
  @$pb.TagNumber(3)
  set country($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCountry() => $_has(2);
  @$pb.TagNumber(3)
  void clearCountry() => clearField(3);
}

enum SwiftCashoutFeeResponse_Result {
  body, 
  error, 
  notSet
}

class SwiftCashoutFeeResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SwiftCashoutFeeResponse_Result> _SwiftCashoutFeeResponse_ResultByTag = {
    1 : SwiftCashoutFeeResponse_Result.body,
    2 : SwiftCashoutFeeResponse_Result.error,
    0 : SwiftCashoutFeeResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SwiftCashoutFeeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SwiftCashoutFeeResponse_Body>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: SwiftCashoutFeeResponse_Body.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  SwiftCashoutFeeResponse._() : super();
  factory SwiftCashoutFeeResponse() => create();
  factory SwiftCashoutFeeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCashoutFeeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SwiftCashoutFeeResponse clone() => SwiftCashoutFeeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SwiftCashoutFeeResponse copyWith(void Function(SwiftCashoutFeeResponse) updates) => super.copyWith((message) => updates(message as SwiftCashoutFeeResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutFeeResponse create() => SwiftCashoutFeeResponse._();
  SwiftCashoutFeeResponse createEmptyInstance() => create();
  static $pb.PbList<SwiftCashoutFeeResponse> createRepeated() => $pb.PbList<SwiftCashoutFeeResponse>();
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutFeeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCashoutFeeResponse>(create);
  static SwiftCashoutFeeResponse _defaultInstance;

  SwiftCashoutFeeResponse_Result whichResult() => _SwiftCashoutFeeResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SwiftCashoutFeeResponse_Body get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(SwiftCashoutFeeResponse_Body v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  SwiftCashoutFeeResponse_Body ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class CurrentTier extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CurrentTier', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tier')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'asset')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'current')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxLimit', protoName: 'maxLimit')
    ..hasRequiredFields = false
  ;

  CurrentTier._() : super();
  factory CurrentTier() => create();
  factory CurrentTier.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CurrentTier.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CurrentTier clone() => CurrentTier()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CurrentTier copyWith(void Function(CurrentTier) updates) => super.copyWith((message) => updates(message as CurrentTier)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CurrentTier create() => CurrentTier._();
  CurrentTier createEmptyInstance() => create();
  static $pb.PbList<CurrentTier> createRepeated() => $pb.PbList<CurrentTier>();
  @$core.pragma('dart2js:noInline')
  static CurrentTier getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CurrentTier>(create);
  static CurrentTier _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tier => $_getSZ(0);
  @$pb.TagNumber(1)
  set tier($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTier() => $_has(0);
  @$pb.TagNumber(1)
  void clearTier() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get asset => $_getSZ(1);
  @$pb.TagNumber(2)
  set asset($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAsset() => $_has(1);
  @$pb.TagNumber(2)
  void clearAsset() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get current => $_getSZ(2);
  @$pb.TagNumber(3)
  set current($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCurrent() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrent() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get maxLimit => $_getSZ(3);
  @$pb.TagNumber(4)
  set maxLimit($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaxLimit() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxLimit() => clearField(4);
}

class NextTier extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NextTier', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tier')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxLimit', protoName: 'maxLimit')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'documents')
    ..hasRequiredFields = false
  ;

  NextTier._() : super();
  factory NextTier() => create();
  factory NextTier.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NextTier.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NextTier clone() => NextTier()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NextTier copyWith(void Function(NextTier) updates) => super.copyWith((message) => updates(message as NextTier)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NextTier create() => NextTier._();
  NextTier createEmptyInstance() => create();
  static $pb.PbList<NextTier> createRepeated() => $pb.PbList<NextTier>();
  @$core.pragma('dart2js:noInline')
  static NextTier getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NextTier>(create);
  static NextTier _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tier => $_getSZ(0);
  @$pb.TagNumber(1)
  set tier($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTier() => $_has(0);
  @$pb.TagNumber(1)
  void clearTier() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get maxLimit => $_getSZ(1);
  @$pb.TagNumber(2)
  set maxLimit($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMaxLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxLimit() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get documents => $_getList(2);
}

class UpgradeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpgradeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tier')
    ..aOM<$3.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'submitDate', protoName: 'submitDate', subBuilder: $3.Timestamp.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit')
    ..hasRequiredFields = false
  ;

  UpgradeRequest._() : super();
  factory UpgradeRequest() => create();
  factory UpgradeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpgradeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpgradeRequest clone() => UpgradeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpgradeRequest copyWith(void Function(UpgradeRequest) updates) => super.copyWith((message) => updates(message as UpgradeRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpgradeRequest create() => UpgradeRequest._();
  UpgradeRequest createEmptyInstance() => create();
  static $pb.PbList<UpgradeRequest> createRepeated() => $pb.PbList<UpgradeRequest>();
  @$core.pragma('dart2js:noInline')
  static UpgradeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpgradeRequest>(create);
  static UpgradeRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tier => $_getSZ(0);
  @$pb.TagNumber(1)
  set tier($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTier() => $_has(0);
  @$pb.TagNumber(1)
  void clearTier() => clearField(1);

  @$pb.TagNumber(2)
  $3.Timestamp get submitDate => $_getN(1);
  @$pb.TagNumber(2)
  set submitDate($3.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubmitDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubmitDate() => clearField(2);
  @$pb.TagNumber(2)
  $3.Timestamp ensureSubmitDate() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get status => $_getSZ(2);
  @$pb.TagNumber(3)
  set status($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get limit => $_getSZ(3);
  @$pb.TagNumber(4)
  set limit($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLimit() => $_has(3);
  @$pb.TagNumber(4)
  void clearLimit() => clearField(4);
}

class AssetCategory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssetCategory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iconUrl', protoName: 'iconUrl')
    ..hasRequiredFields = false
  ;

  AssetCategory._() : super();
  factory AssetCategory() => create();
  factory AssetCategory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetCategory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssetCategory clone() => AssetCategory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssetCategory copyWith(void Function(AssetCategory) updates) => super.copyWith((message) => updates(message as AssetCategory)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetCategory create() => AssetCategory._();
  AssetCategory createEmptyInstance() => create();
  static $pb.PbList<AssetCategory> createRepeated() => $pb.PbList<AssetCategory>();
  @$core.pragma('dart2js:noInline')
  static AssetCategory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetCategory>(create);
  static AssetCategory _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get iconUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set iconUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIconUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearIconUrl() => clearField(3);
}

class Asset extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Asset', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'displayId', protoName: 'displayId')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accuracy', $pb.PbFieldType.O3)
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kycNeeded', protoName: 'kycNeeded')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'categoryId', protoName: 'categoryId')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cardDeposit', protoName: 'cardDeposit')
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'swiftDeposit', protoName: 'swiftDeposit')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockchainDeposit', protoName: 'blockchainDeposit')
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'swiftWithdrawal', protoName: 'swiftWithdrawal')
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forwardWithdrawal', protoName: 'forwardWithdrawal')
    ..aOB(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'crosschainWithdrawal', protoName: 'crosschainWithdrawal')
    ..aOB(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isTrusted', protoName: 'isTrusted')
    ..aOB(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'canBeBase', protoName: 'canBeBase')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iconUrl', protoName: 'iconUrl')
    ..pPS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'popularPairs', protoName: 'popularPairs')
    ..aOB(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockchainWithdrawal', protoName: 'blockchainWithdrawal')
    ..hasRequiredFields = false
  ;

  Asset._() : super();
  factory Asset() => create();
  factory Asset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Asset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Asset clone() => Asset()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Asset copyWith(void Function(Asset) updates) => super.copyWith((message) => updates(message as Asset)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Asset create() => Asset._();
  Asset createEmptyInstance() => create();
  static $pb.PbList<Asset> createRepeated() => $pb.PbList<Asset>();
  @$core.pragma('dart2js:noInline')
  static Asset getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Asset>(create);
  static Asset _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get symbol => $_getSZ(2);
  @$pb.TagNumber(3)
  set symbol($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSymbol() => $_has(2);
  @$pb.TagNumber(3)
  void clearSymbol() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get displayId => $_getSZ(3);
  @$pb.TagNumber(4)
  set displayId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDisplayId() => $_has(3);
  @$pb.TagNumber(4)
  void clearDisplayId() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get accuracy => $_getIZ(4);
  @$pb.TagNumber(5)
  set accuracy($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAccuracy() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccuracy() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get kycNeeded => $_getBF(5);
  @$pb.TagNumber(6)
  set kycNeeded($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasKycNeeded() => $_has(5);
  @$pb.TagNumber(6)
  void clearKycNeeded() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get categoryId => $_getSZ(6);
  @$pb.TagNumber(7)
  set categoryId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCategoryId() => $_has(6);
  @$pb.TagNumber(7)
  void clearCategoryId() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get cardDeposit => $_getBF(7);
  @$pb.TagNumber(8)
  set cardDeposit($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCardDeposit() => $_has(7);
  @$pb.TagNumber(8)
  void clearCardDeposit() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get swiftDeposit => $_getBF(8);
  @$pb.TagNumber(9)
  set swiftDeposit($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSwiftDeposit() => $_has(8);
  @$pb.TagNumber(9)
  void clearSwiftDeposit() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get blockchainDeposit => $_getBF(9);
  @$pb.TagNumber(10)
  set blockchainDeposit($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBlockchainDeposit() => $_has(9);
  @$pb.TagNumber(10)
  void clearBlockchainDeposit() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get swiftWithdrawal => $_getBF(10);
  @$pb.TagNumber(11)
  set swiftWithdrawal($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSwiftWithdrawal() => $_has(10);
  @$pb.TagNumber(11)
  void clearSwiftWithdrawal() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get forwardWithdrawal => $_getBF(11);
  @$pb.TagNumber(12)
  set forwardWithdrawal($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasForwardWithdrawal() => $_has(11);
  @$pb.TagNumber(12)
  void clearForwardWithdrawal() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get crosschainWithdrawal => $_getBF(12);
  @$pb.TagNumber(13)
  set crosschainWithdrawal($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasCrosschainWithdrawal() => $_has(12);
  @$pb.TagNumber(13)
  void clearCrosschainWithdrawal() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get isTrusted => $_getBF(13);
  @$pb.TagNumber(14)
  set isTrusted($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasIsTrusted() => $_has(13);
  @$pb.TagNumber(14)
  void clearIsTrusted() => clearField(14);

  @$pb.TagNumber(15)
  $core.bool get canBeBase => $_getBF(14);
  @$pb.TagNumber(15)
  set canBeBase($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasCanBeBase() => $_has(14);
  @$pb.TagNumber(15)
  void clearCanBeBase() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get iconUrl => $_getSZ(15);
  @$pb.TagNumber(16)
  set iconUrl($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasIconUrl() => $_has(15);
  @$pb.TagNumber(16)
  void clearIconUrl() => clearField(16);

  @$pb.TagNumber(17)
  $core.List<$core.String> get popularPairs => $_getList(16);

  @$pb.TagNumber(18)
  $core.bool get blockchainWithdrawal => $_getBF(17);
  @$pb.TagNumber(18)
  set blockchainWithdrawal($core.bool v) { $_setBool(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasBlockchainWithdrawal() => $_has(17);
  @$pb.TagNumber(18)
  void clearBlockchainWithdrawal() => clearField(18);
}

class AssetPair extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssetPair', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accuracy', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'baseAssetId', protoName: 'baseAssetId')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'invertedAccuracy', $pb.PbFieldType.O3, protoName: 'invertedAccuracy')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quotingAssetId', protoName: 'quotingAssetId')
    ..hasRequiredFields = false
  ;

  AssetPair._() : super();
  factory AssetPair() => create();
  factory AssetPair.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetPair.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssetPair clone() => AssetPair()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssetPair copyWith(void Function(AssetPair) updates) => super.copyWith((message) => updates(message as AssetPair)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetPair create() => AssetPair._();
  AssetPair createEmptyInstance() => create();
  static $pb.PbList<AssetPair> createRepeated() => $pb.PbList<AssetPair>();
  @$core.pragma('dart2js:noInline')
  static AssetPair getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetPair>(create);
  static AssetPair _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get accuracy => $_getIZ(1);
  @$pb.TagNumber(2)
  set accuracy($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccuracy() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccuracy() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get baseAssetId => $_getSZ(2);
  @$pb.TagNumber(3)
  set baseAssetId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBaseAssetId() => $_has(2);
  @$pb.TagNumber(3)
  void clearBaseAssetId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get invertedAccuracy => $_getIZ(3);
  @$pb.TagNumber(4)
  set invertedAccuracy($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInvertedAccuracy() => $_has(3);
  @$pb.TagNumber(4)
  void clearInvertedAccuracy() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get name => $_getSZ(4);
  @$pb.TagNumber(5)
  set name($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasName() => $_has(4);
  @$pb.TagNumber(5)
  void clearName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get quotingAssetId => $_getSZ(5);
  @$pb.TagNumber(6)
  set quotingAssetId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasQuotingAssetId() => $_has(5);
  @$pb.TagNumber(6)
  void clearQuotingAssetId() => clearField(6);
}

class PriceUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PriceUpdate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairId', protoName: 'assetPairId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ask')
    ..aOM<$3.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', subBuilder: $3.Timestamp.create)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'volumeBase24H', protoName: 'volumeBase24H')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'volumeQuote24H', protoName: 'volumeQuote24H')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'priceChange24H', protoName: 'priceChange24H')
    ..hasRequiredFields = false
  ;

  PriceUpdate._() : super();
  factory PriceUpdate() => create();
  factory PriceUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PriceUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PriceUpdate clone() => PriceUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PriceUpdate copyWith(void Function(PriceUpdate) updates) => super.copyWith((message) => updates(message as PriceUpdate)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PriceUpdate create() => PriceUpdate._();
  PriceUpdate createEmptyInstance() => create();
  static $pb.PbList<PriceUpdate> createRepeated() => $pb.PbList<PriceUpdate>();
  @$core.pragma('dart2js:noInline')
  static PriceUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PriceUpdate>(create);
  static PriceUpdate _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetPairId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetPairId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetPairId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetPairId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get bid => $_getSZ(1);
  @$pb.TagNumber(2)
  set bid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBid() => $_has(1);
  @$pb.TagNumber(2)
  void clearBid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get ask => $_getSZ(2);
  @$pb.TagNumber(3)
  set ask($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAsk() => $_has(2);
  @$pb.TagNumber(3)
  void clearAsk() => clearField(3);

  @$pb.TagNumber(4)
  $3.Timestamp get timestamp => $_getN(3);
  @$pb.TagNumber(4)
  set timestamp($3.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimestamp() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimestamp() => clearField(4);
  @$pb.TagNumber(4)
  $3.Timestamp ensureTimestamp() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get volumeBase24H => $_getSZ(4);
  @$pb.TagNumber(5)
  set volumeBase24H($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVolumeBase24H() => $_has(4);
  @$pb.TagNumber(5)
  void clearVolumeBase24H() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get volumeQuote24H => $_getSZ(5);
  @$pb.TagNumber(6)
  set volumeQuote24H($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasVolumeQuote24H() => $_has(5);
  @$pb.TagNumber(6)
  void clearVolumeQuote24H() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get priceChange24H => $_getSZ(6);
  @$pb.TagNumber(7)
  set priceChange24H($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPriceChange24H() => $_has(6);
  @$pb.TagNumber(7)
  void clearPriceChange24H() => clearField(7);
}

class Candle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Candle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'open')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'close')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'high')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'low')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'volume')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'oppositeVolume', protoName: 'oppositeVolume')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastPrice', protoName: 'lastPrice')
    ..aOM<$3.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Candle._() : super();
  factory Candle() => create();
  factory Candle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Candle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Candle clone() => Candle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Candle copyWith(void Function(Candle) updates) => super.copyWith((message) => updates(message as Candle)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Candle create() => Candle._();
  Candle createEmptyInstance() => create();
  static $pb.PbList<Candle> createRepeated() => $pb.PbList<Candle>();
  @$core.pragma('dart2js:noInline')
  static Candle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Candle>(create);
  static Candle _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get open => $_getSZ(0);
  @$pb.TagNumber(1)
  set open($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOpen() => $_has(0);
  @$pb.TagNumber(1)
  void clearOpen() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get close => $_getSZ(1);
  @$pb.TagNumber(2)
  set close($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasClose() => $_has(1);
  @$pb.TagNumber(2)
  void clearClose() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get high => $_getSZ(2);
  @$pb.TagNumber(3)
  set high($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHigh() => $_has(2);
  @$pb.TagNumber(3)
  void clearHigh() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get low => $_getSZ(3);
  @$pb.TagNumber(4)
  set low($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLow() => $_has(3);
  @$pb.TagNumber(4)
  void clearLow() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get volume => $_getSZ(4);
  @$pb.TagNumber(5)
  set volume($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVolume() => $_has(4);
  @$pb.TagNumber(5)
  void clearVolume() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get oppositeVolume => $_getSZ(5);
  @$pb.TagNumber(6)
  set oppositeVolume($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOppositeVolume() => $_has(5);
  @$pb.TagNumber(6)
  void clearOppositeVolume() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get lastPrice => $_getSZ(6);
  @$pb.TagNumber(7)
  set lastPrice($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastPrice() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastPrice() => clearField(7);

  @$pb.TagNumber(8)
  $3.Timestamp get timestamp => $_getN(7);
  @$pb.TagNumber(8)
  set timestamp($3.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasTimestamp() => $_has(7);
  @$pb.TagNumber(8)
  void clearTimestamp() => clearField(8);
  @$pb.TagNumber(8)
  $3.Timestamp ensureTimestamp() => $_ensure(7);
}

class CandleUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CandleUpdate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'open')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'close')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'high')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'low')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'volume')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'oppositeVolume', protoName: 'oppositeVolume')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastPrice', protoName: 'lastPrice')
    ..aOM<$3.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateTimestamp', protoName: 'updateTimestamp', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  CandleUpdate._() : super();
  factory CandleUpdate() => create();
  factory CandleUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CandleUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CandleUpdate clone() => CandleUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CandleUpdate copyWith(void Function(CandleUpdate) updates) => super.copyWith((message) => updates(message as CandleUpdate)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CandleUpdate create() => CandleUpdate._();
  CandleUpdate createEmptyInstance() => create();
  static $pb.PbList<CandleUpdate> createRepeated() => $pb.PbList<CandleUpdate>();
  @$core.pragma('dart2js:noInline')
  static CandleUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CandleUpdate>(create);
  static CandleUpdate _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get open => $_getSZ(0);
  @$pb.TagNumber(1)
  set open($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOpen() => $_has(0);
  @$pb.TagNumber(1)
  void clearOpen() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get close => $_getSZ(1);
  @$pb.TagNumber(2)
  set close($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasClose() => $_has(1);
  @$pb.TagNumber(2)
  void clearClose() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get high => $_getSZ(2);
  @$pb.TagNumber(3)
  set high($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHigh() => $_has(2);
  @$pb.TagNumber(3)
  void clearHigh() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get low => $_getSZ(3);
  @$pb.TagNumber(4)
  set low($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLow() => $_has(3);
  @$pb.TagNumber(4)
  void clearLow() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get volume => $_getSZ(4);
  @$pb.TagNumber(5)
  set volume($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVolume() => $_has(4);
  @$pb.TagNumber(5)
  void clearVolume() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get oppositeVolume => $_getSZ(5);
  @$pb.TagNumber(6)
  set oppositeVolume($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOppositeVolume() => $_has(5);
  @$pb.TagNumber(6)
  void clearOppositeVolume() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get lastPrice => $_getSZ(6);
  @$pb.TagNumber(7)
  set lastPrice($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastPrice() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastPrice() => clearField(7);

  @$pb.TagNumber(8)
  $3.Timestamp get timestamp => $_getN(7);
  @$pb.TagNumber(8)
  set timestamp($3.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasTimestamp() => $_has(7);
  @$pb.TagNumber(8)
  void clearTimestamp() => clearField(8);
  @$pb.TagNumber(8)
  $3.Timestamp ensureTimestamp() => $_ensure(7);

  @$pb.TagNumber(9)
  $3.Timestamp get updateTimestamp => $_getN(8);
  @$pb.TagNumber(9)
  set updateTimestamp($3.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasUpdateTimestamp() => $_has(8);
  @$pb.TagNumber(9)
  void clearUpdateTimestamp() => clearField(9);
  @$pb.TagNumber(9)
  $3.Timestamp ensureUpdateTimestamp() => $_ensure(8);
}

enum OrderbookResponse_Result {
  body, 
  error, 
  notSet
}

class OrderbookResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, OrderbookResponse_Result> _OrderbookResponse_ResultByTag = {
    1 : OrderbookResponse_Result.body,
    2 : OrderbookResponse_Result.error,
    0 : OrderbookResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrderbookResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<Orderbook>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: Orderbook.create)
    ..aOM<$4.ErrorResponseBody>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  OrderbookResponse._() : super();
  factory OrderbookResponse() => create();
  factory OrderbookResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderbookResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrderbookResponse clone() => OrderbookResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrderbookResponse copyWith(void Function(OrderbookResponse) updates) => super.copyWith((message) => updates(message as OrderbookResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderbookResponse create() => OrderbookResponse._();
  OrderbookResponse createEmptyInstance() => create();
  static $pb.PbList<OrderbookResponse> createRepeated() => $pb.PbList<OrderbookResponse>();
  @$core.pragma('dart2js:noInline')
  static OrderbookResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderbookResponse>(create);
  static OrderbookResponse _defaultInstance;

  OrderbookResponse_Result whichResult() => _OrderbookResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Orderbook get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(Orderbook v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  Orderbook ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ErrorResponseBody get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($4.ErrorResponseBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $4.ErrorResponseBody ensureError() => $_ensure(1);
}

class Orderbook_PriceVolume extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Orderbook.PriceVolume', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'p')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'v')
    ..hasRequiredFields = false
  ;

  Orderbook_PriceVolume._() : super();
  factory Orderbook_PriceVolume() => create();
  factory Orderbook_PriceVolume.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Orderbook_PriceVolume.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Orderbook_PriceVolume clone() => Orderbook_PriceVolume()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Orderbook_PriceVolume copyWith(void Function(Orderbook_PriceVolume) updates) => super.copyWith((message) => updates(message as Orderbook_PriceVolume)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Orderbook_PriceVolume create() => Orderbook_PriceVolume._();
  Orderbook_PriceVolume createEmptyInstance() => create();
  static $pb.PbList<Orderbook_PriceVolume> createRepeated() => $pb.PbList<Orderbook_PriceVolume>();
  @$core.pragma('dart2js:noInline')
  static Orderbook_PriceVolume getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Orderbook_PriceVolume>(create);
  static Orderbook_PriceVolume _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get p => $_getSZ(0);
  @$pb.TagNumber(1)
  set p($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasP() => $_has(0);
  @$pb.TagNumber(1)
  void clearP() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get v => $_getSZ(1);
  @$pb.TagNumber(2)
  set v($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasV() => $_has(1);
  @$pb.TagNumber(2)
  void clearV() => clearField(2);
}

class Orderbook extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Orderbook', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetPairId', protoName: 'assetPairId')
    ..aOM<$3.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', subBuilder: $3.Timestamp.create)
    ..pc<Orderbook_PriceVolume>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bids', $pb.PbFieldType.PM, subBuilder: Orderbook_PriceVolume.create)
    ..pc<Orderbook_PriceVolume>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'asks', $pb.PbFieldType.PM, subBuilder: Orderbook_PriceVolume.create)
    ..hasRequiredFields = false
  ;

  Orderbook._() : super();
  factory Orderbook() => create();
  factory Orderbook.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Orderbook.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Orderbook clone() => Orderbook()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Orderbook copyWith(void Function(Orderbook) updates) => super.copyWith((message) => updates(message as Orderbook)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Orderbook create() => Orderbook._();
  Orderbook createEmptyInstance() => create();
  static $pb.PbList<Orderbook> createRepeated() => $pb.PbList<Orderbook>();
  @$core.pragma('dart2js:noInline')
  static Orderbook getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Orderbook>(create);
  static Orderbook _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetPairId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetPairId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetPairId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetPairId() => clearField(1);

  @$pb.TagNumber(2)
  $3.Timestamp get timestamp => $_getN(1);
  @$pb.TagNumber(2)
  set timestamp($3.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestamp() => clearField(2);
  @$pb.TagNumber(2)
  $3.Timestamp ensureTimestamp() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<Orderbook_PriceVolume> get bids => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<Orderbook_PriceVolume> get asks => $_getList(3);
}

class PublicTradeUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublicTradeUpdate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..pc<PublicTrade>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trades', $pb.PbFieldType.PM, subBuilder: PublicTrade.create)
    ..hasRequiredFields = false
  ;

  PublicTradeUpdate._() : super();
  factory PublicTradeUpdate() => create();
  factory PublicTradeUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublicTradeUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublicTradeUpdate clone() => PublicTradeUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublicTradeUpdate copyWith(void Function(PublicTradeUpdate) updates) => super.copyWith((message) => updates(message as PublicTradeUpdate)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublicTradeUpdate create() => PublicTradeUpdate._();
  PublicTradeUpdate createEmptyInstance() => create();
  static $pb.PbList<PublicTradeUpdate> createRepeated() => $pb.PbList<PublicTradeUpdate>();
  @$core.pragma('dart2js:noInline')
  static PublicTradeUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublicTradeUpdate>(create);
  static PublicTradeUpdate _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PublicTrade> get trades => $_getList(0);
}

class Balance extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Balance', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'available')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reserved')
    ..aOM<$3.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Balance._() : super();
  factory Balance() => create();
  factory Balance.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Balance.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Balance clone() => Balance()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Balance copyWith(void Function(Balance) updates) => super.copyWith((message) => updates(message as Balance)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Balance create() => Balance._();
  Balance createEmptyInstance() => create();
  static $pb.PbList<Balance> createRepeated() => $pb.PbList<Balance>();
  @$core.pragma('dart2js:noInline')
  static Balance getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Balance>(create);
  static Balance _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get available => $_getSZ(1);
  @$pb.TagNumber(2)
  set available($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAvailable() => $_has(1);
  @$pb.TagNumber(2)
  void clearAvailable() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get reserved => $_getSZ(2);
  @$pb.TagNumber(3)
  set reserved($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReserved() => $_has(2);
  @$pb.TagNumber(3)
  void clearReserved() => clearField(3);

  @$pb.TagNumber(4)
  $3.Timestamp get timestamp => $_getN(3);
  @$pb.TagNumber(4)
  set timestamp($3.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimestamp() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimestamp() => clearField(4);
  @$pb.TagNumber(4)
  $3.Timestamp ensureTimestamp() => $_ensure(3);
}

class Watchlist extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Watchlist', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'order', $pb.PbFieldType.O3)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'readonly')
    ..pPS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetIds', protoName: 'assetIds')
    ..hasRequiredFields = false
  ;

  Watchlist._() : super();
  factory Watchlist() => create();
  factory Watchlist.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Watchlist.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Watchlist clone() => Watchlist()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Watchlist copyWith(void Function(Watchlist) updates) => super.copyWith((message) => updates(message as Watchlist)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Watchlist create() => Watchlist._();
  Watchlist createEmptyInstance() => create();
  static $pb.PbList<Watchlist> createRepeated() => $pb.PbList<Watchlist>();
  @$core.pragma('dart2js:noInline')
  static Watchlist getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Watchlist>(create);
  static Watchlist _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get order => $_getIZ(2);
  @$pb.TagNumber(3)
  set order($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrder() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrder() => clearField(3);

  @$pb.TagNumber(5)
  $core.bool get readonly => $_getBF(3);
  @$pb.TagNumber(5)
  set readonly($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasReadonly() => $_has(3);
  @$pb.TagNumber(5)
  void clearReadonly() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get assetIds => $_getList(4);
}

class Country extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Country', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iso2')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prefix')
    ..hasRequiredFields = false
  ;

  Country._() : super();
  factory Country() => create();
  factory Country.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Country.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Country clone() => Country()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Country copyWith(void Function(Country) updates) => super.copyWith((message) => updates(message as Country)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Country create() => Country._();
  Country createEmptyInstance() => create();
  static $pb.PbList<Country> createRepeated() => $pb.PbList<Country>();
  @$core.pragma('dart2js:noInline')
  static Country getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Country>(create);
  static Country _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get iso2 => $_getSZ(1);
  @$pb.TagNumber(2)
  set iso2($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIso2() => $_has(1);
  @$pb.TagNumber(2)
  void clearIso2() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get prefix => $_getSZ(3);
  @$pb.TagNumber(4)
  set prefix($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrefix() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrefix() => clearField(4);
}

enum EmptyResponse_Result {
  error, 
  notSet
}

class EmptyResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, EmptyResponse_Result> _EmptyResponse_ResultByTag = {
    1 : EmptyResponse_Result.error,
    0 : EmptyResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmptyResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<$4.ErrorResponseBody>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $4.ErrorResponseBody.create)
    ..hasRequiredFields = false
  ;

  EmptyResponse._() : super();
  factory EmptyResponse() => create();
  factory EmptyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyResponse clone() => EmptyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyResponse copyWith(void Function(EmptyResponse) updates) => super.copyWith((message) => updates(message as EmptyResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmptyResponse create() => EmptyResponse._();
  EmptyResponse createEmptyInstance() => create();
  static $pb.PbList<EmptyResponse> createRepeated() => $pb.PbList<EmptyResponse>();
  @$core.pragma('dart2js:noInline')
  static EmptyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyResponse>(create);
  static EmptyResponse _defaultInstance;

  EmptyResponse_Result whichResult() => _EmptyResponse_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $4.ErrorResponseBody get error => $_getN(0);
  @$pb.TagNumber(1)
  set error($4.ErrorResponseBody v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  $4.ErrorResponseBody ensureError() => $_ensure(0);
}

