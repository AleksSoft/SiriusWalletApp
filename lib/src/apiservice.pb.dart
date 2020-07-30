///
//  Generated code. Do not modify.
//  source: apiservice.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $3;

import 'apiservice.pbenum.dart';

export 'apiservice.pbenum.dart';

class BaseAssetUpdateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BaseAssetUpdateRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'baseAssetId', protoName: 'baseAssetId')
    ..hasRequiredFields = false
  ;

  BaseAssetUpdateRequest._() : super();
  factory BaseAssetUpdateRequest() => create();
  factory BaseAssetUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BaseAssetUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BaseAssetUpdateRequest clone() => BaseAssetUpdateRequest()..mergeFromMessage(this);
  BaseAssetUpdateRequest copyWith(void Function(BaseAssetUpdateRequest) updates) => super.copyWith((message) => updates(message as BaseAssetUpdateRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PricesRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..pPS(1, 'assetPairIds', protoName: 'assetPairIds')
    ..hasRequiredFields = false
  ;

  PricesRequest._() : super();
  factory PricesRequest() => create();
  factory PricesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PricesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PricesRequest clone() => PricesRequest()..mergeFromMessage(this);
  PricesRequest copyWith(void Function(PricesRequest) updates) => super.copyWith((message) => updates(message as PricesRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PriceUpdatesRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..pPS(1, 'assetPairIds', protoName: 'assetPairIds')
    ..hasRequiredFields = false
  ;

  PriceUpdatesRequest._() : super();
  factory PriceUpdatesRequest() => create();
  factory PriceUpdatesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PriceUpdatesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PriceUpdatesRequest clone() => PriceUpdatesRequest()..mergeFromMessage(this);
  PriceUpdatesRequest copyWith(void Function(PriceUpdatesRequest) updates) => super.copyWith((message) => updates(message as PriceUpdatesRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CandlesRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetPairId', protoName: 'assetPairId')
    ..e<CandleType>(2, 'type', $pb.PbFieldType.OE, defaultOrMaker: CandleType.Bid, valueOf: CandleType.valueOf, enumValues: CandleType.values)
    ..e<CandleInterval>(3, 'interval', $pb.PbFieldType.OE, defaultOrMaker: CandleInterval.Min5, valueOf: CandleInterval.valueOf, enumValues: CandleInterval.values)
    ..aOM<$3.Timestamp>(4, 'from', subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(5, 'to', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  CandlesRequest._() : super();
  factory CandlesRequest() => create();
  factory CandlesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CandlesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CandlesRequest clone() => CandlesRequest()..mergeFromMessage(this);
  CandlesRequest copyWith(void Function(CandlesRequest) updates) => super.copyWith((message) => updates(message as CandlesRequest));
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

class AmountInBaseRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AmountInBaseRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetId', protoName: 'assetId')
    ..hasRequiredFields = false
  ;

  AmountInBaseRequest._() : super();
  factory AmountInBaseRequest() => create();
  factory AmountInBaseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AmountInBaseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AmountInBaseRequest clone() => AmountInBaseRequest()..mergeFromMessage(this);
  AmountInBaseRequest copyWith(void Function(AmountInBaseRequest) updates) => super.copyWith((message) => updates(message as AmountInBaseRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PushSettingsRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOB(1, 'enabled')
    ..hasRequiredFields = false
  ;

  PushSettingsRequest._() : super();
  factory PushSettingsRequest() => create();
  factory PushSettingsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PushSettingsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PushSettingsRequest clone() => PushSettingsRequest()..mergeFromMessage(this);
  PushSettingsRequest copyWith(void Function(PushSettingsRequest) updates) => super.copyWith((message) => updates(message as PushSettingsRequest));
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

class VerificationEmailRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VerificationEmailRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'email')
    ..hasRequiredFields = false
  ;

  VerificationEmailRequest._() : super();
  factory VerificationEmailRequest() => create();
  factory VerificationEmailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerificationEmailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  VerificationEmailRequest clone() => VerificationEmailRequest()..mergeFromMessage(this);
  VerificationEmailRequest copyWith(void Function(VerificationEmailRequest) updates) => super.copyWith((message) => updates(message as VerificationEmailRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VerificationSmsRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'phone')
    ..aOS(2, 'token')
    ..hasRequiredFields = false
  ;

  VerificationSmsRequest._() : super();
  factory VerificationSmsRequest() => create();
  factory VerificationSmsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerificationSmsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  VerificationSmsRequest clone() => VerificationSmsRequest()..mergeFromMessage(this);
  VerificationSmsRequest copyWith(void Function(VerificationSmsRequest) updates) => super.copyWith((message) => updates(message as VerificationSmsRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VerifyEmailRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'email')
    ..aOS(2, 'code')
    ..aOS(3, 'token')
    ..hasRequiredFields = false
  ;

  VerifyEmailRequest._() : super();
  factory VerifyEmailRequest() => create();
  factory VerifyEmailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyEmailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  VerifyEmailRequest clone() => VerifyEmailRequest()..mergeFromMessage(this);
  VerifyEmailRequest copyWith(void Function(VerifyEmailRequest) updates) => super.copyWith((message) => updates(message as VerifyEmailRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VerifyPhoneRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'phone')
    ..aOS(2, 'code')
    ..aOS(3, 'token')
    ..hasRequiredFields = false
  ;

  VerifyPhoneRequest._() : super();
  factory VerifyPhoneRequest() => create();
  factory VerifyPhoneRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyPhoneRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  VerifyPhoneRequest clone() => VerifyPhoneRequest()..mergeFromMessage(this);
  VerifyPhoneRequest copyWith(void Function(VerifyPhoneRequest) updates) => super.copyWith((message) => updates(message as VerifyPhoneRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RegisterRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'fullName', protoName: 'fullName')
    ..aOS(2, 'email')
    ..aOS(3, 'phone')
    ..aOS(4, 'password')
    ..aOS(5, 'hint')
    ..aOS(6, 'countryIso3Code', protoName: 'countryIso3Code')
    ..aOS(7, 'affiliateCode', protoName: 'affiliateCode')
    ..aOS(8, 'pin')
    ..aOS(9, 'token')
    ..hasRequiredFields = false
  ;

  RegisterRequest._() : super();
  factory RegisterRequest() => create();
  factory RegisterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RegisterRequest clone() => RegisterRequest()..mergeFromMessage(this);
  RegisterRequest copyWith(void Function(RegisterRequest) updates) => super.copyWith((message) => updates(message as RegisterRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MarketsRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, 'assetPairId', protoName: 'assetPairId')
    ..hasRequiredFields = false
  ;

  MarketsRequest._() : super();
  factory MarketsRequest() => create();
  factory MarketsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MarketsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MarketsRequest clone() => MarketsRequest()..mergeFromMessage(this);
  MarketsRequest copyWith(void Function(MarketsRequest) updates) => super.copyWith((message) => updates(message as MarketsRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LimitOrdersRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, 'assetPairId', protoName: 'assetPairId')
    ..hasRequiredFields = false
  ;

  LimitOrdersRequest._() : super();
  factory LimitOrdersRequest() => create();
  factory LimitOrdersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LimitOrdersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LimitOrdersRequest clone() => LimitOrdersRequest()..mergeFromMessage(this);
  LimitOrdersRequest copyWith(void Function(LimitOrdersRequest) updates) => super.copyWith((message) => updates(message as LimitOrdersRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LimitOrderRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetPairId', protoName: 'assetPairId')
    ..aOS(2, 'assetId', protoName: 'assetId')
    ..a<$core.double>(3, 'volume', $pb.PbFieldType.OD)
    ..a<$core.double>(4, 'price', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  LimitOrderRequest._() : super();
  factory LimitOrderRequest() => create();
  factory LimitOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LimitOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LimitOrderRequest clone() => LimitOrderRequest()..mergeFromMessage(this);
  LimitOrderRequest copyWith(void Function(LimitOrderRequest) updates) => super.copyWith((message) => updates(message as LimitOrderRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MarketOrderRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetPairId', protoName: 'assetPairId')
    ..aOS(2, 'assetId', protoName: 'assetId')
    ..a<$core.double>(3, 'volume', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  MarketOrderRequest._() : super();
  factory MarketOrderRequest() => create();
  factory MarketOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MarketOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MarketOrderRequest clone() => MarketOrderRequest()..mergeFromMessage(this);
  MarketOrderRequest copyWith(void Function(MarketOrderRequest) updates) => super.copyWith((message) => updates(message as MarketOrderRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CancelOrdersRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..oo(0, [2])
    ..aOS(1, 'assetPairId', protoName: 'assetPairId')
    ..e<Side>(2, 'side', $pb.PbFieldType.OE, defaultOrMaker: Side.buy, valueOf: Side.valueOf, enumValues: Side.values)
    ..hasRequiredFields = false
  ;

  CancelOrdersRequest._() : super();
  factory CancelOrdersRequest() => create();
  factory CancelOrdersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelOrdersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CancelOrdersRequest clone() => CancelOrdersRequest()..mergeFromMessage(this);
  CancelOrdersRequest copyWith(void Function(CancelOrdersRequest) updates) => super.copyWith((message) => updates(message as CancelOrdersRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CancelOrderRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'orderId', protoName: 'orderId')
    ..hasRequiredFields = false
  ;

  CancelOrderRequest._() : super();
  factory CancelOrderRequest() => create();
  factory CancelOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CancelOrderRequest clone() => CancelOrderRequest()..mergeFromMessage(this);
  CancelOrderRequest copyWith(void Function(CancelOrderRequest) updates) => super.copyWith((message) => updates(message as CancelOrderRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TradesRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1])
    ..oo(1, [4])
    ..oo(2, [5])
    ..oo(3, [6])
    ..aOS(1, 'assetPairId', protoName: 'assetPairId')
    ..a<$core.int>(2, 'take', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'skip', $pb.PbFieldType.O3)
    ..aOM<$3.Timestamp>(4, 'from', subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(5, 'to', subBuilder: $3.Timestamp.create)
    ..aOS(6, 'tradeType', protoName: 'tradeType')
    ..hasRequiredFields = false
  ;

  TradesRequest._() : super();
  factory TradesRequest() => create();
  factory TradesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TradesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TradesRequest clone() => TradesRequest()..mergeFromMessage(this);
  TradesRequest copyWith(void Function(TradesRequest) updates) => super.copyWith((message) => updates(message as TradesRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FundsRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1])
    ..oo(1, [4])
    ..oo(2, [5])
    ..aOS(1, 'assetId', protoName: 'assetId')
    ..a<$core.int>(2, 'take', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'skip', $pb.PbFieldType.O3)
    ..aOM<$3.Timestamp>(4, 'from', subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(5, 'to', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  FundsRequest._() : super();
  factory FundsRequest() => create();
  factory FundsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FundsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FundsRequest clone() => FundsRequest()..mergeFromMessage(this);
  FundsRequest copyWith(void Function(FundsRequest) updates) => super.copyWith((message) => updates(message as FundsRequest));
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

class PublicTradesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PublicTradesRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetPairId', protoName: 'assetPairId')
    ..a<$core.int>(2, 'skip', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'take', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  PublicTradesRequest._() : super();
  factory PublicTradesRequest() => create();
  factory PublicTradesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublicTradesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PublicTradesRequest clone() => PublicTradesRequest()..mergeFromMessage(this);
  PublicTradesRequest copyWith(void Function(PublicTradesRequest) updates) => super.copyWith((message) => updates(message as PublicTradesRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WatchlistRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..hasRequiredFields = false
  ;

  WatchlistRequest._() : super();
  factory WatchlistRequest() => create();
  factory WatchlistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchlistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WatchlistRequest clone() => WatchlistRequest()..mergeFromMessage(this);
  WatchlistRequest copyWith(void Function(WatchlistRequest) updates) => super.copyWith((message) => updates(message as WatchlistRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddWatchlistRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..a<$core.int>(2, 'order', $pb.PbFieldType.O3)
    ..pPS(3, 'assetIds', protoName: 'assetIds')
    ..hasRequiredFields = false
  ;

  AddWatchlistRequest._() : super();
  factory AddWatchlistRequest() => create();
  factory AddWatchlistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddWatchlistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddWatchlistRequest clone() => AddWatchlistRequest()..mergeFromMessage(this);
  AddWatchlistRequest copyWith(void Function(AddWatchlistRequest) updates) => super.copyWith((message) => updates(message as AddWatchlistRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateWatchlistRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'name')
    ..a<$core.int>(3, 'order', $pb.PbFieldType.O3)
    ..pPS(4, 'assetIds', protoName: 'assetIds')
    ..hasRequiredFields = false
  ;

  UpdateWatchlistRequest._() : super();
  factory UpdateWatchlistRequest() => create();
  factory UpdateWatchlistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateWatchlistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateWatchlistRequest clone() => UpdateWatchlistRequest()..mergeFromMessage(this);
  UpdateWatchlistRequest copyWith(void Function(UpdateWatchlistRequest) updates) => super.copyWith((message) => updates(message as UpdateWatchlistRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteWatchlistRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..hasRequiredFields = false
  ;

  DeleteWatchlistRequest._() : super();
  factory DeleteWatchlistRequest() => create();
  factory DeleteWatchlistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteWatchlistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteWatchlistRequest clone() => DeleteWatchlistRequest()..mergeFromMessage(this);
  DeleteWatchlistRequest copyWith(void Function(DeleteWatchlistRequest) updates) => super.copyWith((message) => updates(message as DeleteWatchlistRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SetAddressRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'address')
    ..hasRequiredFields = false
  ;

  SetAddressRequest._() : super();
  factory SetAddressRequest() => create();
  factory SetAddressRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetAddressRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SetAddressRequest clone() => SetAddressRequest()..mergeFromMessage(this);
  SetAddressRequest copyWith(void Function(SetAddressRequest) updates) => super.copyWith((message) => updates(message as SetAddressRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SetZipRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'zip')
    ..hasRequiredFields = false
  ;

  SetZipRequest._() : super();
  factory SetZipRequest() => create();
  factory SetZipRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetZipRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SetZipRequest clone() => SetZipRequest()..mergeFromMessage(this);
  SetZipRequest copyWith(void Function(SetZipRequest) updates) => super.copyWith((message) => updates(message as SetZipRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('KycFileRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'documentType', protoName: 'documentType')
    ..aOS(2, 'filename')
    ..a<$core.List<$core.int>>(3, 'file', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  KycFileRequest._() : super();
  factory KycFileRequest() => create();
  factory KycFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KycFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  KycFileRequest clone() => KycFileRequest()..mergeFromMessage(this);
  KycFileRequest copyWith(void Function(KycFileRequest) updates) => super.copyWith((message) => updates(message as KycFileRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AnswersRequest.Choice', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'questionId', protoName: 'questionId')
    ..pPS(2, 'answerIds', protoName: 'answerIds')
    ..aOS(3, 'other')
    ..hasRequiredFields = false
  ;

  AnswersRequest_Choice._() : super();
  factory AnswersRequest_Choice() => create();
  factory AnswersRequest_Choice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnswersRequest_Choice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AnswersRequest_Choice clone() => AnswersRequest_Choice()..mergeFromMessage(this);
  AnswersRequest_Choice copyWith(void Function(AnswersRequest_Choice) updates) => super.copyWith((message) => updates(message as AnswersRequest_Choice));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AnswersRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..pc<AnswersRequest_Choice>(1, 'answers', $pb.PbFieldType.PM, subBuilder: AnswersRequest_Choice.create)
    ..hasRequiredFields = false
  ;

  AnswersRequest._() : super();
  factory AnswersRequest() => create();
  factory AnswersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnswersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AnswersRequest clone() => AnswersRequest()..mergeFromMessage(this);
  AnswersRequest copyWith(void Function(AnswersRequest) updates) => super.copyWith((message) => updates(message as AnswersRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SubmitProfileRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..oo(0, [1])
    ..e<TierUpgrade>(1, 'tier', $pb.PbFieldType.OE, defaultOrMaker: TierUpgrade.Advanced, valueOf: TierUpgrade.valueOf, enumValues: TierUpgrade.values)
    ..hasRequiredFields = false
  ;

  SubmitProfileRequest._() : super();
  factory SubmitProfileRequest() => create();
  factory SubmitProfileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubmitProfileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SubmitProfileRequest clone() => SubmitProfileRequest()..mergeFromMessage(this);
  SubmitProfileRequest copyWith(void Function(SubmitProfileRequest) updates) => super.copyWith((message) => updates(message as SubmitProfileRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WalletRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetId', protoName: 'assetId')
    ..hasRequiredFields = false
  ;

  WalletRequest._() : super();
  factory WalletRequest() => create();
  factory WalletRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WalletRequest clone() => WalletRequest()..mergeFromMessage(this);
  WalletRequest copyWith(void Function(WalletRequest) updates) => super.copyWith((message) => updates(message as WalletRequest));
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

class GenerateWalletRequest_BcnWalletRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GenerateWalletRequest.BcnWalletRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'address')
    ..aOS(2, 'encodedKey', protoName: 'encodedKey')
    ..aOS(3, 'publicKey', protoName: 'publicKey')
    ..hasRequiredFields = false
  ;

  GenerateWalletRequest_BcnWalletRequest._() : super();
  factory GenerateWalletRequest_BcnWalletRequest() => create();
  factory GenerateWalletRequest_BcnWalletRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateWalletRequest_BcnWalletRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GenerateWalletRequest_BcnWalletRequest clone() => GenerateWalletRequest_BcnWalletRequest()..mergeFromMessage(this);
  GenerateWalletRequest_BcnWalletRequest copyWith(void Function(GenerateWalletRequest_BcnWalletRequest) updates) => super.copyWith((message) => updates(message as GenerateWalletRequest_BcnWalletRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenerateWalletRequest_BcnWalletRequest create() => GenerateWalletRequest_BcnWalletRequest._();
  GenerateWalletRequest_BcnWalletRequest createEmptyInstance() => create();
  static $pb.PbList<GenerateWalletRequest_BcnWalletRequest> createRepeated() => $pb.PbList<GenerateWalletRequest_BcnWalletRequest>();
  @$core.pragma('dart2js:noInline')
  static GenerateWalletRequest_BcnWalletRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateWalletRequest_BcnWalletRequest>(create);
  static GenerateWalletRequest_BcnWalletRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get encodedKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set encodedKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEncodedKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncodedKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get publicKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set publicKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPublicKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearPublicKey() => clearField(3);
}

class GenerateWalletRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GenerateWalletRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetId', protoName: 'assetId')
    ..aOM<GenerateWalletRequest_BcnWalletRequest>(2, 'bcnWallet', protoName: 'bcnWallet', subBuilder: GenerateWalletRequest_BcnWalletRequest.create)
    ..hasRequiredFields = false
  ;

  GenerateWalletRequest._() : super();
  factory GenerateWalletRequest() => create();
  factory GenerateWalletRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateWalletRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GenerateWalletRequest clone() => GenerateWalletRequest()..mergeFromMessage(this);
  GenerateWalletRequest copyWith(void Function(GenerateWalletRequest) updates) => super.copyWith((message) => updates(message as GenerateWalletRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenerateWalletRequest create() => GenerateWalletRequest._();
  GenerateWalletRequest createEmptyInstance() => create();
  static $pb.PbList<GenerateWalletRequest> createRepeated() => $pb.PbList<GenerateWalletRequest>();
  @$core.pragma('dart2js:noInline')
  static GenerateWalletRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateWalletRequest>(create);
  static GenerateWalletRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);

  @$pb.TagNumber(2)
  GenerateWalletRequest_BcnWalletRequest get bcnWallet => $_getN(1);
  @$pb.TagNumber(2)
  set bcnWallet(GenerateWalletRequest_BcnWalletRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcnWallet() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcnWallet() => clearField(2);
  @$pb.TagNumber(2)
  GenerateWalletRequest_BcnWalletRequest ensureBcnWallet() => $_ensure(1);
}

class GenerateWalletV2Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GenerateWalletV2Request', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetId', protoName: 'assetId')
    ..hasRequiredFields = false
  ;

  GenerateWalletV2Request._() : super();
  factory GenerateWalletV2Request() => create();
  factory GenerateWalletV2Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateWalletV2Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GenerateWalletV2Request clone() => GenerateWalletV2Request()..mergeFromMessage(this);
  GenerateWalletV2Request copyWith(void Function(GenerateWalletV2Request) updates) => super.copyWith((message) => updates(message as GenerateWalletV2Request));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenerateWalletV2Request create() => GenerateWalletV2Request._();
  GenerateWalletV2Request createEmptyInstance() => create();
  static $pb.PbList<GenerateWalletV2Request> createRepeated() => $pb.PbList<GenerateWalletV2Request>();
  @$core.pragma('dart2js:noInline')
  static GenerateWalletV2Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateWalletV2Request>(create);
  static GenerateWalletV2Request _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SwiftCredentialsRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetId', protoName: 'assetId')
    ..hasRequiredFields = false
  ;

  SwiftCredentialsRequest._() : super();
  factory SwiftCredentialsRequest() => create();
  factory SwiftCredentialsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCredentialsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SwiftCredentialsRequest clone() => SwiftCredentialsRequest()..mergeFromMessage(this);
  SwiftCredentialsRequest copyWith(void Function(SwiftCredentialsRequest) updates) => super.copyWith((message) => updates(message as SwiftCredentialsRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BankTransferRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetId', protoName: 'assetId')
    ..a<$core.double>(2, 'balanceChange', $pb.PbFieldType.OD, protoName: 'balanceChange')
    ..hasRequiredFields = false
  ;

  BankTransferRequest._() : super();
  factory BankTransferRequest() => create();
  factory BankTransferRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BankTransferRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BankTransferRequest clone() => BankTransferRequest()..mergeFromMessage(this);
  BankTransferRequest copyWith(void Function(BankTransferRequest) updates) => super.copyWith((message) => updates(message as BankTransferRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BankCardPaymentUrlRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'address')
    ..aOS(2, 'amount')
    ..aOS(3, 'assetId', protoName: 'assetId')
    ..aOS(4, 'city')
    ..aOS(5, 'country')
    ..aOS(6, 'email')
    ..aOS(7, 'firstName', protoName: 'firstName')
    ..aOS(8, 'lastName', protoName: 'lastName')
    ..aOS(9, 'phone')
    ..aOS(10, 'zip')
    ..aOS(11, 'depositOption', protoName: 'depositOption')
    ..hasRequiredFields = false
  ;

  BankCardPaymentUrlRequest._() : super();
  factory BankCardPaymentUrlRequest() => create();
  factory BankCardPaymentUrlRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BankCardPaymentUrlRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BankCardPaymentUrlRequest clone() => BankCardPaymentUrlRequest()..mergeFromMessage(this);
  BankCardPaymentUrlRequest copyWith(void Function(BankCardPaymentUrlRequest) updates) => super.copyWith((message) => updates(message as BankCardPaymentUrlRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BankCardPaymentUrlRequest create() => BankCardPaymentUrlRequest._();
  BankCardPaymentUrlRequest createEmptyInstance() => create();
  static $pb.PbList<BankCardPaymentUrlRequest> createRepeated() => $pb.PbList<BankCardPaymentUrlRequest>();
  @$core.pragma('dart2js:noInline')
  static BankCardPaymentUrlRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BankCardPaymentUrlRequest>(create);
  static BankCardPaymentUrlRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get amount => $_getSZ(1);
  @$pb.TagNumber(2)
  set amount($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get assetId => $_getSZ(2);
  @$pb.TagNumber(3)
  set assetId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAssetId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAssetId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get city => $_getSZ(3);
  @$pb.TagNumber(4)
  set city($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCity() => $_has(3);
  @$pb.TagNumber(4)
  void clearCity() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get country => $_getSZ(4);
  @$pb.TagNumber(5)
  set country($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCountry() => $_has(4);
  @$pb.TagNumber(5)
  void clearCountry() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get email => $_getSZ(5);
  @$pb.TagNumber(6)
  set email($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEmail() => $_has(5);
  @$pb.TagNumber(6)
  void clearEmail() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get firstName => $_getSZ(6);
  @$pb.TagNumber(7)
  set firstName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFirstName() => $_has(6);
  @$pb.TagNumber(7)
  void clearFirstName() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get lastName => $_getSZ(7);
  @$pb.TagNumber(8)
  set lastName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLastName() => $_has(7);
  @$pb.TagNumber(8)
  void clearLastName() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get phone => $_getSZ(8);
  @$pb.TagNumber(9)
  set phone($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPhone() => $_has(8);
  @$pb.TagNumber(9)
  void clearPhone() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get zip => $_getSZ(9);
  @$pb.TagNumber(10)
  set zip($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasZip() => $_has(9);
  @$pb.TagNumber(10)
  void clearZip() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get depositOption => $_getSZ(10);
  @$pb.TagNumber(11)
  set depositOption($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasDepositOption() => $_has(10);
  @$pb.TagNumber(11)
  void clearDepositOption() => clearField(11);
}

class CryptoDepositAddressRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CryptoDepositAddressRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetId', protoName: 'assetId')
    ..hasRequiredFields = false
  ;

  CryptoDepositAddressRequest._() : super();
  factory CryptoDepositAddressRequest() => create();
  factory CryptoDepositAddressRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CryptoDepositAddressRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CryptoDepositAddressRequest clone() => CryptoDepositAddressRequest()..mergeFromMessage(this);
  CryptoDepositAddressRequest copyWith(void Function(CryptoDepositAddressRequest) updates) => super.copyWith((message) => updates(message as CryptoDepositAddressRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WithdrawalCryptoInfoRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetId', protoName: 'assetId')
    ..hasRequiredFields = false
  ;

  WithdrawalCryptoInfoRequest._() : super();
  factory WithdrawalCryptoInfoRequest() => create();
  factory WithdrawalCryptoInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithdrawalCryptoInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WithdrawalCryptoInfoRequest clone() => WithdrawalCryptoInfoRequest()..mergeFromMessage(this);
  WithdrawalCryptoInfoRequest copyWith(void Function(WithdrawalCryptoInfoRequest) updates) => super.copyWith((message) => updates(message as WithdrawalCryptoInfoRequest));
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

class SwiftCashoutFeeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SwiftCashoutFeeRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetId', protoName: 'assetId')
    ..aOS(2, 'countryCode', protoName: 'countryCode')
    ..hasRequiredFields = false
  ;

  SwiftCashoutFeeRequest._() : super();
  factory SwiftCashoutFeeRequest() => create();
  factory SwiftCashoutFeeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCashoutFeeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SwiftCashoutFeeRequest clone() => SwiftCashoutFeeRequest()..mergeFromMessage(this);
  SwiftCashoutFeeRequest copyWith(void Function(SwiftCashoutFeeRequest) updates) => super.copyWith((message) => updates(message as SwiftCashoutFeeRequest));
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

class OffchainChannelKeyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OffchainChannelKeyRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetId', protoName: 'assetId')
    ..hasRequiredFields = false
  ;

  OffchainChannelKeyRequest._() : super();
  factory OffchainChannelKeyRequest() => create();
  factory OffchainChannelKeyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OffchainChannelKeyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OffchainChannelKeyRequest clone() => OffchainChannelKeyRequest()..mergeFromMessage(this);
  OffchainChannelKeyRequest copyWith(void Function(OffchainChannelKeyRequest) updates) => super.copyWith((message) => updates(message as OffchainChannelKeyRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OffchainChannelKeyRequest create() => OffchainChannelKeyRequest._();
  OffchainChannelKeyRequest createEmptyInstance() => create();
  static $pb.PbList<OffchainChannelKeyRequest> createRepeated() => $pb.PbList<OffchainChannelKeyRequest>();
  @$core.pragma('dart2js:noInline')
  static OffchainChannelKeyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OffchainChannelKeyRequest>(create);
  static OffchainChannelKeyRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);
}

class SwiftCashoutRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SwiftCashoutRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'amount')
    ..aOS(2, 'asset')
    ..aOS(3, 'prevTempPrivateKey', protoName: 'prevTempPrivateKey')
    ..aOS(4, 'bic')
    ..aOS(5, 'accNumber', protoName: 'accNumber')
    ..aOS(6, 'accName', protoName: 'accName')
    ..aOS(7, 'accHolderAddress', protoName: 'accHolderAddress')
    ..aOS(8, 'bankName', protoName: 'bankName')
    ..aOS(9, 'accHolderCountry', protoName: 'accHolderCountry')
    ..aOS(10, 'accHolderZipCode', protoName: 'accHolderZipCode')
    ..aOS(11, 'accHolderCity', protoName: 'accHolderCity')
    ..hasRequiredFields = false
  ;

  SwiftCashoutRequest._() : super();
  factory SwiftCashoutRequest() => create();
  factory SwiftCashoutRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCashoutRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SwiftCashoutRequest clone() => SwiftCashoutRequest()..mergeFromMessage(this);
  SwiftCashoutRequest copyWith(void Function(SwiftCashoutRequest) updates) => super.copyWith((message) => updates(message as SwiftCashoutRequest));
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
  $core.String get prevTempPrivateKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set prevTempPrivateKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrevTempPrivateKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrevTempPrivateKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get bic => $_getSZ(3);
  @$pb.TagNumber(4)
  set bic($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBic() => $_has(3);
  @$pb.TagNumber(4)
  void clearBic() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get accNumber => $_getSZ(4);
  @$pb.TagNumber(5)
  set accNumber($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAccNumber() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccNumber() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get accName => $_getSZ(5);
  @$pb.TagNumber(6)
  set accName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAccName() => $_has(5);
  @$pb.TagNumber(6)
  void clearAccName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get accHolderAddress => $_getSZ(6);
  @$pb.TagNumber(7)
  set accHolderAddress($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAccHolderAddress() => $_has(6);
  @$pb.TagNumber(7)
  void clearAccHolderAddress() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get bankName => $_getSZ(7);
  @$pb.TagNumber(8)
  set bankName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBankName() => $_has(7);
  @$pb.TagNumber(8)
  void clearBankName() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get accHolderCountry => $_getSZ(8);
  @$pb.TagNumber(9)
  set accHolderCountry($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAccHolderCountry() => $_has(8);
  @$pb.TagNumber(9)
  void clearAccHolderCountry() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get accHolderZipCode => $_getSZ(9);
  @$pb.TagNumber(10)
  set accHolderZipCode($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAccHolderZipCode() => $_has(9);
  @$pb.TagNumber(10)
  void clearAccHolderZipCode() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get accHolderCity => $_getSZ(10);
  @$pb.TagNumber(11)
  set accHolderCity($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasAccHolderCity() => $_has(10);
  @$pb.TagNumber(11)
  void clearAccHolderCity() => clearField(11);
}

class SwiftCashoutFinalizeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SwiftCashoutFinalizeRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'transferId', protoName: 'transferId')
    ..aOS(2, 'clientRevokePubKey', protoName: 'clientRevokePubKey')
    ..aOS(3, 'clientRevokeEncryptedPrivateKey', protoName: 'clientRevokeEncryptedPrivateKey')
    ..aOS(4, 'signedTransferTransaction', protoName: 'signedTransferTransaction')
    ..hasRequiredFields = false
  ;

  SwiftCashoutFinalizeRequest._() : super();
  factory SwiftCashoutFinalizeRequest() => create();
  factory SwiftCashoutFinalizeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCashoutFinalizeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SwiftCashoutFinalizeRequest clone() => SwiftCashoutFinalizeRequest()..mergeFromMessage(this);
  SwiftCashoutFinalizeRequest copyWith(void Function(SwiftCashoutFinalizeRequest) updates) => super.copyWith((message) => updates(message as SwiftCashoutFinalizeRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutFinalizeRequest create() => SwiftCashoutFinalizeRequest._();
  SwiftCashoutFinalizeRequest createEmptyInstance() => create();
  static $pb.PbList<SwiftCashoutFinalizeRequest> createRepeated() => $pb.PbList<SwiftCashoutFinalizeRequest>();
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutFinalizeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCashoutFinalizeRequest>(create);
  static SwiftCashoutFinalizeRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get transferId => $_getSZ(0);
  @$pb.TagNumber(1)
  set transferId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTransferId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransferId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get clientRevokePubKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set clientRevokePubKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasClientRevokePubKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearClientRevokePubKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get clientRevokeEncryptedPrivateKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set clientRevokeEncryptedPrivateKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasClientRevokeEncryptedPrivateKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearClientRevokeEncryptedPrivateKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get signedTransferTransaction => $_getSZ(3);
  @$pb.TagNumber(4)
  set signedTransferTransaction($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSignedTransferTransaction() => $_has(3);
  @$pb.TagNumber(4)
  void clearSignedTransferTransaction() => clearField(4);
}

class CryptoCashoutRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CryptoCashoutRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetId', protoName: 'assetId')
    ..aOS(2, 'volume')
    ..aOS(3, 'destinationAddress', protoName: 'destinationAddress')
    ..aOS(4, 'destinationAddressExtension', protoName: 'destinationAddressExtension')
    ..hasRequiredFields = false
  ;

  CryptoCashoutRequest._() : super();
  factory CryptoCashoutRequest() => create();
  factory CryptoCashoutRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CryptoCashoutRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CryptoCashoutRequest clone() => CryptoCashoutRequest()..mergeFromMessage(this);
  CryptoCashoutRequest copyWith(void Function(CryptoCashoutRequest) updates) => super.copyWith((message) => updates(message as CryptoCashoutRequest));
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

class CandleUpdatesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CandleUpdatesRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetPairId', protoName: 'assetPairId')
    ..e<CandleType>(2, 'type', $pb.PbFieldType.OE, defaultOrMaker: CandleType.Bid, valueOf: CandleType.valueOf, enumValues: CandleType.values)
    ..e<CandleInterval>(3, 'interval', $pb.PbFieldType.OE, defaultOrMaker: CandleInterval.Min5, valueOf: CandleInterval.valueOf, enumValues: CandleInterval.values)
    ..hasRequiredFields = false
  ;

  CandleUpdatesRequest._() : super();
  factory CandleUpdatesRequest() => create();
  factory CandleUpdatesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CandleUpdatesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CandleUpdatesRequest clone() => CandleUpdatesRequest()..mergeFromMessage(this);
  CandleUpdatesRequest copyWith(void Function(CandleUpdatesRequest) updates) => super.copyWith((message) => updates(message as CandleUpdatesRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OrderbookUpdatesRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetPairId', protoName: 'assetPairId')
    ..hasRequiredFields = false
  ;

  OrderbookUpdatesRequest._() : super();
  factory OrderbookUpdatesRequest() => create();
  factory OrderbookUpdatesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderbookUpdatesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OrderbookUpdatesRequest clone() => OrderbookUpdatesRequest()..mergeFromMessage(this);
  OrderbookUpdatesRequest copyWith(void Function(OrderbookUpdatesRequest) updates) => super.copyWith((message) => updates(message as OrderbookUpdatesRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PublicTradesUpdatesRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetPairId', protoName: 'assetPairId')
    ..hasRequiredFields = false
  ;

  PublicTradesUpdatesRequest._() : super();
  factory PublicTradesUpdatesRequest() => create();
  factory PublicTradesUpdatesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublicTradesUpdatesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PublicTradesUpdatesRequest clone() => PublicTradesUpdatesRequest()..mergeFromMessage(this);
  PublicTradesUpdatesRequest copyWith(void Function(PublicTradesUpdatesRequest) updates) => super.copyWith((message) => updates(message as PublicTradesUpdatesRequest));
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

class PricesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PricesResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..pc<PriceUpdate>(1, 'prices', $pb.PbFieldType.PM, subBuilder: PriceUpdate.create)
    ..hasRequiredFields = false
  ;

  PricesResponse._() : super();
  factory PricesResponse() => create();
  factory PricesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PricesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PricesResponse clone() => PricesResponse()..mergeFromMessage(this);
  PricesResponse copyWith(void Function(PricesResponse) updates) => super.copyWith((message) => updates(message as PricesResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PricesResponse create() => PricesResponse._();
  PricesResponse createEmptyInstance() => create();
  static $pb.PbList<PricesResponse> createRepeated() => $pb.PbList<PricesResponse>();
  @$core.pragma('dart2js:noInline')
  static PricesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PricesResponse>(create);
  static PricesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PriceUpdate> get prices => $_getList(0);
}

class AssetsDictionaryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AssetsDictionaryResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..pc<AssetCategory>(1, 'categories', $pb.PbFieldType.PM, subBuilder: AssetCategory.create)
    ..pc<Asset>(2, 'assets', $pb.PbFieldType.PM, subBuilder: Asset.create)
    ..hasRequiredFields = false
  ;

  AssetsDictionaryResponse._() : super();
  factory AssetsDictionaryResponse() => create();
  factory AssetsDictionaryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetsDictionaryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AssetsDictionaryResponse clone() => AssetsDictionaryResponse()..mergeFromMessage(this);
  AssetsDictionaryResponse copyWith(void Function(AssetsDictionaryResponse) updates) => super.copyWith((message) => updates(message as AssetsDictionaryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetsDictionaryResponse create() => AssetsDictionaryResponse._();
  AssetsDictionaryResponse createEmptyInstance() => create();
  static $pb.PbList<AssetsDictionaryResponse> createRepeated() => $pb.PbList<AssetsDictionaryResponse>();
  @$core.pragma('dart2js:noInline')
  static AssetsDictionaryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetsDictionaryResponse>(create);
  static AssetsDictionaryResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AssetCategory> get categories => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<Asset> get assets => $_getList(1);
}

class BaseAssetResponse_BaseAsset extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BaseAssetResponse.BaseAsset', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetId', protoName: 'assetId')
    ..hasRequiredFields = false
  ;

  BaseAssetResponse_BaseAsset._() : super();
  factory BaseAssetResponse_BaseAsset() => create();
  factory BaseAssetResponse_BaseAsset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BaseAssetResponse_BaseAsset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BaseAssetResponse_BaseAsset clone() => BaseAssetResponse_BaseAsset()..mergeFromMessage(this);
  BaseAssetResponse_BaseAsset copyWith(void Function(BaseAssetResponse_BaseAsset) updates) => super.copyWith((message) => updates(message as BaseAssetResponse_BaseAsset));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BaseAssetResponse_BaseAsset create() => BaseAssetResponse_BaseAsset._();
  BaseAssetResponse_BaseAsset createEmptyInstance() => create();
  static $pb.PbList<BaseAssetResponse_BaseAsset> createRepeated() => $pb.PbList<BaseAssetResponse_BaseAsset>();
  @$core.pragma('dart2js:noInline')
  static BaseAssetResponse_BaseAsset getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BaseAssetResponse_BaseAsset>(create);
  static BaseAssetResponse_BaseAsset _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);
}

class BaseAssetResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BaseAssetResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<BaseAssetResponse_BaseAsset>(1, 'baseAsset', protoName: 'baseAsset', subBuilder: BaseAssetResponse_BaseAsset.create)
    ..aOM<ErrorV2>(2, 'error', subBuilder: ErrorV2.create)
    ..hasRequiredFields = false
  ;

  BaseAssetResponse._() : super();
  factory BaseAssetResponse() => create();
  factory BaseAssetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BaseAssetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BaseAssetResponse clone() => BaseAssetResponse()..mergeFromMessage(this);
  BaseAssetResponse copyWith(void Function(BaseAssetResponse) updates) => super.copyWith((message) => updates(message as BaseAssetResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BaseAssetResponse create() => BaseAssetResponse._();
  BaseAssetResponse createEmptyInstance() => create();
  static $pb.PbList<BaseAssetResponse> createRepeated() => $pb.PbList<BaseAssetResponse>();
  @$core.pragma('dart2js:noInline')
  static BaseAssetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BaseAssetResponse>(create);
  static BaseAssetResponse _defaultInstance;

  @$pb.TagNumber(1)
  BaseAssetResponse_BaseAsset get baseAsset => $_getN(0);
  @$pb.TagNumber(1)
  set baseAsset(BaseAssetResponse_BaseAsset v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBaseAsset() => $_has(0);
  @$pb.TagNumber(1)
  void clearBaseAsset() => clearField(1);
  @$pb.TagNumber(1)
  BaseAssetResponse_BaseAsset ensureBaseAsset() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV2 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV2 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV2 ensureError() => $_ensure(1);
}

class AssetPairsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AssetPairsResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..pc<AssetPair>(1, 'assetPairs', $pb.PbFieldType.PM, protoName: 'assetPairs', subBuilder: AssetPair.create)
    ..aOM<ErrorV2>(2, 'error', subBuilder: ErrorV2.create)
    ..hasRequiredFields = false
  ;

  AssetPairsResponse._() : super();
  factory AssetPairsResponse() => create();
  factory AssetPairsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetPairsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AssetPairsResponse clone() => AssetPairsResponse()..mergeFromMessage(this);
  AssetPairsResponse copyWith(void Function(AssetPairsResponse) updates) => super.copyWith((message) => updates(message as AssetPairsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetPairsResponse create() => AssetPairsResponse._();
  AssetPairsResponse createEmptyInstance() => create();
  static $pb.PbList<AssetPairsResponse> createRepeated() => $pb.PbList<AssetPairsResponse>();
  @$core.pragma('dart2js:noInline')
  static AssetPairsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetPairsResponse>(create);
  static AssetPairsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AssetPair> get assetPairs => $_getList(0);

  @$pb.TagNumber(2)
  ErrorV2 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV2 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV2 ensureError() => $_ensure(1);
}

class CandlesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CandlesResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..pc<Candle>(1, 'candles', $pb.PbFieldType.PM, subBuilder: Candle.create)
    ..hasRequiredFields = false
  ;

  CandlesResponse._() : super();
  factory CandlesResponse() => create();
  factory CandlesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CandlesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CandlesResponse clone() => CandlesResponse()..mergeFromMessage(this);
  CandlesResponse copyWith(void Function(CandlesResponse) updates) => super.copyWith((message) => updates(message as CandlesResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CandlesResponse create() => CandlesResponse._();
  CandlesResponse createEmptyInstance() => create();
  static $pb.PbList<CandlesResponse> createRepeated() => $pb.PbList<CandlesResponse>();
  @$core.pragma('dart2js:noInline')
  static CandlesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CandlesResponse>(create);
  static CandlesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Candle> get candles => $_getList(0);
}

class BalancesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BalancesResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..pc<Balance>(1, 'payload', $pb.PbFieldType.PM, subBuilder: Balance.create)
    ..aOM<Error>(2, 'error', subBuilder: Error.create)
    ..hasRequiredFields = false
  ;

  BalancesResponse._() : super();
  factory BalancesResponse() => create();
  factory BalancesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BalancesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BalancesResponse clone() => BalancesResponse()..mergeFromMessage(this);
  BalancesResponse copyWith(void Function(BalancesResponse) updates) => super.copyWith((message) => updates(message as BalancesResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BalancesResponse create() => BalancesResponse._();
  BalancesResponse createEmptyInstance() => create();
  static $pb.PbList<BalancesResponse> createRepeated() => $pb.PbList<BalancesResponse>();
  @$core.pragma('dart2js:noInline')
  static BalancesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BalancesResponse>(create);
  static BalancesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Balance> get payload => $_getList(0);

  @$pb.TagNumber(2)
  Error get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(Error v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  Error ensureError() => $_ensure(1);
}

class MarketsResponse_MarketModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MarketsResponse.MarketModel', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetPair', protoName: 'assetPair')
    ..aOS(2, 'volume24H', protoName: 'volume24H')
    ..aOS(3, 'priceChange24H', protoName: 'priceChange24H')
    ..aOS(4, 'lastPrice', protoName: 'lastPrice')
    ..aOS(5, 'bid')
    ..aOS(6, 'ask')
    ..aOS(7, 'high')
    ..aOS(8, 'low')
    ..hasRequiredFields = false
  ;

  MarketsResponse_MarketModel._() : super();
  factory MarketsResponse_MarketModel() => create();
  factory MarketsResponse_MarketModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MarketsResponse_MarketModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MarketsResponse_MarketModel clone() => MarketsResponse_MarketModel()..mergeFromMessage(this);
  MarketsResponse_MarketModel copyWith(void Function(MarketsResponse_MarketModel) updates) => super.copyWith((message) => updates(message as MarketsResponse_MarketModel));
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

class MarketsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MarketsResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..pc<MarketsResponse_MarketModel>(1, 'markets', $pb.PbFieldType.PM, subBuilder: MarketsResponse_MarketModel.create)
    ..aOM<ErrorV2>(2, 'error', subBuilder: ErrorV2.create)
    ..hasRequiredFields = false
  ;

  MarketsResponse._() : super();
  factory MarketsResponse() => create();
  factory MarketsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MarketsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MarketsResponse clone() => MarketsResponse()..mergeFromMessage(this);
  MarketsResponse copyWith(void Function(MarketsResponse) updates) => super.copyWith((message) => updates(message as MarketsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MarketsResponse create() => MarketsResponse._();
  MarketsResponse createEmptyInstance() => create();
  static $pb.PbList<MarketsResponse> createRepeated() => $pb.PbList<MarketsResponse>();
  @$core.pragma('dart2js:noInline')
  static MarketsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MarketsResponse>(create);
  static MarketsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MarketsResponse_MarketModel> get markets => $_getList(0);

  @$pb.TagNumber(2)
  ErrorV2 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV2 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV2 ensureError() => $_ensure(1);
}

class PendingActionsResponse_PendingActionsPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PendingActionsResponse.PendingActionsPayload', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOB(1, 'unsignedTxs', protoName: 'unsignedTxs')
    ..aOB(2, 'offchainRequests', protoName: 'offchainRequests')
    ..aOB(3, 'needReinit', protoName: 'needReinit')
    ..aOB(4, 'dialogPending', protoName: 'dialogPending')
    ..aOB(5, 'pendingOperations', protoName: 'pendingOperations')
    ..aOB(6, 'ethereumPendingActions', protoName: 'ethereumPendingActions')
    ..aOB(7, 'sessionConfirmation', protoName: 'sessionConfirmation')
    ..hasRequiredFields = false
  ;

  PendingActionsResponse_PendingActionsPayload._() : super();
  factory PendingActionsResponse_PendingActionsPayload() => create();
  factory PendingActionsResponse_PendingActionsPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PendingActionsResponse_PendingActionsPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PendingActionsResponse_PendingActionsPayload clone() => PendingActionsResponse_PendingActionsPayload()..mergeFromMessage(this);
  PendingActionsResponse_PendingActionsPayload copyWith(void Function(PendingActionsResponse_PendingActionsPayload) updates) => super.copyWith((message) => updates(message as PendingActionsResponse_PendingActionsPayload));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingActionsResponse_PendingActionsPayload create() => PendingActionsResponse_PendingActionsPayload._();
  PendingActionsResponse_PendingActionsPayload createEmptyInstance() => create();
  static $pb.PbList<PendingActionsResponse_PendingActionsPayload> createRepeated() => $pb.PbList<PendingActionsResponse_PendingActionsPayload>();
  @$core.pragma('dart2js:noInline')
  static PendingActionsResponse_PendingActionsPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PendingActionsResponse_PendingActionsPayload>(create);
  static PendingActionsResponse_PendingActionsPayload _defaultInstance;

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

class PendingActionsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PendingActionsResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<PendingActionsResponse_PendingActionsPayload>(1, 'result', subBuilder: PendingActionsResponse_PendingActionsPayload.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  PendingActionsResponse._() : super();
  factory PendingActionsResponse() => create();
  factory PendingActionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PendingActionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PendingActionsResponse clone() => PendingActionsResponse()..mergeFromMessage(this);
  PendingActionsResponse copyWith(void Function(PendingActionsResponse) updates) => super.copyWith((message) => updates(message as PendingActionsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingActionsResponse create() => PendingActionsResponse._();
  PendingActionsResponse createEmptyInstance() => create();
  static $pb.PbList<PendingActionsResponse> createRepeated() => $pb.PbList<PendingActionsResponse>();
  @$core.pragma('dart2js:noInline')
  static PendingActionsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PendingActionsResponse>(create);
  static PendingActionsResponse _defaultInstance;

  @$pb.TagNumber(1)
  PendingActionsResponse_PendingActionsPayload get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(PendingActionsResponse_PendingActionsPayload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  PendingActionsResponse_PendingActionsPayload ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class AmountInBaseAssetResponse_AmountInBasePayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AmountInBaseAssetResponse.AmountInBasePayload', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetId', protoName: 'assetId')
    ..aOS(2, 'amountInBase', protoName: 'amountInBase')
    ..hasRequiredFields = false
  ;

  AmountInBaseAssetResponse_AmountInBasePayload._() : super();
  factory AmountInBaseAssetResponse_AmountInBasePayload() => create();
  factory AmountInBaseAssetResponse_AmountInBasePayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AmountInBaseAssetResponse_AmountInBasePayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AmountInBaseAssetResponse_AmountInBasePayload clone() => AmountInBaseAssetResponse_AmountInBasePayload()..mergeFromMessage(this);
  AmountInBaseAssetResponse_AmountInBasePayload copyWith(void Function(AmountInBaseAssetResponse_AmountInBasePayload) updates) => super.copyWith((message) => updates(message as AmountInBaseAssetResponse_AmountInBasePayload));
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

class AmountInBaseAssetResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AmountInBaseAssetResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..pc<AmountInBaseAssetResponse_AmountInBasePayload>(1, 'values', $pb.PbFieldType.PM, subBuilder: AmountInBaseAssetResponse_AmountInBasePayload.create)
    ..hasRequiredFields = false
  ;

  AmountInBaseAssetResponse._() : super();
  factory AmountInBaseAssetResponse() => create();
  factory AmountInBaseAssetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AmountInBaseAssetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AmountInBaseAssetResponse clone() => AmountInBaseAssetResponse()..mergeFromMessage(this);
  AmountInBaseAssetResponse copyWith(void Function(AmountInBaseAssetResponse) updates) => super.copyWith((message) => updates(message as AmountInBaseAssetResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AmountInBaseAssetResponse create() => AmountInBaseAssetResponse._();
  AmountInBaseAssetResponse createEmptyInstance() => create();
  static $pb.PbList<AmountInBaseAssetResponse> createRepeated() => $pb.PbList<AmountInBaseAssetResponse>();
  @$core.pragma('dart2js:noInline')
  static AmountInBaseAssetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AmountInBaseAssetResponse>(create);
  static AmountInBaseAssetResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AmountInBaseAssetResponse_AmountInBasePayload> get values => $_getList(0);
}

class PushSettingsResponse_PushSettingsPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PushSettingsResponse.PushSettingsPayload', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOB(1, 'enabled')
    ..hasRequiredFields = false
  ;

  PushSettingsResponse_PushSettingsPayload._() : super();
  factory PushSettingsResponse_PushSettingsPayload() => create();
  factory PushSettingsResponse_PushSettingsPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PushSettingsResponse_PushSettingsPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PushSettingsResponse_PushSettingsPayload clone() => PushSettingsResponse_PushSettingsPayload()..mergeFromMessage(this);
  PushSettingsResponse_PushSettingsPayload copyWith(void Function(PushSettingsResponse_PushSettingsPayload) updates) => super.copyWith((message) => updates(message as PushSettingsResponse_PushSettingsPayload));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PushSettingsResponse_PushSettingsPayload create() => PushSettingsResponse_PushSettingsPayload._();
  PushSettingsResponse_PushSettingsPayload createEmptyInstance() => create();
  static $pb.PbList<PushSettingsResponse_PushSettingsPayload> createRepeated() => $pb.PbList<PushSettingsResponse_PushSettingsPayload>();
  @$core.pragma('dart2js:noInline')
  static PushSettingsResponse_PushSettingsPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PushSettingsResponse_PushSettingsPayload>(create);
  static PushSettingsResponse_PushSettingsPayload _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);
}

class PushSettingsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PushSettingsResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<PushSettingsResponse_PushSettingsPayload>(1, 'result', subBuilder: PushSettingsResponse_PushSettingsPayload.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  PushSettingsResponse._() : super();
  factory PushSettingsResponse() => create();
  factory PushSettingsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PushSettingsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PushSettingsResponse clone() => PushSettingsResponse()..mergeFromMessage(this);
  PushSettingsResponse copyWith(void Function(PushSettingsResponse) updates) => super.copyWith((message) => updates(message as PushSettingsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PushSettingsResponse create() => PushSettingsResponse._();
  PushSettingsResponse createEmptyInstance() => create();
  static $pb.PbList<PushSettingsResponse> createRepeated() => $pb.PbList<PushSettingsResponse>();
  @$core.pragma('dart2js:noInline')
  static PushSettingsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PushSettingsResponse>(create);
  static PushSettingsResponse _defaultInstance;

  @$pb.TagNumber(1)
  PushSettingsResponse_PushSettingsPayload get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(PushSettingsResponse_PushSettingsPayload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  PushSettingsResponse_PushSettingsPayload ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class VerificationEmailResponse_VerificationEmailPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VerificationEmailResponse.VerificationEmailPayload', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..hasRequiredFields = false
  ;

  VerificationEmailResponse_VerificationEmailPayload._() : super();
  factory VerificationEmailResponse_VerificationEmailPayload() => create();
  factory VerificationEmailResponse_VerificationEmailPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerificationEmailResponse_VerificationEmailPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  VerificationEmailResponse_VerificationEmailPayload clone() => VerificationEmailResponse_VerificationEmailPayload()..mergeFromMessage(this);
  VerificationEmailResponse_VerificationEmailPayload copyWith(void Function(VerificationEmailResponse_VerificationEmailPayload) updates) => super.copyWith((message) => updates(message as VerificationEmailResponse_VerificationEmailPayload));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerificationEmailResponse_VerificationEmailPayload create() => VerificationEmailResponse_VerificationEmailPayload._();
  VerificationEmailResponse_VerificationEmailPayload createEmptyInstance() => create();
  static $pb.PbList<VerificationEmailResponse_VerificationEmailPayload> createRepeated() => $pb.PbList<VerificationEmailResponse_VerificationEmailPayload>();
  @$core.pragma('dart2js:noInline')
  static VerificationEmailResponse_VerificationEmailPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerificationEmailResponse_VerificationEmailPayload>(create);
  static VerificationEmailResponse_VerificationEmailPayload _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class VerificationEmailResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VerificationEmailResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<VerificationEmailResponse_VerificationEmailPayload>(1, 'result', subBuilder: VerificationEmailResponse_VerificationEmailPayload.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  VerificationEmailResponse._() : super();
  factory VerificationEmailResponse() => create();
  factory VerificationEmailResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerificationEmailResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  VerificationEmailResponse clone() => VerificationEmailResponse()..mergeFromMessage(this);
  VerificationEmailResponse copyWith(void Function(VerificationEmailResponse) updates) => super.copyWith((message) => updates(message as VerificationEmailResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerificationEmailResponse create() => VerificationEmailResponse._();
  VerificationEmailResponse createEmptyInstance() => create();
  static $pb.PbList<VerificationEmailResponse> createRepeated() => $pb.PbList<VerificationEmailResponse>();
  @$core.pragma('dart2js:noInline')
  static VerificationEmailResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerificationEmailResponse>(create);
  static VerificationEmailResponse _defaultInstance;

  @$pb.TagNumber(1)
  VerificationEmailResponse_VerificationEmailPayload get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(VerificationEmailResponse_VerificationEmailPayload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  VerificationEmailResponse_VerificationEmailPayload ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class VerifyResponse_VerifyPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VerifyResponse.VerifyPayload', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOB(1, 'passed')
    ..hasRequiredFields = false
  ;

  VerifyResponse_VerifyPayload._() : super();
  factory VerifyResponse_VerifyPayload() => create();
  factory VerifyResponse_VerifyPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyResponse_VerifyPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  VerifyResponse_VerifyPayload clone() => VerifyResponse_VerifyPayload()..mergeFromMessage(this);
  VerifyResponse_VerifyPayload copyWith(void Function(VerifyResponse_VerifyPayload) updates) => super.copyWith((message) => updates(message as VerifyResponse_VerifyPayload));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyResponse_VerifyPayload create() => VerifyResponse_VerifyPayload._();
  VerifyResponse_VerifyPayload createEmptyInstance() => create();
  static $pb.PbList<VerifyResponse_VerifyPayload> createRepeated() => $pb.PbList<VerifyResponse_VerifyPayload>();
  @$core.pragma('dart2js:noInline')
  static VerifyResponse_VerifyPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyResponse_VerifyPayload>(create);
  static VerifyResponse_VerifyPayload _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get passed => $_getBF(0);
  @$pb.TagNumber(1)
  set passed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPassed() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassed() => clearField(1);
}

class VerifyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VerifyResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<VerifyResponse_VerifyPayload>(1, 'result', subBuilder: VerifyResponse_VerifyPayload.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  VerifyResponse._() : super();
  factory VerifyResponse() => create();
  factory VerifyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  VerifyResponse clone() => VerifyResponse()..mergeFromMessage(this);
  VerifyResponse copyWith(void Function(VerifyResponse) updates) => super.copyWith((message) => updates(message as VerifyResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyResponse create() => VerifyResponse._();
  VerifyResponse createEmptyInstance() => create();
  static $pb.PbList<VerifyResponse> createRepeated() => $pb.PbList<VerifyResponse>();
  @$core.pragma('dart2js:noInline')
  static VerifyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyResponse>(create);
  static VerifyResponse _defaultInstance;

  @$pb.TagNumber(1)
  VerifyResponse_VerifyPayload get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(VerifyResponse_VerifyPayload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  VerifyResponse_VerifyPayload ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class RegisterResponse_RegisterPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RegisterResponse.RegisterPayload', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..aOS(2, 'notificationsId', protoName: 'notificationsId')
    ..aOM<PersonalData>(3, 'personalData', protoName: 'personalData', subBuilder: PersonalData.create)
    ..aOB(4, 'canCashInViaBankCard', protoName: 'canCashInViaBankCard')
    ..aOB(5, 'swiftDepositEnabled', protoName: 'swiftDepositEnabled')
    ..aOS(6, 'state')
    ..hasRequiredFields = false
  ;

  RegisterResponse_RegisterPayload._() : super();
  factory RegisterResponse_RegisterPayload() => create();
  factory RegisterResponse_RegisterPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterResponse_RegisterPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RegisterResponse_RegisterPayload clone() => RegisterResponse_RegisterPayload()..mergeFromMessage(this);
  RegisterResponse_RegisterPayload copyWith(void Function(RegisterResponse_RegisterPayload) updates) => super.copyWith((message) => updates(message as RegisterResponse_RegisterPayload));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterResponse_RegisterPayload create() => RegisterResponse_RegisterPayload._();
  RegisterResponse_RegisterPayload createEmptyInstance() => create();
  static $pb.PbList<RegisterResponse_RegisterPayload> createRepeated() => $pb.PbList<RegisterResponse_RegisterPayload>();
  @$core.pragma('dart2js:noInline')
  static RegisterResponse_RegisterPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterResponse_RegisterPayload>(create);
  static RegisterResponse_RegisterPayload _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

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

class RegisterResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RegisterResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<RegisterResponse_RegisterPayload>(1, 'result', subBuilder: RegisterResponse_RegisterPayload.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  RegisterResponse._() : super();
  factory RegisterResponse() => create();
  factory RegisterResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RegisterResponse clone() => RegisterResponse()..mergeFromMessage(this);
  RegisterResponse copyWith(void Function(RegisterResponse) updates) => super.copyWith((message) => updates(message as RegisterResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterResponse create() => RegisterResponse._();
  RegisterResponse createEmptyInstance() => create();
  static $pb.PbList<RegisterResponse> createRepeated() => $pb.PbList<RegisterResponse>();
  @$core.pragma('dart2js:noInline')
  static RegisterResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterResponse>(create);
  static RegisterResponse _defaultInstance;

  @$pb.TagNumber(1)
  RegisterResponse_RegisterPayload get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(RegisterResponse_RegisterPayload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  RegisterResponse_RegisterPayload ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class LimitOrdersResponse_OrdersPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LimitOrdersResponse.OrdersPayload', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..pc<LimitOrderModel>(1, 'orders', $pb.PbFieldType.PM, subBuilder: LimitOrderModel.create)
    ..hasRequiredFields = false
  ;

  LimitOrdersResponse_OrdersPayload._() : super();
  factory LimitOrdersResponse_OrdersPayload() => create();
  factory LimitOrdersResponse_OrdersPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LimitOrdersResponse_OrdersPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LimitOrdersResponse_OrdersPayload clone() => LimitOrdersResponse_OrdersPayload()..mergeFromMessage(this);
  LimitOrdersResponse_OrdersPayload copyWith(void Function(LimitOrdersResponse_OrdersPayload) updates) => super.copyWith((message) => updates(message as LimitOrdersResponse_OrdersPayload));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LimitOrdersResponse_OrdersPayload create() => LimitOrdersResponse_OrdersPayload._();
  LimitOrdersResponse_OrdersPayload createEmptyInstance() => create();
  static $pb.PbList<LimitOrdersResponse_OrdersPayload> createRepeated() => $pb.PbList<LimitOrdersResponse_OrdersPayload>();
  @$core.pragma('dart2js:noInline')
  static LimitOrdersResponse_OrdersPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LimitOrdersResponse_OrdersPayload>(create);
  static LimitOrdersResponse_OrdersPayload _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<LimitOrderModel> get orders => $_getList(0);
}

class LimitOrdersResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LimitOrdersResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<LimitOrdersResponse_OrdersPayload>(1, 'result', subBuilder: LimitOrdersResponse_OrdersPayload.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  LimitOrdersResponse._() : super();
  factory LimitOrdersResponse() => create();
  factory LimitOrdersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LimitOrdersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LimitOrdersResponse clone() => LimitOrdersResponse()..mergeFromMessage(this);
  LimitOrdersResponse copyWith(void Function(LimitOrdersResponse) updates) => super.copyWith((message) => updates(message as LimitOrdersResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LimitOrdersResponse create() => LimitOrdersResponse._();
  LimitOrdersResponse createEmptyInstance() => create();
  static $pb.PbList<LimitOrdersResponse> createRepeated() => $pb.PbList<LimitOrdersResponse>();
  @$core.pragma('dart2js:noInline')
  static LimitOrdersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LimitOrdersResponse>(create);
  static LimitOrdersResponse _defaultInstance;

  @$pb.TagNumber(1)
  LimitOrdersResponse_OrdersPayload get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(LimitOrdersResponse_OrdersPayload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  LimitOrdersResponse_OrdersPayload ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class PlaceOrderResponse_OrderPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PlaceOrderResponse.OrderPayload', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<OrderModel>(1, 'order', subBuilder: OrderModel.create)
    ..hasRequiredFields = false
  ;

  PlaceOrderResponse_OrderPayload._() : super();
  factory PlaceOrderResponse_OrderPayload() => create();
  factory PlaceOrderResponse_OrderPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlaceOrderResponse_OrderPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PlaceOrderResponse_OrderPayload clone() => PlaceOrderResponse_OrderPayload()..mergeFromMessage(this);
  PlaceOrderResponse_OrderPayload copyWith(void Function(PlaceOrderResponse_OrderPayload) updates) => super.copyWith((message) => updates(message as PlaceOrderResponse_OrderPayload));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PlaceOrderResponse_OrderPayload create() => PlaceOrderResponse_OrderPayload._();
  PlaceOrderResponse_OrderPayload createEmptyInstance() => create();
  static $pb.PbList<PlaceOrderResponse_OrderPayload> createRepeated() => $pb.PbList<PlaceOrderResponse_OrderPayload>();
  @$core.pragma('dart2js:noInline')
  static PlaceOrderResponse_OrderPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlaceOrderResponse_OrderPayload>(create);
  static PlaceOrderResponse_OrderPayload _defaultInstance;

  @$pb.TagNumber(1)
  OrderModel get order => $_getN(0);
  @$pb.TagNumber(1)
  set order(OrderModel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrder() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrder() => clearField(1);
  @$pb.TagNumber(1)
  OrderModel ensureOrder() => $_ensure(0);
}

class PlaceOrderResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PlaceOrderResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<PlaceOrderResponse_OrderPayload>(1, 'result', subBuilder: PlaceOrderResponse_OrderPayload.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  PlaceOrderResponse._() : super();
  factory PlaceOrderResponse() => create();
  factory PlaceOrderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlaceOrderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PlaceOrderResponse clone() => PlaceOrderResponse()..mergeFromMessage(this);
  PlaceOrderResponse copyWith(void Function(PlaceOrderResponse) updates) => super.copyWith((message) => updates(message as PlaceOrderResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PlaceOrderResponse create() => PlaceOrderResponse._();
  PlaceOrderResponse createEmptyInstance() => create();
  static $pb.PbList<PlaceOrderResponse> createRepeated() => $pb.PbList<PlaceOrderResponse>();
  @$core.pragma('dart2js:noInline')
  static PlaceOrderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlaceOrderResponse>(create);
  static PlaceOrderResponse _defaultInstance;

  @$pb.TagNumber(1)
  PlaceOrderResponse_OrderPayload get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(PlaceOrderResponse_OrderPayload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  PlaceOrderResponse_OrderPayload ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class OrderModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OrderModel', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'dateTime', protoName: 'dateTime')
    ..aOS(3, 'orderType', protoName: 'orderType')
    ..aOS(4, 'volume')
    ..aOS(5, 'price')
    ..aOS(6, 'asset')
    ..aOS(7, 'assetPair', protoName: 'assetPair')
    ..aOS(8, 'totalCost', protoName: 'totalCost')
    ..hasRequiredFields = false
  ;

  OrderModel._() : super();
  factory OrderModel() => create();
  factory OrderModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OrderModel clone() => OrderModel()..mergeFromMessage(this);
  OrderModel copyWith(void Function(OrderModel) updates) => super.copyWith((message) => updates(message as OrderModel));
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
  $core.String get dateTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set dateTime($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDateTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearDateTime() => clearField(2);

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LimitOrderModel', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'dateTime', protoName: 'dateTime')
    ..aOS(3, 'orderType', protoName: 'orderType')
    ..aOS(4, 'volume')
    ..aOS(5, 'price')
    ..aOS(6, 'asset')
    ..aOS(7, 'assetPair', protoName: 'assetPair')
    ..aOS(8, 'totalCost', protoName: 'totalCost')
    ..aOS(9, 'remainingVolume', protoName: 'remainingVolume')
    ..aOS(10, 'remainingOtherVolume', protoName: 'remainingOtherVolume')
    ..hasRequiredFields = false
  ;

  LimitOrderModel._() : super();
  factory LimitOrderModel() => create();
  factory LimitOrderModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LimitOrderModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LimitOrderModel clone() => LimitOrderModel()..mergeFromMessage(this);
  LimitOrderModel copyWith(void Function(LimitOrderModel) updates) => super.copyWith((message) => updates(message as LimitOrderModel));
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
  $core.String get dateTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set dateTime($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDateTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearDateTime() => clearField(2);

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

class CancelOrderResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CancelOrderResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOB(1, 'payload')
    ..aOM<Error>(2, 'error', subBuilder: Error.create)
    ..hasRequiredFields = false
  ;

  CancelOrderResponse._() : super();
  factory CancelOrderResponse() => create();
  factory CancelOrderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelOrderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CancelOrderResponse clone() => CancelOrderResponse()..mergeFromMessage(this);
  CancelOrderResponse copyWith(void Function(CancelOrderResponse) updates) => super.copyWith((message) => updates(message as CancelOrderResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CancelOrderResponse create() => CancelOrderResponse._();
  CancelOrderResponse createEmptyInstance() => create();
  static $pb.PbList<CancelOrderResponse> createRepeated() => $pb.PbList<CancelOrderResponse>();
  @$core.pragma('dart2js:noInline')
  static CancelOrderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelOrderResponse>(create);
  static CancelOrderResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get payload => $_getBF(0);
  @$pb.TagNumber(1)
  set payload($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);

  @$pb.TagNumber(2)
  Error get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(Error v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  Error ensureError() => $_ensure(1);
}

class TradesResponse_TradeModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TradesResponse.TradeModel', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'orderId', protoName: 'orderId')
    ..aOS(3, 'assetPairId', protoName: 'assetPairId')
    ..aOS(4, 'price')
    ..aOS(5, 'direction')
    ..aOS(6, 'baseAssetName', protoName: 'baseAssetName')
    ..aOS(7, 'baseVolume', protoName: 'baseVolume')
    ..aOS(8, 'quoteAssetName', protoName: 'quoteAssetName')
    ..aOS(9, 'quoteVolume', protoName: 'quoteVolume')
    ..aOM<$3.Timestamp>(10, 'timestamp', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  TradesResponse_TradeModel._() : super();
  factory TradesResponse_TradeModel() => create();
  factory TradesResponse_TradeModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TradesResponse_TradeModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TradesResponse_TradeModel clone() => TradesResponse_TradeModel()..mergeFromMessage(this);
  TradesResponse_TradeModel copyWith(void Function(TradesResponse_TradeModel) updates) => super.copyWith((message) => updates(message as TradesResponse_TradeModel));
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

class TradesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TradesResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..pc<TradesResponse_TradeModel>(1, 'trades', $pb.PbFieldType.PM, subBuilder: TradesResponse_TradeModel.create)
    ..aOM<ErrorV2>(2, 'error', subBuilder: ErrorV2.create)
    ..hasRequiredFields = false
  ;

  TradesResponse._() : super();
  factory TradesResponse() => create();
  factory TradesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TradesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TradesResponse clone() => TradesResponse()..mergeFromMessage(this);
  TradesResponse copyWith(void Function(TradesResponse) updates) => super.copyWith((message) => updates(message as TradesResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TradesResponse create() => TradesResponse._();
  TradesResponse createEmptyInstance() => create();
  static $pb.PbList<TradesResponse> createRepeated() => $pb.PbList<TradesResponse>();
  @$core.pragma('dart2js:noInline')
  static TradesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TradesResponse>(create);
  static TradesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TradesResponse_TradeModel> get trades => $_getList(0);

  @$pb.TagNumber(2)
  ErrorV2 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV2 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV2 ensureError() => $_ensure(1);
}

class FundsResponse_FundsModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FundsResponse.FundsModel', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'assetId', protoName: 'assetId')
    ..aOS(3, 'assetName', protoName: 'assetName')
    ..aOS(4, 'volume')
    ..aOS(5, 'operation')
    ..aOS(6, 'type')
    ..aOS(7, 'status')
    ..aOM<$3.Timestamp>(8, 'timestamp', subBuilder: $3.Timestamp.create)
    ..aOS(9, 'blockchainHash', protoName: 'blockchainHash')
    ..hasRequiredFields = false
  ;

  FundsResponse_FundsModel._() : super();
  factory FundsResponse_FundsModel() => create();
  factory FundsResponse_FundsModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FundsResponse_FundsModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FundsResponse_FundsModel clone() => FundsResponse_FundsModel()..mergeFromMessage(this);
  FundsResponse_FundsModel copyWith(void Function(FundsResponse_FundsModel) updates) => super.copyWith((message) => updates(message as FundsResponse_FundsModel));
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

class FundsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FundsResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..pc<FundsResponse_FundsModel>(1, 'funds', $pb.PbFieldType.PM, subBuilder: FundsResponse_FundsModel.create)
    ..aOM<ErrorV2>(2, 'error', subBuilder: ErrorV2.create)
    ..hasRequiredFields = false
  ;

  FundsResponse._() : super();
  factory FundsResponse() => create();
  factory FundsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FundsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FundsResponse clone() => FundsResponse()..mergeFromMessage(this);
  FundsResponse copyWith(void Function(FundsResponse) updates) => super.copyWith((message) => updates(message as FundsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FundsResponse create() => FundsResponse._();
  FundsResponse createEmptyInstance() => create();
  static $pb.PbList<FundsResponse> createRepeated() => $pb.PbList<FundsResponse>();
  @$core.pragma('dart2js:noInline')
  static FundsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FundsResponse>(create);
  static FundsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<FundsResponse_FundsModel> get funds => $_getList(0);

  @$pb.TagNumber(2)
  ErrorV2 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV2 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV2 ensureError() => $_ensure(1);
}

class PublicTradesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PublicTradesResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..pc<PublicTrade>(1, 'result', $pb.PbFieldType.PM, subBuilder: PublicTrade.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  PublicTradesResponse._() : super();
  factory PublicTradesResponse() => create();
  factory PublicTradesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublicTradesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PublicTradesResponse clone() => PublicTradesResponse()..mergeFromMessage(this);
  PublicTradesResponse copyWith(void Function(PublicTradesResponse) updates) => super.copyWith((message) => updates(message as PublicTradesResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublicTradesResponse create() => PublicTradesResponse._();
  PublicTradesResponse createEmptyInstance() => create();
  static $pb.PbList<PublicTradesResponse> createRepeated() => $pb.PbList<PublicTradesResponse>();
  @$core.pragma('dart2js:noInline')
  static PublicTradesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublicTradesResponse>(create);
  static PublicTradesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PublicTrade> get result => $_getList(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class PublicTrade extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PublicTrade', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'assetPairId', protoName: 'assetPairId')
    ..aOM<$3.Timestamp>(3, 'dateTime', protoName: 'dateTime', subBuilder: $3.Timestamp.create)
    ..aOS(4, 'volume')
    ..aOS(5, 'price')
    ..aOS(6, 'action')
    ..hasRequiredFields = false
  ;

  PublicTrade._() : super();
  factory PublicTrade() => create();
  factory PublicTrade.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublicTrade.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PublicTrade clone() => PublicTrade()..mergeFromMessage(this);
  PublicTrade copyWith(void Function(PublicTrade) updates) => super.copyWith((message) => updates(message as PublicTrade));
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
  $core.String get action => $_getSZ(5);
  @$pb.TagNumber(6)
  set action($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAction() => $_has(5);
  @$pb.TagNumber(6)
  void clearAction() => clearField(6);
}

class WatchlistsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WatchlistsResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..pc<Watchlist>(1, 'result', $pb.PbFieldType.PM, subBuilder: Watchlist.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  WatchlistsResponse._() : super();
  factory WatchlistsResponse() => create();
  factory WatchlistsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchlistsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WatchlistsResponse clone() => WatchlistsResponse()..mergeFromMessage(this);
  WatchlistsResponse copyWith(void Function(WatchlistsResponse) updates) => super.copyWith((message) => updates(message as WatchlistsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WatchlistsResponse create() => WatchlistsResponse._();
  WatchlistsResponse createEmptyInstance() => create();
  static $pb.PbList<WatchlistsResponse> createRepeated() => $pb.PbList<WatchlistsResponse>();
  @$core.pragma('dart2js:noInline')
  static WatchlistsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchlistsResponse>(create);
  static WatchlistsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Watchlist> get result => $_getList(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class WatchlistResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WatchlistResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<Watchlist>(1, 'result', subBuilder: Watchlist.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  WatchlistResponse._() : super();
  factory WatchlistResponse() => create();
  factory WatchlistResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchlistResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WatchlistResponse clone() => WatchlistResponse()..mergeFromMessage(this);
  WatchlistResponse copyWith(void Function(WatchlistResponse) updates) => super.copyWith((message) => updates(message as WatchlistResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WatchlistResponse create() => WatchlistResponse._();
  WatchlistResponse createEmptyInstance() => create();
  static $pb.PbList<WatchlistResponse> createRepeated() => $pb.PbList<WatchlistResponse>();
  @$core.pragma('dart2js:noInline')
  static WatchlistResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchlistResponse>(create);
  static WatchlistResponse _defaultInstance;

  @$pb.TagNumber(1)
  Watchlist get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Watchlist v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Watchlist ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class DeleteWatchlistResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteWatchlistResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<ErrorV1>(1, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  DeleteWatchlistResponse._() : super();
  factory DeleteWatchlistResponse() => create();
  factory DeleteWatchlistResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteWatchlistResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteWatchlistResponse clone() => DeleteWatchlistResponse()..mergeFromMessage(this);
  DeleteWatchlistResponse copyWith(void Function(DeleteWatchlistResponse) updates) => super.copyWith((message) => updates(message as DeleteWatchlistResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteWatchlistResponse create() => DeleteWatchlistResponse._();
  DeleteWatchlistResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteWatchlistResponse> createRepeated() => $pb.PbList<DeleteWatchlistResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteWatchlistResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteWatchlistResponse>(create);
  static DeleteWatchlistResponse _defaultInstance;

  @$pb.TagNumber(1)
  ErrorV1 get error => $_getN(0);
  @$pb.TagNumber(1)
  set error(ErrorV1 v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  ErrorV1 ensureError() => $_ensure(0);
}

class TierInfoRespone extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TierInfoRespone', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<TierInfoPayload>(1, 'result', subBuilder: TierInfoPayload.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  TierInfoRespone._() : super();
  factory TierInfoRespone() => create();
  factory TierInfoRespone.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TierInfoRespone.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TierInfoRespone clone() => TierInfoRespone()..mergeFromMessage(this);
  TierInfoRespone copyWith(void Function(TierInfoRespone) updates) => super.copyWith((message) => updates(message as TierInfoRespone));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TierInfoRespone create() => TierInfoRespone._();
  TierInfoRespone createEmptyInstance() => create();
  static $pb.PbList<TierInfoRespone> createRepeated() => $pb.PbList<TierInfoRespone>();
  @$core.pragma('dart2js:noInline')
  static TierInfoRespone getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TierInfoRespone>(create);
  static TierInfoRespone _defaultInstance;

  @$pb.TagNumber(1)
  TierInfoPayload get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(TierInfoPayload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  TierInfoPayload ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class PersonalDataResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PersonalDataResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<PersonalData>(1, 'result', subBuilder: PersonalData.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  PersonalDataResponse._() : super();
  factory PersonalDataResponse() => create();
  factory PersonalDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PersonalDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PersonalDataResponse clone() => PersonalDataResponse()..mergeFromMessage(this);
  PersonalDataResponse copyWith(void Function(PersonalDataResponse) updates) => super.copyWith((message) => updates(message as PersonalDataResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PersonalDataResponse create() => PersonalDataResponse._();
  PersonalDataResponse createEmptyInstance() => create();
  static $pb.PbList<PersonalDataResponse> createRepeated() => $pb.PbList<PersonalDataResponse>();
  @$core.pragma('dart2js:noInline')
  static PersonalDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PersonalDataResponse>(create);
  static PersonalDataResponse _defaultInstance;

  @$pb.TagNumber(1)
  PersonalData get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(PersonalData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  PersonalData ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class PersonalData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PersonalData', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'fullName', protoName: 'fullName')
    ..aOS(2, 'firstName', protoName: 'firstName')
    ..aOS(3, 'lastName', protoName: 'lastName')
    ..aOS(4, 'email')
    ..aOS(5, 'phone')
    ..aOS(6, 'country')
    ..aOS(7, 'address')
    ..aOS(8, 'city')
    ..aOS(9, 'zip')
    ..hasRequiredFields = false
  ;

  PersonalData._() : super();
  factory PersonalData() => create();
  factory PersonalData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PersonalData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PersonalData clone() => PersonalData()..mergeFromMessage(this);
  PersonalData copyWith(void Function(PersonalData) updates) => super.copyWith((message) => updates(message as PersonalData));
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

class KycDocumentsResponse_KycDocument extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('KycDocumentsResponse.KycDocument', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'type')
    ..aOS(3, 'status')
    ..aOS(4, 'rejectReason', protoName: 'rejectReason')
    ..pc<KycDocumentsResponse_KycFile>(5, 'files', $pb.PbFieldType.PM, subBuilder: KycDocumentsResponse_KycFile.create)
    ..hasRequiredFields = false
  ;

  KycDocumentsResponse_KycDocument._() : super();
  factory KycDocumentsResponse_KycDocument() => create();
  factory KycDocumentsResponse_KycDocument.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KycDocumentsResponse_KycDocument.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  KycDocumentsResponse_KycDocument clone() => KycDocumentsResponse_KycDocument()..mergeFromMessage(this);
  KycDocumentsResponse_KycDocument copyWith(void Function(KycDocumentsResponse_KycDocument) updates) => super.copyWith((message) => updates(message as KycDocumentsResponse_KycDocument));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KycDocumentsResponse_KycDocument create() => KycDocumentsResponse_KycDocument._();
  KycDocumentsResponse_KycDocument createEmptyInstance() => create();
  static $pb.PbList<KycDocumentsResponse_KycDocument> createRepeated() => $pb.PbList<KycDocumentsResponse_KycDocument>();
  @$core.pragma('dart2js:noInline')
  static KycDocumentsResponse_KycDocument getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KycDocumentsResponse_KycDocument>(create);
  static KycDocumentsResponse_KycDocument _defaultInstance;

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
  $core.List<KycDocumentsResponse_KycFile> get files => $_getList(4);
}

class KycDocumentsResponse_KycFile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('KycDocumentsResponse.KycFile', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'type')
    ..aOS(3, 'title')
    ..aOS(4, 'contentType', protoName: 'contentType')
    ..aOS(5, 'fileName', protoName: 'fileName')
    ..hasRequiredFields = false
  ;

  KycDocumentsResponse_KycFile._() : super();
  factory KycDocumentsResponse_KycFile() => create();
  factory KycDocumentsResponse_KycFile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KycDocumentsResponse_KycFile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  KycDocumentsResponse_KycFile clone() => KycDocumentsResponse_KycFile()..mergeFromMessage(this);
  KycDocumentsResponse_KycFile copyWith(void Function(KycDocumentsResponse_KycFile) updates) => super.copyWith((message) => updates(message as KycDocumentsResponse_KycFile));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KycDocumentsResponse_KycFile create() => KycDocumentsResponse_KycFile._();
  KycDocumentsResponse_KycFile createEmptyInstance() => create();
  static $pb.PbList<KycDocumentsResponse_KycFile> createRepeated() => $pb.PbList<KycDocumentsResponse_KycFile>();
  @$core.pragma('dart2js:noInline')
  static KycDocumentsResponse_KycFile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KycDocumentsResponse_KycFile>(create);
  static KycDocumentsResponse_KycFile _defaultInstance;

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

class KycDocumentsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('KycDocumentsResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..m<$core.String, KycDocumentsResponse_KycDocument>(1, 'result', entryClassName: 'KycDocumentsResponse.ResultEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: KycDocumentsResponse_KycDocument.create, packageName: const $pb.PackageName('antaresWallet'))
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  KycDocumentsResponse._() : super();
  factory KycDocumentsResponse() => create();
  factory KycDocumentsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KycDocumentsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  KycDocumentsResponse clone() => KycDocumentsResponse()..mergeFromMessage(this);
  KycDocumentsResponse copyWith(void Function(KycDocumentsResponse) updates) => super.copyWith((message) => updates(message as KycDocumentsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KycDocumentsResponse create() => KycDocumentsResponse._();
  KycDocumentsResponse createEmptyInstance() => create();
  static $pb.PbList<KycDocumentsResponse> createRepeated() => $pb.PbList<KycDocumentsResponse>();
  @$core.pragma('dart2js:noInline')
  static KycDocumentsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KycDocumentsResponse>(create);
  static KycDocumentsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, KycDocumentsResponse_KycDocument> get result => $_getMap(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class QuestionnaireResponse_QuestionnairePayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('QuestionnaireResponse.QuestionnairePayload', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..pc<QuestionnaireResponse_Question>(1, 'questionnaire', $pb.PbFieldType.PM, subBuilder: QuestionnaireResponse_Question.create)
    ..hasRequiredFields = false
  ;

  QuestionnaireResponse_QuestionnairePayload._() : super();
  factory QuestionnaireResponse_QuestionnairePayload() => create();
  factory QuestionnaireResponse_QuestionnairePayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuestionnaireResponse_QuestionnairePayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  QuestionnaireResponse_QuestionnairePayload clone() => QuestionnaireResponse_QuestionnairePayload()..mergeFromMessage(this);
  QuestionnaireResponse_QuestionnairePayload copyWith(void Function(QuestionnaireResponse_QuestionnairePayload) updates) => super.copyWith((message) => updates(message as QuestionnaireResponse_QuestionnairePayload));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuestionnaireResponse_QuestionnairePayload create() => QuestionnaireResponse_QuestionnairePayload._();
  QuestionnaireResponse_QuestionnairePayload createEmptyInstance() => create();
  static $pb.PbList<QuestionnaireResponse_QuestionnairePayload> createRepeated() => $pb.PbList<QuestionnaireResponse_QuestionnairePayload>();
  @$core.pragma('dart2js:noInline')
  static QuestionnaireResponse_QuestionnairePayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuestionnaireResponse_QuestionnairePayload>(create);
  static QuestionnaireResponse_QuestionnairePayload _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<QuestionnaireResponse_Question> get questionnaire => $_getList(0);
}

class QuestionnaireResponse_Question extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('QuestionnaireResponse.Question', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'text')
    ..aOS(3, 'type')
    ..aOB(4, 'required')
    ..aOB(5, 'hasOther', protoName: 'hasOther')
    ..pc<QuestionnaireResponse_Answer>(6, 'answers', $pb.PbFieldType.PM, subBuilder: QuestionnaireResponse_Answer.create)
    ..hasRequiredFields = false
  ;

  QuestionnaireResponse_Question._() : super();
  factory QuestionnaireResponse_Question() => create();
  factory QuestionnaireResponse_Question.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuestionnaireResponse_Question.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  QuestionnaireResponse_Question clone() => QuestionnaireResponse_Question()..mergeFromMessage(this);
  QuestionnaireResponse_Question copyWith(void Function(QuestionnaireResponse_Question) updates) => super.copyWith((message) => updates(message as QuestionnaireResponse_Question));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('QuestionnaireResponse.Answer', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'text')
    ..hasRequiredFields = false
  ;

  QuestionnaireResponse_Answer._() : super();
  factory QuestionnaireResponse_Answer() => create();
  factory QuestionnaireResponse_Answer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuestionnaireResponse_Answer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  QuestionnaireResponse_Answer clone() => QuestionnaireResponse_Answer()..mergeFromMessage(this);
  QuestionnaireResponse_Answer copyWith(void Function(QuestionnaireResponse_Answer) updates) => super.copyWith((message) => updates(message as QuestionnaireResponse_Answer));
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

class QuestionnaireResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('QuestionnaireResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<QuestionnaireResponse_QuestionnairePayload>(1, 'result', subBuilder: QuestionnaireResponse_QuestionnairePayload.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  QuestionnaireResponse._() : super();
  factory QuestionnaireResponse() => create();
  factory QuestionnaireResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuestionnaireResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  QuestionnaireResponse clone() => QuestionnaireResponse()..mergeFromMessage(this);
  QuestionnaireResponse copyWith(void Function(QuestionnaireResponse) updates) => super.copyWith((message) => updates(message as QuestionnaireResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuestionnaireResponse create() => QuestionnaireResponse._();
  QuestionnaireResponse createEmptyInstance() => create();
  static $pb.PbList<QuestionnaireResponse> createRepeated() => $pb.PbList<QuestionnaireResponse>();
  @$core.pragma('dart2js:noInline')
  static QuestionnaireResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuestionnaireResponse>(create);
  static QuestionnaireResponse _defaultInstance;

  @$pb.TagNumber(1)
  QuestionnaireResponse_QuestionnairePayload get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(QuestionnaireResponse_QuestionnairePayload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  QuestionnaireResponse_QuestionnairePayload ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class TierInfoPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TierInfoPayload', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<CurrentTier>(1, 'currentTier', protoName: 'currentTier', subBuilder: CurrentTier.create)
    ..aOM<NextTier>(2, 'nextTier', protoName: 'nextTier', subBuilder: NextTier.create)
    ..aOM<UpgradeRequest>(3, 'upgradeRequest', protoName: 'upgradeRequest', subBuilder: UpgradeRequest.create)
    ..aOB(4, 'questionnaireAnswered', protoName: 'questionnaireAnswered')
    ..hasRequiredFields = false
  ;

  TierInfoPayload._() : super();
  factory TierInfoPayload() => create();
  factory TierInfoPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TierInfoPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TierInfoPayload clone() => TierInfoPayload()..mergeFromMessage(this);
  TierInfoPayload copyWith(void Function(TierInfoPayload) updates) => super.copyWith((message) => updates(message as TierInfoPayload));
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

class WalletsResponse_GetWalletsPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WalletsResponse.GetWalletsPayload', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<WalletsResponse_LykkeWalletsPayload>(1, 'lykke', subBuilder: WalletsResponse_LykkeWalletsPayload.create)
    ..aOS(2, 'multiSig', protoName: 'multiSig')
    ..aOS(3, 'coloredMultiSig', protoName: 'coloredMultiSig')
    ..aOS(4, 'solarCoinAddress', protoName: 'solarCoinAddress')
    ..hasRequiredFields = false
  ;

  WalletsResponse_GetWalletsPayload._() : super();
  factory WalletsResponse_GetWalletsPayload() => create();
  factory WalletsResponse_GetWalletsPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletsResponse_GetWalletsPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WalletsResponse_GetWalletsPayload clone() => WalletsResponse_GetWalletsPayload()..mergeFromMessage(this);
  WalletsResponse_GetWalletsPayload copyWith(void Function(WalletsResponse_GetWalletsPayload) updates) => super.copyWith((message) => updates(message as WalletsResponse_GetWalletsPayload));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WalletsResponse_GetWalletsPayload create() => WalletsResponse_GetWalletsPayload._();
  WalletsResponse_GetWalletsPayload createEmptyInstance() => create();
  static $pb.PbList<WalletsResponse_GetWalletsPayload> createRepeated() => $pb.PbList<WalletsResponse_GetWalletsPayload>();
  @$core.pragma('dart2js:noInline')
  static WalletsResponse_GetWalletsPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletsResponse_GetWalletsPayload>(create);
  static WalletsResponse_GetWalletsPayload _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WalletsResponse.LykkeWalletsPayload', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..pc<WalletsResponse_WalletAsset>(1, 'assets', $pb.PbFieldType.PM, subBuilder: WalletsResponse_WalletAsset.create)
    ..aOS(2, 'equity')
    ..hasRequiredFields = false
  ;

  WalletsResponse_LykkeWalletsPayload._() : super();
  factory WalletsResponse_LykkeWalletsPayload() => create();
  factory WalletsResponse_LykkeWalletsPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletsResponse_LykkeWalletsPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WalletsResponse_LykkeWalletsPayload clone() => WalletsResponse_LykkeWalletsPayload()..mergeFromMessage(this);
  WalletsResponse_LykkeWalletsPayload copyWith(void Function(WalletsResponse_LykkeWalletsPayload) updates) => super.copyWith((message) => updates(message as WalletsResponse_LykkeWalletsPayload));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WalletsResponse.WalletAsset', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'name')
    ..aOS(3, 'balance')
    ..aOS(4, 'symbol')
    ..aOS(5, 'assetPairId', protoName: 'assetPairId')
    ..aOB(6, 'hideIfZero', protoName: 'hideIfZero')
    ..aOS(7, 'issuerId', protoName: 'issuerId')
    ..a<$core.int>(8, 'accuracy', $pb.PbFieldType.O3)
    ..aOS(9, 'categoryId', protoName: 'categoryId')
    ..aOS(10, 'amountInBase', protoName: 'amountInBase')
    ..aOS(11, 'reserved')
    ..hasRequiredFields = false
  ;

  WalletsResponse_WalletAsset._() : super();
  factory WalletsResponse_WalletAsset() => create();
  factory WalletsResponse_WalletAsset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletsResponse_WalletAsset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WalletsResponse_WalletAsset clone() => WalletsResponse_WalletAsset()..mergeFromMessage(this);
  WalletsResponse_WalletAsset copyWith(void Function(WalletsResponse_WalletAsset) updates) => super.copyWith((message) => updates(message as WalletsResponse_WalletAsset));
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

class WalletsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WalletsResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<WalletsResponse_GetWalletsPayload>(1, 'result', subBuilder: WalletsResponse_GetWalletsPayload.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  WalletsResponse._() : super();
  factory WalletsResponse() => create();
  factory WalletsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WalletsResponse clone() => WalletsResponse()..mergeFromMessage(this);
  WalletsResponse copyWith(void Function(WalletsResponse) updates) => super.copyWith((message) => updates(message as WalletsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WalletsResponse create() => WalletsResponse._();
  WalletsResponse createEmptyInstance() => create();
  static $pb.PbList<WalletsResponse> createRepeated() => $pb.PbList<WalletsResponse>();
  @$core.pragma('dart2js:noInline')
  static WalletsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletsResponse>(create);
  static WalletsResponse _defaultInstance;

  @$pb.TagNumber(1)
  WalletsResponse_GetWalletsPayload get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(WalletsResponse_GetWalletsPayload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  WalletsResponse_GetWalletsPayload ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class WalletResponse_WalletPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WalletResponse.WalletPayload', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'name')
    ..aOS(3, 'balance')
    ..aOS(4, 'symbol')
    ..aOS(5, 'assetPairId', protoName: 'assetPairId')
    ..aOB(6, 'hideIfZero', protoName: 'hideIfZero')
    ..aOS(7, 'issuerId', protoName: 'issuerId')
    ..a<$core.int>(8, 'accuracy', $pb.PbFieldType.O3)
    ..aOS(9, 'categoryId', protoName: 'categoryId')
    ..aOS(10, 'amountInBase', protoName: 'amountInBase')
    ..aOS(11, 'reserved')
    ..hasRequiredFields = false
  ;

  WalletResponse_WalletPayload._() : super();
  factory WalletResponse_WalletPayload() => create();
  factory WalletResponse_WalletPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletResponse_WalletPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WalletResponse_WalletPayload clone() => WalletResponse_WalletPayload()..mergeFromMessage(this);
  WalletResponse_WalletPayload copyWith(void Function(WalletResponse_WalletPayload) updates) => super.copyWith((message) => updates(message as WalletResponse_WalletPayload));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WalletResponse_WalletPayload create() => WalletResponse_WalletPayload._();
  WalletResponse_WalletPayload createEmptyInstance() => create();
  static $pb.PbList<WalletResponse_WalletPayload> createRepeated() => $pb.PbList<WalletResponse_WalletPayload>();
  @$core.pragma('dart2js:noInline')
  static WalletResponse_WalletPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletResponse_WalletPayload>(create);
  static WalletResponse_WalletPayload _defaultInstance;

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

class WalletResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WalletResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<WalletResponse_WalletPayload>(1, 'result', subBuilder: WalletResponse_WalletPayload.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  WalletResponse._() : super();
  factory WalletResponse() => create();
  factory WalletResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WalletResponse clone() => WalletResponse()..mergeFromMessage(this);
  WalletResponse copyWith(void Function(WalletResponse) updates) => super.copyWith((message) => updates(message as WalletResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WalletResponse create() => WalletResponse._();
  WalletResponse createEmptyInstance() => create();
  static $pb.PbList<WalletResponse> createRepeated() => $pb.PbList<WalletResponse>();
  @$core.pragma('dart2js:noInline')
  static WalletResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletResponse>(create);
  static WalletResponse _defaultInstance;

  @$pb.TagNumber(1)
  WalletResponse_WalletPayload get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(WalletResponse_WalletPayload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  WalletResponse_WalletPayload ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class GenerateWalletResponse_WalletAddress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GenerateWalletResponse.WalletAddress', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'address')
    ..aOM<GenerateWalletResponse_BcnAddressExtension>(2, 'addressExtension', protoName: 'addressExtension', subBuilder: GenerateWalletResponse_BcnAddressExtension.create)
    ..hasRequiredFields = false
  ;

  GenerateWalletResponse_WalletAddress._() : super();
  factory GenerateWalletResponse_WalletAddress() => create();
  factory GenerateWalletResponse_WalletAddress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateWalletResponse_WalletAddress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GenerateWalletResponse_WalletAddress clone() => GenerateWalletResponse_WalletAddress()..mergeFromMessage(this);
  GenerateWalletResponse_WalletAddress copyWith(void Function(GenerateWalletResponse_WalletAddress) updates) => super.copyWith((message) => updates(message as GenerateWalletResponse_WalletAddress));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenerateWalletResponse_WalletAddress create() => GenerateWalletResponse_WalletAddress._();
  GenerateWalletResponse_WalletAddress createEmptyInstance() => create();
  static $pb.PbList<GenerateWalletResponse_WalletAddress> createRepeated() => $pb.PbList<GenerateWalletResponse_WalletAddress>();
  @$core.pragma('dart2js:noInline')
  static GenerateWalletResponse_WalletAddress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateWalletResponse_WalletAddress>(create);
  static GenerateWalletResponse_WalletAddress _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  GenerateWalletResponse_BcnAddressExtension get addressExtension => $_getN(1);
  @$pb.TagNumber(2)
  set addressExtension(GenerateWalletResponse_BcnAddressExtension v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddressExtension() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddressExtension() => clearField(2);
  @$pb.TagNumber(2)
  GenerateWalletResponse_BcnAddressExtension ensureAddressExtension() => $_ensure(1);
}

class GenerateWalletResponse_BcnAddressExtension extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GenerateWalletResponse.BcnAddressExtension', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'addressExtensionDisplayName', protoName: 'addressExtensionDisplayName')
    ..aOS(2, 'baseAddressDisplayName', protoName: 'baseAddressDisplayName')
    ..aOS(3, 'depositAddressExtension', protoName: 'depositAddressExtension')
    ..aOS(4, 'typeForDeposit', protoName: 'typeForDeposit')
    ..aOS(5, 'typeForWithdrawal', protoName: 'typeForWithdrawal')
    ..hasRequiredFields = false
  ;

  GenerateWalletResponse_BcnAddressExtension._() : super();
  factory GenerateWalletResponse_BcnAddressExtension() => create();
  factory GenerateWalletResponse_BcnAddressExtension.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateWalletResponse_BcnAddressExtension.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GenerateWalletResponse_BcnAddressExtension clone() => GenerateWalletResponse_BcnAddressExtension()..mergeFromMessage(this);
  GenerateWalletResponse_BcnAddressExtension copyWith(void Function(GenerateWalletResponse_BcnAddressExtension) updates) => super.copyWith((message) => updates(message as GenerateWalletResponse_BcnAddressExtension));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenerateWalletResponse_BcnAddressExtension create() => GenerateWalletResponse_BcnAddressExtension._();
  GenerateWalletResponse_BcnAddressExtension createEmptyInstance() => create();
  static $pb.PbList<GenerateWalletResponse_BcnAddressExtension> createRepeated() => $pb.PbList<GenerateWalletResponse_BcnAddressExtension>();
  @$core.pragma('dart2js:noInline')
  static GenerateWalletResponse_BcnAddressExtension getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateWalletResponse_BcnAddressExtension>(create);
  static GenerateWalletResponse_BcnAddressExtension _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get addressExtensionDisplayName => $_getSZ(0);
  @$pb.TagNumber(1)
  set addressExtensionDisplayName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddressExtensionDisplayName() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddressExtensionDisplayName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get baseAddressDisplayName => $_getSZ(1);
  @$pb.TagNumber(2)
  set baseAddressDisplayName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBaseAddressDisplayName() => $_has(1);
  @$pb.TagNumber(2)
  void clearBaseAddressDisplayName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get depositAddressExtension => $_getSZ(2);
  @$pb.TagNumber(3)
  set depositAddressExtension($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDepositAddressExtension() => $_has(2);
  @$pb.TagNumber(3)
  void clearDepositAddressExtension() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get typeForDeposit => $_getSZ(3);
  @$pb.TagNumber(4)
  set typeForDeposit($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTypeForDeposit() => $_has(3);
  @$pb.TagNumber(4)
  void clearTypeForDeposit() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get typeForWithdrawal => $_getSZ(4);
  @$pb.TagNumber(5)
  set typeForWithdrawal($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTypeForWithdrawal() => $_has(4);
  @$pb.TagNumber(5)
  void clearTypeForWithdrawal() => clearField(5);
}

class GenerateWalletResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GenerateWalletResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<GenerateWalletResponse_WalletAddress>(1, 'result', subBuilder: GenerateWalletResponse_WalletAddress.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  GenerateWalletResponse._() : super();
  factory GenerateWalletResponse() => create();
  factory GenerateWalletResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateWalletResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GenerateWalletResponse clone() => GenerateWalletResponse()..mergeFromMessage(this);
  GenerateWalletResponse copyWith(void Function(GenerateWalletResponse) updates) => super.copyWith((message) => updates(message as GenerateWalletResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenerateWalletResponse create() => GenerateWalletResponse._();
  GenerateWalletResponse createEmptyInstance() => create();
  static $pb.PbList<GenerateWalletResponse> createRepeated() => $pb.PbList<GenerateWalletResponse>();
  @$core.pragma('dart2js:noInline')
  static GenerateWalletResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateWalletResponse>(create);
  static GenerateWalletResponse _defaultInstance;

  @$pb.TagNumber(1)
  GenerateWalletResponse_WalletAddress get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(GenerateWalletResponse_WalletAddress v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  GenerateWalletResponse_WalletAddress ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class SwiftCredentialsResponse_SwiftCredentials extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SwiftCredentialsResponse.SwiftCredentials', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'bic')
    ..aOS(2, 'accountNumber', protoName: 'accountNumber')
    ..aOS(3, 'accountName', protoName: 'accountName')
    ..aOS(4, 'purposeOfPayment', protoName: 'purposeOfPayment')
    ..aOS(5, 'bankAddress', protoName: 'bankAddress')
    ..aOS(6, 'companyAddress', protoName: 'companyAddress')
    ..aOS(7, 'correspondentAccount', protoName: 'correspondentAccount')
    ..hasRequiredFields = false
  ;

  SwiftCredentialsResponse_SwiftCredentials._() : super();
  factory SwiftCredentialsResponse_SwiftCredentials() => create();
  factory SwiftCredentialsResponse_SwiftCredentials.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCredentialsResponse_SwiftCredentials.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SwiftCredentialsResponse_SwiftCredentials clone() => SwiftCredentialsResponse_SwiftCredentials()..mergeFromMessage(this);
  SwiftCredentialsResponse_SwiftCredentials copyWith(void Function(SwiftCredentialsResponse_SwiftCredentials) updates) => super.copyWith((message) => updates(message as SwiftCredentialsResponse_SwiftCredentials));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCredentialsResponse_SwiftCredentials create() => SwiftCredentialsResponse_SwiftCredentials._();
  SwiftCredentialsResponse_SwiftCredentials createEmptyInstance() => create();
  static $pb.PbList<SwiftCredentialsResponse_SwiftCredentials> createRepeated() => $pb.PbList<SwiftCredentialsResponse_SwiftCredentials>();
  @$core.pragma('dart2js:noInline')
  static SwiftCredentialsResponse_SwiftCredentials getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCredentialsResponse_SwiftCredentials>(create);
  static SwiftCredentialsResponse_SwiftCredentials _defaultInstance;

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

class SwiftCredentialsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SwiftCredentialsResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<SwiftCredentialsResponse_SwiftCredentials>(1, 'result', subBuilder: SwiftCredentialsResponse_SwiftCredentials.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  SwiftCredentialsResponse._() : super();
  factory SwiftCredentialsResponse() => create();
  factory SwiftCredentialsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCredentialsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SwiftCredentialsResponse clone() => SwiftCredentialsResponse()..mergeFromMessage(this);
  SwiftCredentialsResponse copyWith(void Function(SwiftCredentialsResponse) updates) => super.copyWith((message) => updates(message as SwiftCredentialsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCredentialsResponse create() => SwiftCredentialsResponse._();
  SwiftCredentialsResponse createEmptyInstance() => create();
  static $pb.PbList<SwiftCredentialsResponse> createRepeated() => $pb.PbList<SwiftCredentialsResponse>();
  @$core.pragma('dart2js:noInline')
  static SwiftCredentialsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCredentialsResponse>(create);
  static SwiftCredentialsResponse _defaultInstance;

  @$pb.TagNumber(1)
  SwiftCredentialsResponse_SwiftCredentials get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(SwiftCredentialsResponse_SwiftCredentials v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  SwiftCredentialsResponse_SwiftCredentials ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class CountryPhoneCodesResponse_CountryPhoneCodes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CountryPhoneCodesResponse.CountryPhoneCodes', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'current')
    ..pc<Country>(2, 'countriesList', $pb.PbFieldType.PM, protoName: 'countriesList', subBuilder: Country.create)
    ..hasRequiredFields = false
  ;

  CountryPhoneCodesResponse_CountryPhoneCodes._() : super();
  factory CountryPhoneCodesResponse_CountryPhoneCodes() => create();
  factory CountryPhoneCodesResponse_CountryPhoneCodes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CountryPhoneCodesResponse_CountryPhoneCodes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CountryPhoneCodesResponse_CountryPhoneCodes clone() => CountryPhoneCodesResponse_CountryPhoneCodes()..mergeFromMessage(this);
  CountryPhoneCodesResponse_CountryPhoneCodes copyWith(void Function(CountryPhoneCodesResponse_CountryPhoneCodes) updates) => super.copyWith((message) => updates(message as CountryPhoneCodesResponse_CountryPhoneCodes));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CountryPhoneCodesResponse_CountryPhoneCodes create() => CountryPhoneCodesResponse_CountryPhoneCodes._();
  CountryPhoneCodesResponse_CountryPhoneCodes createEmptyInstance() => create();
  static $pb.PbList<CountryPhoneCodesResponse_CountryPhoneCodes> createRepeated() => $pb.PbList<CountryPhoneCodesResponse_CountryPhoneCodes>();
  @$core.pragma('dart2js:noInline')
  static CountryPhoneCodesResponse_CountryPhoneCodes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CountryPhoneCodesResponse_CountryPhoneCodes>(create);
  static CountryPhoneCodesResponse_CountryPhoneCodes _defaultInstance;

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

class CountryPhoneCodesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CountryPhoneCodesResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<CountryPhoneCodesResponse_CountryPhoneCodes>(1, 'result', subBuilder: CountryPhoneCodesResponse_CountryPhoneCodes.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  CountryPhoneCodesResponse._() : super();
  factory CountryPhoneCodesResponse() => create();
  factory CountryPhoneCodesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CountryPhoneCodesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CountryPhoneCodesResponse clone() => CountryPhoneCodesResponse()..mergeFromMessage(this);
  CountryPhoneCodesResponse copyWith(void Function(CountryPhoneCodesResponse) updates) => super.copyWith((message) => updates(message as CountryPhoneCodesResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CountryPhoneCodesResponse create() => CountryPhoneCodesResponse._();
  CountryPhoneCodesResponse createEmptyInstance() => create();
  static $pb.PbList<CountryPhoneCodesResponse> createRepeated() => $pb.PbList<CountryPhoneCodesResponse>();
  @$core.pragma('dart2js:noInline')
  static CountryPhoneCodesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CountryPhoneCodesResponse>(create);
  static CountryPhoneCodesResponse _defaultInstance;

  @$pb.TagNumber(1)
  CountryPhoneCodesResponse_CountryPhoneCodes get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(CountryPhoneCodesResponse_CountryPhoneCodes v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  CountryPhoneCodesResponse_CountryPhoneCodes ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class BankCardPaymentDetailsResponse_BankCardPaymentDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BankCardPaymentDetailsResponse.BankCardPaymentDetails', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..a<$core.double>(1, 'amount', $pb.PbFieldType.OD)
    ..aOS(2, 'assetId', protoName: 'assetId')
    ..aOS(3, 'walletId', protoName: 'walletId')
    ..aOS(4, 'firstName', protoName: 'firstName')
    ..aOS(5, 'lastName', protoName: 'lastName')
    ..aOS(6, 'city')
    ..aOS(7, 'zip')
    ..aOS(8, 'address')
    ..aOS(9, 'country')
    ..aOS(10, 'email')
    ..aOS(11, 'phone')
    ..aOS(12, 'depositOption', protoName: 'depositOption')
    ..aOS(13, 'okUrl', protoName: 'okUrl')
    ..aOS(14, 'failUrl', protoName: 'failUrl')
    ..hasRequiredFields = false
  ;

  BankCardPaymentDetailsResponse_BankCardPaymentDetails._() : super();
  factory BankCardPaymentDetailsResponse_BankCardPaymentDetails() => create();
  factory BankCardPaymentDetailsResponse_BankCardPaymentDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BankCardPaymentDetailsResponse_BankCardPaymentDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BankCardPaymentDetailsResponse_BankCardPaymentDetails clone() => BankCardPaymentDetailsResponse_BankCardPaymentDetails()..mergeFromMessage(this);
  BankCardPaymentDetailsResponse_BankCardPaymentDetails copyWith(void Function(BankCardPaymentDetailsResponse_BankCardPaymentDetails) updates) => super.copyWith((message) => updates(message as BankCardPaymentDetailsResponse_BankCardPaymentDetails));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BankCardPaymentDetailsResponse_BankCardPaymentDetails create() => BankCardPaymentDetailsResponse_BankCardPaymentDetails._();
  BankCardPaymentDetailsResponse_BankCardPaymentDetails createEmptyInstance() => create();
  static $pb.PbList<BankCardPaymentDetailsResponse_BankCardPaymentDetails> createRepeated() => $pb.PbList<BankCardPaymentDetailsResponse_BankCardPaymentDetails>();
  @$core.pragma('dart2js:noInline')
  static BankCardPaymentDetailsResponse_BankCardPaymentDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BankCardPaymentDetailsResponse_BankCardPaymentDetails>(create);
  static BankCardPaymentDetailsResponse_BankCardPaymentDetails _defaultInstance;

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

class BankCardPaymentDetailsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BankCardPaymentDetailsResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<BankCardPaymentDetailsResponse_BankCardPaymentDetails>(1, 'result', subBuilder: BankCardPaymentDetailsResponse_BankCardPaymentDetails.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  BankCardPaymentDetailsResponse._() : super();
  factory BankCardPaymentDetailsResponse() => create();
  factory BankCardPaymentDetailsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BankCardPaymentDetailsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BankCardPaymentDetailsResponse clone() => BankCardPaymentDetailsResponse()..mergeFromMessage(this);
  BankCardPaymentDetailsResponse copyWith(void Function(BankCardPaymentDetailsResponse) updates) => super.copyWith((message) => updates(message as BankCardPaymentDetailsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BankCardPaymentDetailsResponse create() => BankCardPaymentDetailsResponse._();
  BankCardPaymentDetailsResponse createEmptyInstance() => create();
  static $pb.PbList<BankCardPaymentDetailsResponse> createRepeated() => $pb.PbList<BankCardPaymentDetailsResponse>();
  @$core.pragma('dart2js:noInline')
  static BankCardPaymentDetailsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BankCardPaymentDetailsResponse>(create);
  static BankCardPaymentDetailsResponse _defaultInstance;

  @$pb.TagNumber(1)
  BankCardPaymentDetailsResponse_BankCardPaymentDetails get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(BankCardPaymentDetailsResponse_BankCardPaymentDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  BankCardPaymentDetailsResponse_BankCardPaymentDetails ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class BankCardPaymentUrlResponse_BankCardPaymentUrl extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BankCardPaymentUrlResponse.BankCardPaymentUrl', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'url')
    ..aOS(2, 'okUrl', protoName: 'okUrl')
    ..aOS(3, 'failUrl', protoName: 'failUrl')
    ..aOS(4, 'reloadRegex', protoName: 'reloadRegex')
    ..aOS(5, 'urlsToFormatRegex', protoName: 'urlsToFormatRegex')
    ..hasRequiredFields = false
  ;

  BankCardPaymentUrlResponse_BankCardPaymentUrl._() : super();
  factory BankCardPaymentUrlResponse_BankCardPaymentUrl() => create();
  factory BankCardPaymentUrlResponse_BankCardPaymentUrl.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BankCardPaymentUrlResponse_BankCardPaymentUrl.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BankCardPaymentUrlResponse_BankCardPaymentUrl clone() => BankCardPaymentUrlResponse_BankCardPaymentUrl()..mergeFromMessage(this);
  BankCardPaymentUrlResponse_BankCardPaymentUrl copyWith(void Function(BankCardPaymentUrlResponse_BankCardPaymentUrl) updates) => super.copyWith((message) => updates(message as BankCardPaymentUrlResponse_BankCardPaymentUrl));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BankCardPaymentUrlResponse_BankCardPaymentUrl create() => BankCardPaymentUrlResponse_BankCardPaymentUrl._();
  BankCardPaymentUrlResponse_BankCardPaymentUrl createEmptyInstance() => create();
  static $pb.PbList<BankCardPaymentUrlResponse_BankCardPaymentUrl> createRepeated() => $pb.PbList<BankCardPaymentUrlResponse_BankCardPaymentUrl>();
  @$core.pragma('dart2js:noInline')
  static BankCardPaymentUrlResponse_BankCardPaymentUrl getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BankCardPaymentUrlResponse_BankCardPaymentUrl>(create);
  static BankCardPaymentUrlResponse_BankCardPaymentUrl _defaultInstance;

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

class BankCardPaymentUrlResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BankCardPaymentUrlResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<BankCardPaymentUrlResponse_BankCardPaymentUrl>(1, 'result', subBuilder: BankCardPaymentUrlResponse_BankCardPaymentUrl.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  BankCardPaymentUrlResponse._() : super();
  factory BankCardPaymentUrlResponse() => create();
  factory BankCardPaymentUrlResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BankCardPaymentUrlResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BankCardPaymentUrlResponse clone() => BankCardPaymentUrlResponse()..mergeFromMessage(this);
  BankCardPaymentUrlResponse copyWith(void Function(BankCardPaymentUrlResponse) updates) => super.copyWith((message) => updates(message as BankCardPaymentUrlResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BankCardPaymentUrlResponse create() => BankCardPaymentUrlResponse._();
  BankCardPaymentUrlResponse createEmptyInstance() => create();
  static $pb.PbList<BankCardPaymentUrlResponse> createRepeated() => $pb.PbList<BankCardPaymentUrlResponse>();
  @$core.pragma('dart2js:noInline')
  static BankCardPaymentUrlResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BankCardPaymentUrlResponse>(create);
  static BankCardPaymentUrlResponse _defaultInstance;

  @$pb.TagNumber(1)
  BankCardPaymentUrlResponse_BankCardPaymentUrl get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(BankCardPaymentUrlResponse_BankCardPaymentUrl v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  BankCardPaymentUrlResponse_BankCardPaymentUrl ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class EthereumSettingsResponse_EthereumSettings extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EthereumSettingsResponse.EthereumSettings', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..a<$core.int>(1, 'stepsCount', $pb.PbFieldType.O3, protoName: 'stepsCount')
    ..aOS(2, 'ethAssetId', protoName: 'ethAssetId')
    ..aOS(3, 'stepGas', protoName: 'stepGas')
    ..aOS(4, 'minGas', protoName: 'minGas')
    ..aOS(5, 'maxGas', protoName: 'maxGas')
    ..aOS(6, 'minGasPrice', protoName: 'minGasPrice')
    ..aOS(7, 'maxGasPrice', protoName: 'maxGasPrice')
    ..aOM<EthereumSettingsResponse_BitcoinFee>(8, 'bitcoin', subBuilder: EthereumSettingsResponse_BitcoinFee.create)
    ..hasRequiredFields = false
  ;

  EthereumSettingsResponse_EthereumSettings._() : super();
  factory EthereumSettingsResponse_EthereumSettings() => create();
  factory EthereumSettingsResponse_EthereumSettings.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthereumSettingsResponse_EthereumSettings.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EthereumSettingsResponse_EthereumSettings clone() => EthereumSettingsResponse_EthereumSettings()..mergeFromMessage(this);
  EthereumSettingsResponse_EthereumSettings copyWith(void Function(EthereumSettingsResponse_EthereumSettings) updates) => super.copyWith((message) => updates(message as EthereumSettingsResponse_EthereumSettings));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EthereumSettingsResponse_EthereumSettings create() => EthereumSettingsResponse_EthereumSettings._();
  EthereumSettingsResponse_EthereumSettings createEmptyInstance() => create();
  static $pb.PbList<EthereumSettingsResponse_EthereumSettings> createRepeated() => $pb.PbList<EthereumSettingsResponse_EthereumSettings>();
  @$core.pragma('dart2js:noInline')
  static EthereumSettingsResponse_EthereumSettings getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthereumSettingsResponse_EthereumSettings>(create);
  static EthereumSettingsResponse_EthereumSettings _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EthereumSettingsResponse.BitcoinFee', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'minFee', protoName: 'minFee')
    ..aOS(2, 'maxFee', protoName: 'maxFee')
    ..hasRequiredFields = false
  ;

  EthereumSettingsResponse_BitcoinFee._() : super();
  factory EthereumSettingsResponse_BitcoinFee() => create();
  factory EthereumSettingsResponse_BitcoinFee.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthereumSettingsResponse_BitcoinFee.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EthereumSettingsResponse_BitcoinFee clone() => EthereumSettingsResponse_BitcoinFee()..mergeFromMessage(this);
  EthereumSettingsResponse_BitcoinFee copyWith(void Function(EthereumSettingsResponse_BitcoinFee) updates) => super.copyWith((message) => updates(message as EthereumSettingsResponse_BitcoinFee));
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

class EthereumSettingsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EthereumSettingsResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<EthereumSettingsResponse_EthereumSettings>(1, 'result', subBuilder: EthereumSettingsResponse_EthereumSettings.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  EthereumSettingsResponse._() : super();
  factory EthereumSettingsResponse() => create();
  factory EthereumSettingsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthereumSettingsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EthereumSettingsResponse clone() => EthereumSettingsResponse()..mergeFromMessage(this);
  EthereumSettingsResponse copyWith(void Function(EthereumSettingsResponse) updates) => super.copyWith((message) => updates(message as EthereumSettingsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EthereumSettingsResponse create() => EthereumSettingsResponse._();
  EthereumSettingsResponse createEmptyInstance() => create();
  static $pb.PbList<EthereumSettingsResponse> createRepeated() => $pb.PbList<EthereumSettingsResponse>();
  @$core.pragma('dart2js:noInline')
  static EthereumSettingsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthereumSettingsResponse>(create);
  static EthereumSettingsResponse _defaultInstance;

  @$pb.TagNumber(1)
  EthereumSettingsResponse_EthereumSettings get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(EthereumSettingsResponse_EthereumSettings v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  EthereumSettingsResponse_EthereumSettings ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class CryptoDepositAddressResponse_CryptoDepositAddress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CryptoDepositAddressResponse.CryptoDepositAddress', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'address')
    ..aOS(2, 'baseAddress', protoName: 'baseAddress')
    ..aOS(3, 'addressExtension', protoName: 'addressExtension')
    ..hasRequiredFields = false
  ;

  CryptoDepositAddressResponse_CryptoDepositAddress._() : super();
  factory CryptoDepositAddressResponse_CryptoDepositAddress() => create();
  factory CryptoDepositAddressResponse_CryptoDepositAddress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CryptoDepositAddressResponse_CryptoDepositAddress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CryptoDepositAddressResponse_CryptoDepositAddress clone() => CryptoDepositAddressResponse_CryptoDepositAddress()..mergeFromMessage(this);
  CryptoDepositAddressResponse_CryptoDepositAddress copyWith(void Function(CryptoDepositAddressResponse_CryptoDepositAddress) updates) => super.copyWith((message) => updates(message as CryptoDepositAddressResponse_CryptoDepositAddress));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CryptoDepositAddressResponse_CryptoDepositAddress create() => CryptoDepositAddressResponse_CryptoDepositAddress._();
  CryptoDepositAddressResponse_CryptoDepositAddress createEmptyInstance() => create();
  static $pb.PbList<CryptoDepositAddressResponse_CryptoDepositAddress> createRepeated() => $pb.PbList<CryptoDepositAddressResponse_CryptoDepositAddress>();
  @$core.pragma('dart2js:noInline')
  static CryptoDepositAddressResponse_CryptoDepositAddress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CryptoDepositAddressResponse_CryptoDepositAddress>(create);
  static CryptoDepositAddressResponse_CryptoDepositAddress _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get baseAddress => $_getSZ(1);
  @$pb.TagNumber(2)
  set baseAddress($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBaseAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearBaseAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get addressExtension => $_getSZ(2);
  @$pb.TagNumber(3)
  set addressExtension($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddressExtension() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddressExtension() => clearField(3);
}

class CryptoDepositAddressResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CryptoDepositAddressResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<CryptoDepositAddressResponse_CryptoDepositAddress>(1, 'address', subBuilder: CryptoDepositAddressResponse_CryptoDepositAddress.create)
    ..aOM<ErrorV2>(2, 'error', subBuilder: ErrorV2.create)
    ..hasRequiredFields = false
  ;

  CryptoDepositAddressResponse._() : super();
  factory CryptoDepositAddressResponse() => create();
  factory CryptoDepositAddressResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CryptoDepositAddressResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CryptoDepositAddressResponse clone() => CryptoDepositAddressResponse()..mergeFromMessage(this);
  CryptoDepositAddressResponse copyWith(void Function(CryptoDepositAddressResponse) updates) => super.copyWith((message) => updates(message as CryptoDepositAddressResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CryptoDepositAddressResponse create() => CryptoDepositAddressResponse._();
  CryptoDepositAddressResponse createEmptyInstance() => create();
  static $pb.PbList<CryptoDepositAddressResponse> createRepeated() => $pb.PbList<CryptoDepositAddressResponse>();
  @$core.pragma('dart2js:noInline')
  static CryptoDepositAddressResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CryptoDepositAddressResponse>(create);
  static CryptoDepositAddressResponse _defaultInstance;

  @$pb.TagNumber(1)
  CryptoDepositAddressResponse_CryptoDepositAddress get address => $_getN(0);
  @$pb.TagNumber(1)
  set address(CryptoDepositAddressResponse_CryptoDepositAddress v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
  @$pb.TagNumber(1)
  CryptoDepositAddressResponse_CryptoDepositAddress ensureAddress() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV2 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV2 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV2 ensureError() => $_ensure(1);
}

class WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WithdrawalCryptoInfoResponse.WithdrawalCryptoInfo', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'baseAddressTitle', protoName: 'baseAddressTitle')
    ..aOB(2, 'addressExtensionMandatory', protoName: 'addressExtensionMandatory')
    ..aOS(3, 'addressExtensionTitle', protoName: 'addressExtensionTitle')
    ..hasRequiredFields = false
  ;

  WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo._() : super();
  factory WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo() => create();
  factory WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo clone() => WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo()..mergeFromMessage(this);
  WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo copyWith(void Function(WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo) updates) => super.copyWith((message) => updates(message as WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo create() => WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo._();
  WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo createEmptyInstance() => create();
  static $pb.PbList<WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo> createRepeated() => $pb.PbList<WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo>();
  @$core.pragma('dart2js:noInline')
  static WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo>(create);
  static WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo _defaultInstance;

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

class WithdrawalCryptoInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WithdrawalCryptoInfoResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo>(1, 'withdrawalInfo', protoName: 'withdrawalInfo', subBuilder: WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo.create)
    ..aOM<ErrorV2>(2, 'error', subBuilder: ErrorV2.create)
    ..hasRequiredFields = false
  ;

  WithdrawalCryptoInfoResponse._() : super();
  factory WithdrawalCryptoInfoResponse() => create();
  factory WithdrawalCryptoInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithdrawalCryptoInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WithdrawalCryptoInfoResponse clone() => WithdrawalCryptoInfoResponse()..mergeFromMessage(this);
  WithdrawalCryptoInfoResponse copyWith(void Function(WithdrawalCryptoInfoResponse) updates) => super.copyWith((message) => updates(message as WithdrawalCryptoInfoResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WithdrawalCryptoInfoResponse create() => WithdrawalCryptoInfoResponse._();
  WithdrawalCryptoInfoResponse createEmptyInstance() => create();
  static $pb.PbList<WithdrawalCryptoInfoResponse> createRepeated() => $pb.PbList<WithdrawalCryptoInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static WithdrawalCryptoInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithdrawalCryptoInfoResponse>(create);
  static WithdrawalCryptoInfoResponse _defaultInstance;

  @$pb.TagNumber(1)
  WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo get withdrawalInfo => $_getN(0);
  @$pb.TagNumber(1)
  set withdrawalInfo(WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWithdrawalInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearWithdrawalInfo() => clearField(1);
  @$pb.TagNumber(1)
  WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo ensureWithdrawalInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV2 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV2 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV2 ensureError() => $_ensure(1);
}

class SwiftCashoutInfoResponse_SwiftCashoutInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SwiftCashoutInfoResponse.SwiftCashoutInfo', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'bic')
    ..aOS(2, 'accNumber', protoName: 'accNumber')
    ..aOS(3, 'accName', protoName: 'accName')
    ..aOS(4, 'bankName', protoName: 'bankName')
    ..aOS(5, 'accHolderAddress', protoName: 'accHolderAddress')
    ..aOS(6, 'accHolderCity', protoName: 'accHolderCity')
    ..aOS(7, 'accHolderCountry', protoName: 'accHolderCountry')
    ..aOS(8, 'accHolderZipCode', protoName: 'accHolderZipCode')
    ..hasRequiredFields = false
  ;

  SwiftCashoutInfoResponse_SwiftCashoutInfo._() : super();
  factory SwiftCashoutInfoResponse_SwiftCashoutInfo() => create();
  factory SwiftCashoutInfoResponse_SwiftCashoutInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCashoutInfoResponse_SwiftCashoutInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SwiftCashoutInfoResponse_SwiftCashoutInfo clone() => SwiftCashoutInfoResponse_SwiftCashoutInfo()..mergeFromMessage(this);
  SwiftCashoutInfoResponse_SwiftCashoutInfo copyWith(void Function(SwiftCashoutInfoResponse_SwiftCashoutInfo) updates) => super.copyWith((message) => updates(message as SwiftCashoutInfoResponse_SwiftCashoutInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutInfoResponse_SwiftCashoutInfo create() => SwiftCashoutInfoResponse_SwiftCashoutInfo._();
  SwiftCashoutInfoResponse_SwiftCashoutInfo createEmptyInstance() => create();
  static $pb.PbList<SwiftCashoutInfoResponse_SwiftCashoutInfo> createRepeated() => $pb.PbList<SwiftCashoutInfoResponse_SwiftCashoutInfo>();
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutInfoResponse_SwiftCashoutInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCashoutInfoResponse_SwiftCashoutInfo>(create);
  static SwiftCashoutInfoResponse_SwiftCashoutInfo _defaultInstance;

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

class SwiftCashoutInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SwiftCashoutInfoResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<SwiftCashoutInfoResponse_SwiftCashoutInfo>(1, 'result', subBuilder: SwiftCashoutInfoResponse_SwiftCashoutInfo.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  SwiftCashoutInfoResponse._() : super();
  factory SwiftCashoutInfoResponse() => create();
  factory SwiftCashoutInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCashoutInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SwiftCashoutInfoResponse clone() => SwiftCashoutInfoResponse()..mergeFromMessage(this);
  SwiftCashoutInfoResponse copyWith(void Function(SwiftCashoutInfoResponse) updates) => super.copyWith((message) => updates(message as SwiftCashoutInfoResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutInfoResponse create() => SwiftCashoutInfoResponse._();
  SwiftCashoutInfoResponse createEmptyInstance() => create();
  static $pb.PbList<SwiftCashoutInfoResponse> createRepeated() => $pb.PbList<SwiftCashoutInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCashoutInfoResponse>(create);
  static SwiftCashoutInfoResponse _defaultInstance;

  @$pb.TagNumber(1)
  SwiftCashoutInfoResponse_SwiftCashoutInfo get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(SwiftCashoutInfoResponse_SwiftCashoutInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  SwiftCashoutInfoResponse_SwiftCashoutInfo ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class OffchainChannelKeyResponse_OffchainChannel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OffchainChannelKeyResponse.OffchainChannel', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'key')
    ..hasRequiredFields = false
  ;

  OffchainChannelKeyResponse_OffchainChannel._() : super();
  factory OffchainChannelKeyResponse_OffchainChannel() => create();
  factory OffchainChannelKeyResponse_OffchainChannel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OffchainChannelKeyResponse_OffchainChannel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OffchainChannelKeyResponse_OffchainChannel clone() => OffchainChannelKeyResponse_OffchainChannel()..mergeFromMessage(this);
  OffchainChannelKeyResponse_OffchainChannel copyWith(void Function(OffchainChannelKeyResponse_OffchainChannel) updates) => super.copyWith((message) => updates(message as OffchainChannelKeyResponse_OffchainChannel));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OffchainChannelKeyResponse_OffchainChannel create() => OffchainChannelKeyResponse_OffchainChannel._();
  OffchainChannelKeyResponse_OffchainChannel createEmptyInstance() => create();
  static $pb.PbList<OffchainChannelKeyResponse_OffchainChannel> createRepeated() => $pb.PbList<OffchainChannelKeyResponse_OffchainChannel>();
  @$core.pragma('dart2js:noInline')
  static OffchainChannelKeyResponse_OffchainChannel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OffchainChannelKeyResponse_OffchainChannel>(create);
  static OffchainChannelKeyResponse_OffchainChannel _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
}

class OffchainChannelKeyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OffchainChannelKeyResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<OffchainChannelKeyResponse_OffchainChannel>(1, 'result', subBuilder: OffchainChannelKeyResponse_OffchainChannel.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  OffchainChannelKeyResponse._() : super();
  factory OffchainChannelKeyResponse() => create();
  factory OffchainChannelKeyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OffchainChannelKeyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OffchainChannelKeyResponse clone() => OffchainChannelKeyResponse()..mergeFromMessage(this);
  OffchainChannelKeyResponse copyWith(void Function(OffchainChannelKeyResponse) updates) => super.copyWith((message) => updates(message as OffchainChannelKeyResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OffchainChannelKeyResponse create() => OffchainChannelKeyResponse._();
  OffchainChannelKeyResponse createEmptyInstance() => create();
  static $pb.PbList<OffchainChannelKeyResponse> createRepeated() => $pb.PbList<OffchainChannelKeyResponse>();
  @$core.pragma('dart2js:noInline')
  static OffchainChannelKeyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OffchainChannelKeyResponse>(create);
  static OffchainChannelKeyResponse _defaultInstance;

  @$pb.TagNumber(1)
  OffchainChannelKeyResponse_OffchainChannel get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(OffchainChannelKeyResponse_OffchainChannel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  OffchainChannelKeyResponse_OffchainChannel ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class SwiftCashoutResponse_SwiftCashoutData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SwiftCashoutResponse.SwiftCashoutData', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'transferId', protoName: 'transferId')
    ..aOS(2, 'transactionHex', protoName: 'transactionHex')
    ..aOS(3, 'operationResult', protoName: 'operationResult')
    ..hasRequiredFields = false
  ;

  SwiftCashoutResponse_SwiftCashoutData._() : super();
  factory SwiftCashoutResponse_SwiftCashoutData() => create();
  factory SwiftCashoutResponse_SwiftCashoutData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCashoutResponse_SwiftCashoutData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SwiftCashoutResponse_SwiftCashoutData clone() => SwiftCashoutResponse_SwiftCashoutData()..mergeFromMessage(this);
  SwiftCashoutResponse_SwiftCashoutData copyWith(void Function(SwiftCashoutResponse_SwiftCashoutData) updates) => super.copyWith((message) => updates(message as SwiftCashoutResponse_SwiftCashoutData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutResponse_SwiftCashoutData create() => SwiftCashoutResponse_SwiftCashoutData._();
  SwiftCashoutResponse_SwiftCashoutData createEmptyInstance() => create();
  static $pb.PbList<SwiftCashoutResponse_SwiftCashoutData> createRepeated() => $pb.PbList<SwiftCashoutResponse_SwiftCashoutData>();
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutResponse_SwiftCashoutData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCashoutResponse_SwiftCashoutData>(create);
  static SwiftCashoutResponse_SwiftCashoutData _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get transferId => $_getSZ(0);
  @$pb.TagNumber(1)
  set transferId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTransferId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransferId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get transactionHex => $_getSZ(1);
  @$pb.TagNumber(2)
  set transactionHex($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTransactionHex() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransactionHex() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get operationResult => $_getSZ(2);
  @$pb.TagNumber(3)
  set operationResult($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOperationResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperationResult() => clearField(3);
}

class SwiftCashoutResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SwiftCashoutResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<SwiftCashoutResponse_SwiftCashoutData>(1, 'result', subBuilder: SwiftCashoutResponse_SwiftCashoutData.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  SwiftCashoutResponse._() : super();
  factory SwiftCashoutResponse() => create();
  factory SwiftCashoutResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCashoutResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SwiftCashoutResponse clone() => SwiftCashoutResponse()..mergeFromMessage(this);
  SwiftCashoutResponse copyWith(void Function(SwiftCashoutResponse) updates) => super.copyWith((message) => updates(message as SwiftCashoutResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutResponse create() => SwiftCashoutResponse._();
  SwiftCashoutResponse createEmptyInstance() => create();
  static $pb.PbList<SwiftCashoutResponse> createRepeated() => $pb.PbList<SwiftCashoutResponse>();
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCashoutResponse>(create);
  static SwiftCashoutResponse _defaultInstance;

  @$pb.TagNumber(1)
  SwiftCashoutResponse_SwiftCashoutData get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(SwiftCashoutResponse_SwiftCashoutData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  SwiftCashoutResponse_SwiftCashoutData ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class SwiftCashoutFinalizeResponse_OffchainTradeRespone extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SwiftCashoutFinalizeResponse.OffchainTradeRespone', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'transferId', protoName: 'transferId')
    ..aOS(2, 'transactionHex', protoName: 'transactionHex')
    ..aOS(3, 'operationResult', protoName: 'operationResult')
    ..aOM<SwiftCashoutFinalizeResponse_OffchainOrder>(4, 'order', subBuilder: SwiftCashoutFinalizeResponse_OffchainOrder.create)
    ..hasRequiredFields = false
  ;

  SwiftCashoutFinalizeResponse_OffchainTradeRespone._() : super();
  factory SwiftCashoutFinalizeResponse_OffchainTradeRespone() => create();
  factory SwiftCashoutFinalizeResponse_OffchainTradeRespone.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCashoutFinalizeResponse_OffchainTradeRespone.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SwiftCashoutFinalizeResponse_OffchainTradeRespone clone() => SwiftCashoutFinalizeResponse_OffchainTradeRespone()..mergeFromMessage(this);
  SwiftCashoutFinalizeResponse_OffchainTradeRespone copyWith(void Function(SwiftCashoutFinalizeResponse_OffchainTradeRespone) updates) => super.copyWith((message) => updates(message as SwiftCashoutFinalizeResponse_OffchainTradeRespone));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutFinalizeResponse_OffchainTradeRespone create() => SwiftCashoutFinalizeResponse_OffchainTradeRespone._();
  SwiftCashoutFinalizeResponse_OffchainTradeRespone createEmptyInstance() => create();
  static $pb.PbList<SwiftCashoutFinalizeResponse_OffchainTradeRespone> createRepeated() => $pb.PbList<SwiftCashoutFinalizeResponse_OffchainTradeRespone>();
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutFinalizeResponse_OffchainTradeRespone getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCashoutFinalizeResponse_OffchainTradeRespone>(create);
  static SwiftCashoutFinalizeResponse_OffchainTradeRespone _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get transferId => $_getSZ(0);
  @$pb.TagNumber(1)
  set transferId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTransferId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransferId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get transactionHex => $_getSZ(1);
  @$pb.TagNumber(2)
  set transactionHex($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTransactionHex() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransactionHex() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get operationResult => $_getSZ(2);
  @$pb.TagNumber(3)
  set operationResult($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOperationResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperationResult() => clearField(3);

  @$pb.TagNumber(4)
  SwiftCashoutFinalizeResponse_OffchainOrder get order => $_getN(3);
  @$pb.TagNumber(4)
  set order(SwiftCashoutFinalizeResponse_OffchainOrder v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOrder() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrder() => clearField(4);
  @$pb.TagNumber(4)
  SwiftCashoutFinalizeResponse_OffchainOrder ensureOrder() => $_ensure(3);
}

class SwiftCashoutFinalizeResponse_OffchainOrder extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SwiftCashoutFinalizeResponse.OffchainOrder', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'dateTime', protoName: 'dateTime')
    ..aOS(3, 'orderType', protoName: 'orderType')
    ..aOS(4, 'volume')
    ..aOS(5, 'price')
    ..aOS(6, 'asset')
    ..aOS(7, 'assetPair', protoName: 'assetPair')
    ..aOS(8, 'totalCost', protoName: 'totalCost')
    ..aOS(9, 'remainingVolume', protoName: 'remainingVolume')
    ..aOS(10, 'remainingOtherVolume', protoName: 'remainingOtherVolume')
    ..hasRequiredFields = false
  ;

  SwiftCashoutFinalizeResponse_OffchainOrder._() : super();
  factory SwiftCashoutFinalizeResponse_OffchainOrder() => create();
  factory SwiftCashoutFinalizeResponse_OffchainOrder.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCashoutFinalizeResponse_OffchainOrder.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SwiftCashoutFinalizeResponse_OffchainOrder clone() => SwiftCashoutFinalizeResponse_OffchainOrder()..mergeFromMessage(this);
  SwiftCashoutFinalizeResponse_OffchainOrder copyWith(void Function(SwiftCashoutFinalizeResponse_OffchainOrder) updates) => super.copyWith((message) => updates(message as SwiftCashoutFinalizeResponse_OffchainOrder));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutFinalizeResponse_OffchainOrder create() => SwiftCashoutFinalizeResponse_OffchainOrder._();
  SwiftCashoutFinalizeResponse_OffchainOrder createEmptyInstance() => create();
  static $pb.PbList<SwiftCashoutFinalizeResponse_OffchainOrder> createRepeated() => $pb.PbList<SwiftCashoutFinalizeResponse_OffchainOrder>();
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutFinalizeResponse_OffchainOrder getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCashoutFinalizeResponse_OffchainOrder>(create);
  static SwiftCashoutFinalizeResponse_OffchainOrder _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get dateTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set dateTime($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDateTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearDateTime() => clearField(2);

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

class SwiftCashoutFinalizeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SwiftCashoutFinalizeResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<SwiftCashoutFinalizeResponse_OffchainTradeRespone>(1, 'result', subBuilder: SwiftCashoutFinalizeResponse_OffchainTradeRespone.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  SwiftCashoutFinalizeResponse._() : super();
  factory SwiftCashoutFinalizeResponse() => create();
  factory SwiftCashoutFinalizeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCashoutFinalizeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SwiftCashoutFinalizeResponse clone() => SwiftCashoutFinalizeResponse()..mergeFromMessage(this);
  SwiftCashoutFinalizeResponse copyWith(void Function(SwiftCashoutFinalizeResponse) updates) => super.copyWith((message) => updates(message as SwiftCashoutFinalizeResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutFinalizeResponse create() => SwiftCashoutFinalizeResponse._();
  SwiftCashoutFinalizeResponse createEmptyInstance() => create();
  static $pb.PbList<SwiftCashoutFinalizeResponse> createRepeated() => $pb.PbList<SwiftCashoutFinalizeResponse>();
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutFinalizeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCashoutFinalizeResponse>(create);
  static SwiftCashoutFinalizeResponse _defaultInstance;

  @$pb.TagNumber(1)
  SwiftCashoutFinalizeResponse_OffchainTradeRespone get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(SwiftCashoutFinalizeResponse_OffchainTradeRespone v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  SwiftCashoutFinalizeResponse_OffchainTradeRespone ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class AppSettingsResponse_AppSettingsData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AppSettingsResponse.AppSettingsData', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..a<$core.int>(1, 'RateRefreshPeriod', $pb.PbFieldType.O3, protoName: 'RateRefreshPeriod')
    ..aOM<AppSettingsResponse_ApiAsset>(2, 'BaseAsset', protoName: 'BaseAsset', subBuilder: AppSettingsResponse_ApiAsset.create)
    ..aOB(3, 'signOrder', protoName: 'signOrder')
    ..aOS(4, 'DepositUrl', protoName: 'DepositUrl')
    ..aOB(5, 'DebugMode', protoName: 'DebugMode')
    ..aOM<AppSettingsResponse_ApiRefundSettings>(6, 'RefundSettings', protoName: 'RefundSettings', subBuilder: AppSettingsResponse_ApiRefundSettings.create)
    ..a<$core.double>(7, 'MarketOrderPriceDeviation', $pb.PbFieldType.OD, protoName: 'MarketOrderPriceDeviation')
    ..aOM<AppSettingsResponse_ApiFeeSettings>(8, 'FeeSettings', protoName: 'FeeSettings', subBuilder: AppSettingsResponse_ApiFeeSettings.create)
    ..hasRequiredFields = false
  ;

  AppSettingsResponse_AppSettingsData._() : super();
  factory AppSettingsResponse_AppSettingsData() => create();
  factory AppSettingsResponse_AppSettingsData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppSettingsResponse_AppSettingsData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AppSettingsResponse_AppSettingsData clone() => AppSettingsResponse_AppSettingsData()..mergeFromMessage(this);
  AppSettingsResponse_AppSettingsData copyWith(void Function(AppSettingsResponse_AppSettingsData) updates) => super.copyWith((message) => updates(message as AppSettingsResponse_AppSettingsData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppSettingsResponse_AppSettingsData create() => AppSettingsResponse_AppSettingsData._();
  AppSettingsResponse_AppSettingsData createEmptyInstance() => create();
  static $pb.PbList<AppSettingsResponse_AppSettingsData> createRepeated() => $pb.PbList<AppSettingsResponse_AppSettingsData>();
  @$core.pragma('dart2js:noInline')
  static AppSettingsResponse_AppSettingsData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppSettingsResponse_AppSettingsData>(create);
  static AppSettingsResponse_AppSettingsData _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AppSettingsResponse.ApiAsset', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'name')
    ..a<$core.int>(3, 'accuracy', $pb.PbFieldType.O3)
    ..aOS(4, 'symbol')
    ..aOB(5, 'hideWithdraw', protoName: 'hideWithdraw')
    ..aOB(6, 'hideDeposit', protoName: 'hideDeposit')
    ..aOB(7, 'kycNeeded', protoName: 'kycNeeded')
    ..aOB(8, 'bankCardsDepositEnabled', protoName: 'bankCardsDepositEnabled')
    ..aOB(9, 'swiftDepositEnabled', protoName: 'swiftDepositEnabled')
    ..aOB(10, 'blockchainDepositEnabled', protoName: 'blockchainDepositEnabled')
    ..aOB(11, 'otherDepositOptionsEnabled', protoName: 'otherDepositOptionsEnabled')
    ..aOS(12, 'categoryId', protoName: 'categoryId')
    ..hasRequiredFields = false
  ;

  AppSettingsResponse_ApiAsset._() : super();
  factory AppSettingsResponse_ApiAsset() => create();
  factory AppSettingsResponse_ApiAsset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppSettingsResponse_ApiAsset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AppSettingsResponse_ApiAsset clone() => AppSettingsResponse_ApiAsset()..mergeFromMessage(this);
  AppSettingsResponse_ApiAsset copyWith(void Function(AppSettingsResponse_ApiAsset) updates) => super.copyWith((message) => updates(message as AppSettingsResponse_ApiAsset));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AppSettingsResponse.ApiRefundSettings', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'address')
    ..hasRequiredFields = false
  ;

  AppSettingsResponse_ApiRefundSettings._() : super();
  factory AppSettingsResponse_ApiRefundSettings() => create();
  factory AppSettingsResponse_ApiRefundSettings.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppSettingsResponse_ApiRefundSettings.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AppSettingsResponse_ApiRefundSettings clone() => AppSettingsResponse_ApiRefundSettings()..mergeFromMessage(this);
  AppSettingsResponse_ApiRefundSettings copyWith(void Function(AppSettingsResponse_ApiRefundSettings) updates) => super.copyWith((message) => updates(message as AppSettingsResponse_ApiRefundSettings));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AppSettingsResponse.ApiFeeSettings', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..a<$core.double>(1, 'BankCardsFeeSizePercentage', $pb.PbFieldType.OD, protoName: 'BankCardsFeeSizePercentage')
    ..pc<CashOutFee>(2, 'CashOut', $pb.PbFieldType.PM, protoName: 'CashOut', subBuilder: CashOutFee.create)
    ..hasRequiredFields = false
  ;

  AppSettingsResponse_ApiFeeSettings._() : super();
  factory AppSettingsResponse_ApiFeeSettings() => create();
  factory AppSettingsResponse_ApiFeeSettings.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppSettingsResponse_ApiFeeSettings.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AppSettingsResponse_ApiFeeSettings clone() => AppSettingsResponse_ApiFeeSettings()..mergeFromMessage(this);
  AppSettingsResponse_ApiFeeSettings copyWith(void Function(AppSettingsResponse_ApiFeeSettings) updates) => super.copyWith((message) => updates(message as AppSettingsResponse_ApiFeeSettings));
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

class AppSettingsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AppSettingsResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<AppSettingsResponse_AppSettingsData>(1, 'result', subBuilder: AppSettingsResponse_AppSettingsData.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  AppSettingsResponse._() : super();
  factory AppSettingsResponse() => create();
  factory AppSettingsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppSettingsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AppSettingsResponse clone() => AppSettingsResponse()..mergeFromMessage(this);
  AppSettingsResponse copyWith(void Function(AppSettingsResponse) updates) => super.copyWith((message) => updates(message as AppSettingsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppSettingsResponse create() => AppSettingsResponse._();
  AppSettingsResponse createEmptyInstance() => create();
  static $pb.PbList<AppSettingsResponse> createRepeated() => $pb.PbList<AppSettingsResponse>();
  @$core.pragma('dart2js:noInline')
  static AppSettingsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppSettingsResponse>(create);
  static AppSettingsResponse _defaultInstance;

  @$pb.TagNumber(1)
  AppSettingsResponse_AppSettingsData get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(AppSettingsResponse_AppSettingsData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  AppSettingsResponse_AppSettingsData ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class PrivateWalletsResponse_PrivateWalletsPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PrivateWalletsResponse.PrivateWalletsPayload', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..pc<PrivateWallet>(1, 'wallets', $pb.PbFieldType.PM, subBuilder: PrivateWallet.create)
    ..hasRequiredFields = false
  ;

  PrivateWalletsResponse_PrivateWalletsPayload._() : super();
  factory PrivateWalletsResponse_PrivateWalletsPayload() => create();
  factory PrivateWalletsResponse_PrivateWalletsPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrivateWalletsResponse_PrivateWalletsPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PrivateWalletsResponse_PrivateWalletsPayload clone() => PrivateWalletsResponse_PrivateWalletsPayload()..mergeFromMessage(this);
  PrivateWalletsResponse_PrivateWalletsPayload copyWith(void Function(PrivateWalletsResponse_PrivateWalletsPayload) updates) => super.copyWith((message) => updates(message as PrivateWalletsResponse_PrivateWalletsPayload));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PrivateWalletsResponse_PrivateWalletsPayload create() => PrivateWalletsResponse_PrivateWalletsPayload._();
  PrivateWalletsResponse_PrivateWalletsPayload createEmptyInstance() => create();
  static $pb.PbList<PrivateWalletsResponse_PrivateWalletsPayload> createRepeated() => $pb.PbList<PrivateWalletsResponse_PrivateWalletsPayload>();
  @$core.pragma('dart2js:noInline')
  static PrivateWalletsResponse_PrivateWalletsPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrivateWalletsResponse_PrivateWalletsPayload>(create);
  static PrivateWalletsResponse_PrivateWalletsPayload _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PrivateWallet> get wallets => $_getList(0);
}

class PrivateWalletsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PrivateWalletsResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<PrivateWalletsResponse_PrivateWalletsPayload>(1, 'result', subBuilder: PrivateWalletsResponse_PrivateWalletsPayload.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  PrivateWalletsResponse._() : super();
  factory PrivateWalletsResponse() => create();
  factory PrivateWalletsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrivateWalletsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PrivateWalletsResponse clone() => PrivateWalletsResponse()..mergeFromMessage(this);
  PrivateWalletsResponse copyWith(void Function(PrivateWalletsResponse) updates) => super.copyWith((message) => updates(message as PrivateWalletsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PrivateWalletsResponse create() => PrivateWalletsResponse._();
  PrivateWalletsResponse createEmptyInstance() => create();
  static $pb.PbList<PrivateWalletsResponse> createRepeated() => $pb.PbList<PrivateWalletsResponse>();
  @$core.pragma('dart2js:noInline')
  static PrivateWalletsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrivateWalletsResponse>(create);
  static PrivateWalletsResponse _defaultInstance;

  @$pb.TagNumber(1)
  PrivateWalletsResponse_PrivateWalletsPayload get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(PrivateWalletsResponse_PrivateWalletsPayload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  PrivateWalletsResponse_PrivateWalletsPayload ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PrivateWallet', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..oo(0, [5])
    ..aOS(1, 'address')
    ..aOS(2, 'name')
    ..aOS(3, 'encodedPrivateKey', protoName: 'encodedPrivateKey')
    ..aOB(4, 'isColdStorage', protoName: 'isColdStorage')
    ..a<$core.int>(5, 'number', $pb.PbFieldType.O3)
    ..aOS(6, 'smallIconUrl', protoName: 'smallIconUrl')
    ..aOS(7, 'mediumIconUrl', protoName: 'mediumIconUrl')
    ..aOS(8, 'largeIconUrl', protoName: 'largeIconUrl')
    ..pc<BalanceRecord>(9, 'balances', $pb.PbFieldType.PM, subBuilder: BalanceRecord.create)
    ..aOS(10, 'blockchain')
    ..hasRequiredFields = false
  ;

  PrivateWallet._() : super();
  factory PrivateWallet() => create();
  factory PrivateWallet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrivateWallet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PrivateWallet clone() => PrivateWallet()..mergeFromMessage(this);
  PrivateWallet copyWith(void Function(PrivateWallet) updates) => super.copyWith((message) => updates(message as PrivateWallet));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BalanceRecord', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetId', protoName: 'assetId')
    ..aOS(2, 'balance')
    ..aOS(3, 'baseAssetId', protoName: 'baseAssetId')
    ..aOS(4, 'amountInBase', protoName: 'amountInBase')
    ..hasRequiredFields = false
  ;

  BalanceRecord._() : super();
  factory BalanceRecord() => create();
  factory BalanceRecord.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BalanceRecord.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BalanceRecord clone() => BalanceRecord()..mergeFromMessage(this);
  BalanceRecord copyWith(void Function(BalanceRecord) updates) => super.copyWith((message) => updates(message as BalanceRecord));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CashOutFee', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetId', protoName: 'assetId')
    ..a<$core.double>(2, 'size', $pb.PbFieldType.OD)
    ..aOS(3, 'type')
    ..hasRequiredFields = false
  ;

  CashOutFee._() : super();
  factory CashOutFee() => create();
  factory CashOutFee.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CashOutFee.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CashOutFee clone() => CashOutFee()..mergeFromMessage(this);
  CashOutFee copyWith(void Function(CashOutFee) updates) => super.copyWith((message) => updates(message as CashOutFee));
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

class SwiftCashoutFeeResponse_SwiftCashoutFee extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SwiftCashoutFeeResponse.SwiftCashoutFee', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'size')
    ..aOS(2, 'assetId', protoName: 'assetId')
    ..aOS(3, 'country')
    ..hasRequiredFields = false
  ;

  SwiftCashoutFeeResponse_SwiftCashoutFee._() : super();
  factory SwiftCashoutFeeResponse_SwiftCashoutFee() => create();
  factory SwiftCashoutFeeResponse_SwiftCashoutFee.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCashoutFeeResponse_SwiftCashoutFee.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SwiftCashoutFeeResponse_SwiftCashoutFee clone() => SwiftCashoutFeeResponse_SwiftCashoutFee()..mergeFromMessage(this);
  SwiftCashoutFeeResponse_SwiftCashoutFee copyWith(void Function(SwiftCashoutFeeResponse_SwiftCashoutFee) updates) => super.copyWith((message) => updates(message as SwiftCashoutFeeResponse_SwiftCashoutFee));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutFeeResponse_SwiftCashoutFee create() => SwiftCashoutFeeResponse_SwiftCashoutFee._();
  SwiftCashoutFeeResponse_SwiftCashoutFee createEmptyInstance() => create();
  static $pb.PbList<SwiftCashoutFeeResponse_SwiftCashoutFee> createRepeated() => $pb.PbList<SwiftCashoutFeeResponse_SwiftCashoutFee>();
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutFeeResponse_SwiftCashoutFee getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCashoutFeeResponse_SwiftCashoutFee>(create);
  static SwiftCashoutFeeResponse_SwiftCashoutFee _defaultInstance;

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

class SwiftCashoutFeeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SwiftCashoutFeeResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<SwiftCashoutFeeResponse_SwiftCashoutFee>(1, 'result', subBuilder: SwiftCashoutFeeResponse_SwiftCashoutFee.create)
    ..aOM<ErrorV1>(2, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  SwiftCashoutFeeResponse._() : super();
  factory SwiftCashoutFeeResponse() => create();
  factory SwiftCashoutFeeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwiftCashoutFeeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SwiftCashoutFeeResponse clone() => SwiftCashoutFeeResponse()..mergeFromMessage(this);
  SwiftCashoutFeeResponse copyWith(void Function(SwiftCashoutFeeResponse) updates) => super.copyWith((message) => updates(message as SwiftCashoutFeeResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutFeeResponse create() => SwiftCashoutFeeResponse._();
  SwiftCashoutFeeResponse createEmptyInstance() => create();
  static $pb.PbList<SwiftCashoutFeeResponse> createRepeated() => $pb.PbList<SwiftCashoutFeeResponse>();
  @$core.pragma('dart2js:noInline')
  static SwiftCashoutFeeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwiftCashoutFeeResponse>(create);
  static SwiftCashoutFeeResponse _defaultInstance;

  @$pb.TagNumber(1)
  SwiftCashoutFeeResponse_SwiftCashoutFee get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(SwiftCashoutFeeResponse_SwiftCashoutFee v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  SwiftCashoutFeeResponse_SwiftCashoutFee ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ErrorV1 get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(ErrorV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  ErrorV1 ensureError() => $_ensure(1);
}

class CurrentTier extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CurrentTier', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'tier')
    ..aOS(2, 'asset')
    ..aOS(3, 'current')
    ..aOS(4, 'maxLimit', protoName: 'maxLimit')
    ..hasRequiredFields = false
  ;

  CurrentTier._() : super();
  factory CurrentTier() => create();
  factory CurrentTier.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CurrentTier.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CurrentTier clone() => CurrentTier()..mergeFromMessage(this);
  CurrentTier copyWith(void Function(CurrentTier) updates) => super.copyWith((message) => updates(message as CurrentTier));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NextTier', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'tier')
    ..aOS(2, 'maxLimit', protoName: 'maxLimit')
    ..pPS(3, 'documents')
    ..hasRequiredFields = false
  ;

  NextTier._() : super();
  factory NextTier() => create();
  factory NextTier.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NextTier.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NextTier clone() => NextTier()..mergeFromMessage(this);
  NextTier copyWith(void Function(NextTier) updates) => super.copyWith((message) => updates(message as NextTier));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpgradeRequest', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'tier')
    ..aOS(2, 'submitDate', protoName: 'submitDate')
    ..aOS(3, 'status')
    ..aOS(4, 'limit')
    ..hasRequiredFields = false
  ;

  UpgradeRequest._() : super();
  factory UpgradeRequest() => create();
  factory UpgradeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpgradeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpgradeRequest clone() => UpgradeRequest()..mergeFromMessage(this);
  UpgradeRequest copyWith(void Function(UpgradeRequest) updates) => super.copyWith((message) => updates(message as UpgradeRequest));
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
  $core.String get submitDate => $_getSZ(1);
  @$pb.TagNumber(2)
  set submitDate($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubmitDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubmitDate() => clearField(2);

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AssetCategory', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'name')
    ..aOS(3, 'iconUrl', protoName: 'iconUrl')
    ..hasRequiredFields = false
  ;

  AssetCategory._() : super();
  factory AssetCategory() => create();
  factory AssetCategory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetCategory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AssetCategory clone() => AssetCategory()..mergeFromMessage(this);
  AssetCategory copyWith(void Function(AssetCategory) updates) => super.copyWith((message) => updates(message as AssetCategory));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Asset', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'name')
    ..aOS(3, 'symbol')
    ..aOS(4, 'displayId', protoName: 'displayId')
    ..a<$core.int>(5, 'accuracy', $pb.PbFieldType.O3)
    ..aOB(6, 'kycNeeded', protoName: 'kycNeeded')
    ..aOS(7, 'categoryId', protoName: 'categoryId')
    ..aOB(8, 'cardDeposit', protoName: 'cardDeposit')
    ..aOB(9, 'swiftDeposit', protoName: 'swiftDeposit')
    ..aOB(10, 'blockchainDeposit', protoName: 'blockchainDeposit')
    ..aOB(11, 'swiftWithdrawal', protoName: 'swiftWithdrawal')
    ..aOB(12, 'forwardWithdrawal', protoName: 'forwardWithdrawal')
    ..aOB(13, 'crosschainWithdrawal', protoName: 'crosschainWithdrawal')
    ..aOB(14, 'isTrusted', protoName: 'isTrusted')
    ..aOB(15, 'canBeBase', protoName: 'canBeBase')
    ..hasRequiredFields = false
  ;

  Asset._() : super();
  factory Asset() => create();
  factory Asset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Asset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Asset clone() => Asset()..mergeFromMessage(this);
  Asset copyWith(void Function(Asset) updates) => super.copyWith((message) => updates(message as Asset));
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
}

class AssetPair extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AssetPair', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..a<$core.int>(2, 'accuracy', $pb.PbFieldType.O3)
    ..aOS(3, 'baseAssetId', protoName: 'baseAssetId')
    ..a<$core.int>(4, 'invertedAccuracy', $pb.PbFieldType.O3, protoName: 'invertedAccuracy')
    ..aOS(5, 'name')
    ..aOS(6, 'quotingAssetId', protoName: 'quotingAssetId')
    ..hasRequiredFields = false
  ;

  AssetPair._() : super();
  factory AssetPair() => create();
  factory AssetPair.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetPair.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AssetPair clone() => AssetPair()..mergeFromMessage(this);
  AssetPair copyWith(void Function(AssetPair) updates) => super.copyWith((message) => updates(message as AssetPair));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PriceUpdate', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetPairId', protoName: 'assetPairId')
    ..aOS(2, 'bid')
    ..aOS(3, 'ask')
    ..aOM<$3.Timestamp>(4, 'timestamp', subBuilder: $3.Timestamp.create)
    ..aOS(5, 'volumeBase24H', protoName: 'volumeBase24H')
    ..aOS(6, 'volumeQuote24H', protoName: 'volumeQuote24H')
    ..aOS(7, 'priceChange24H', protoName: 'priceChange24H')
    ..hasRequiredFields = false
  ;

  PriceUpdate._() : super();
  factory PriceUpdate() => create();
  factory PriceUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PriceUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PriceUpdate clone() => PriceUpdate()..mergeFromMessage(this);
  PriceUpdate copyWith(void Function(PriceUpdate) updates) => super.copyWith((message) => updates(message as PriceUpdate));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Candle', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'open')
    ..aOS(2, 'close')
    ..aOS(3, 'high')
    ..aOS(4, 'low')
    ..aOS(5, 'volume')
    ..aOS(6, 'oppositeVolume', protoName: 'oppositeVolume')
    ..aOS(7, 'lastPrice', protoName: 'lastPrice')
    ..aOM<$3.Timestamp>(8, 'timestamp', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Candle._() : super();
  factory Candle() => create();
  factory Candle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Candle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Candle clone() => Candle()..mergeFromMessage(this);
  Candle copyWith(void Function(Candle) updates) => super.copyWith((message) => updates(message as Candle));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CandleUpdate', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'open')
    ..aOS(2, 'close')
    ..aOS(3, 'high')
    ..aOS(4, 'low')
    ..aOS(5, 'volume')
    ..aOS(6, 'oppositeVolume', protoName: 'oppositeVolume')
    ..aOS(7, 'lastPrice', protoName: 'lastPrice')
    ..aOM<$3.Timestamp>(8, 'timestamp', subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(9, 'updateTimestamp', protoName: 'updateTimestamp', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  CandleUpdate._() : super();
  factory CandleUpdate() => create();
  factory CandleUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CandleUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CandleUpdate clone() => CandleUpdate()..mergeFromMessage(this);
  CandleUpdate copyWith(void Function(CandleUpdate) updates) => super.copyWith((message) => updates(message as CandleUpdate));
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

class Orderbook_PriceVolume extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Orderbook.PriceVolume', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'p')
    ..aOS(2, 'v')
    ..hasRequiredFields = false
  ;

  Orderbook_PriceVolume._() : super();
  factory Orderbook_PriceVolume() => create();
  factory Orderbook_PriceVolume.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Orderbook_PriceVolume.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Orderbook_PriceVolume clone() => Orderbook_PriceVolume()..mergeFromMessage(this);
  Orderbook_PriceVolume copyWith(void Function(Orderbook_PriceVolume) updates) => super.copyWith((message) => updates(message as Orderbook_PriceVolume));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Orderbook', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetPairId', protoName: 'assetPairId')
    ..aOM<$3.Timestamp>(2, 'timestamp', subBuilder: $3.Timestamp.create)
    ..pc<Orderbook_PriceVolume>(3, 'bids', $pb.PbFieldType.PM, subBuilder: Orderbook_PriceVolume.create)
    ..pc<Orderbook_PriceVolume>(4, 'asks', $pb.PbFieldType.PM, subBuilder: Orderbook_PriceVolume.create)
    ..hasRequiredFields = false
  ;

  Orderbook._() : super();
  factory Orderbook() => create();
  factory Orderbook.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Orderbook.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Orderbook clone() => Orderbook()..mergeFromMessage(this);
  Orderbook copyWith(void Function(Orderbook) updates) => super.copyWith((message) => updates(message as Orderbook));
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

class Balance extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Balance', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'assetId', protoName: 'assetId')
    ..aOS(2, 'available')
    ..aOS(3, 'reserved')
    ..aOM<$3.Timestamp>(4, 'timestamp', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Balance._() : super();
  factory Balance() => create();
  factory Balance.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Balance.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Balance clone() => Balance()..mergeFromMessage(this);
  Balance copyWith(void Function(Balance) updates) => super.copyWith((message) => updates(message as Balance));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Watchlist', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'name')
    ..a<$core.int>(3, 'order', $pb.PbFieldType.O3)
    ..aOB(5, 'readonly')
    ..pPS(6, 'assetIds', protoName: 'assetIds')
    ..hasRequiredFields = false
  ;

  Watchlist._() : super();
  factory Watchlist() => create();
  factory Watchlist.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Watchlist.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Watchlist clone() => Watchlist()..mergeFromMessage(this);
  Watchlist copyWith(void Function(Watchlist) updates) => super.copyWith((message) => updates(message as Watchlist));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Country', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'iso2')
    ..aOS(3, 'name')
    ..aOS(4, 'prefix')
    ..hasRequiredFields = false
  ;

  Country._() : super();
  factory Country() => create();
  factory Country.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Country.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Country clone() => Country()..mergeFromMessage(this);
  Country copyWith(void Function(Country) updates) => super.copyWith((message) => updates(message as Country));
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

class EmptyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EmptyResponse', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<ErrorV1>(1, 'error', subBuilder: ErrorV1.create)
    ..hasRequiredFields = false
  ;

  EmptyResponse._() : super();
  factory EmptyResponse() => create();
  factory EmptyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EmptyResponse clone() => EmptyResponse()..mergeFromMessage(this);
  EmptyResponse copyWith(void Function(EmptyResponse) updates) => super.copyWith((message) => updates(message as EmptyResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmptyResponse create() => EmptyResponse._();
  EmptyResponse createEmptyInstance() => create();
  static $pb.PbList<EmptyResponse> createRepeated() => $pb.PbList<EmptyResponse>();
  @$core.pragma('dart2js:noInline')
  static EmptyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyResponse>(create);
  static EmptyResponse _defaultInstance;

  @$pb.TagNumber(1)
  ErrorV1 get error => $_getN(0);
  @$pb.TagNumber(1)
  set error(ErrorV1 v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  ErrorV1 ensureError() => $_ensure(0);
}

class EmptyResponseV2 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EmptyResponseV2', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOM<ErrorV2>(1, 'error', subBuilder: ErrorV2.create)
    ..hasRequiredFields = false
  ;

  EmptyResponseV2._() : super();
  factory EmptyResponseV2() => create();
  factory EmptyResponseV2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyResponseV2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EmptyResponseV2 clone() => EmptyResponseV2()..mergeFromMessage(this);
  EmptyResponseV2 copyWith(void Function(EmptyResponseV2) updates) => super.copyWith((message) => updates(message as EmptyResponseV2));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmptyResponseV2 create() => EmptyResponseV2._();
  EmptyResponseV2 createEmptyInstance() => create();
  static $pb.PbList<EmptyResponseV2> createRepeated() => $pb.PbList<EmptyResponseV2>();
  @$core.pragma('dart2js:noInline')
  static EmptyResponseV2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyResponseV2>(create);
  static EmptyResponseV2 _defaultInstance;

  @$pb.TagNumber(1)
  ErrorV2 get error => $_getN(0);
  @$pb.TagNumber(1)
  set error(ErrorV2 v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  ErrorV2 ensureError() => $_ensure(0);
}

class Error extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Error', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'message')
    ..m<$core.String, $core.String>(2, 'fields', entryClassName: 'Error.FieldsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('antaresWallet'))
    ..hasRequiredFields = false
  ;

  Error._() : super();
  factory Error() => create();
  factory Error.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Error.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Error clone() => Error()..mergeFromMessage(this);
  Error copyWith(void Function(Error) updates) => super.copyWith((message) => updates(message as Error));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Error create() => Error._();
  Error createEmptyInstance() => create();
  static $pb.PbList<Error> createRepeated() => $pb.PbList<Error>();
  @$core.pragma('dart2js:noInline')
  static Error getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Error>(create);
  static Error _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get fields => $_getMap(1);
}

class ErrorV1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ErrorV1', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'code')
    ..aOS(2, 'field')
    ..aOS(3, 'message')
    ..aOS(4, 'details')
    ..hasRequiredFields = false
  ;

  ErrorV1._() : super();
  factory ErrorV1() => create();
  factory ErrorV1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrorV1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ErrorV1 clone() => ErrorV1()..mergeFromMessage(this);
  ErrorV1 copyWith(void Function(ErrorV1) updates) => super.copyWith((message) => updates(message as ErrorV1));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ErrorV1 create() => ErrorV1._();
  ErrorV1 createEmptyInstance() => create();
  static $pb.PbList<ErrorV1> createRepeated() => $pb.PbList<ErrorV1>();
  @$core.pragma('dart2js:noInline')
  static ErrorV1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrorV1>(create);
  static ErrorV1 _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get field_2 => $_getSZ(1);
  @$pb.TagNumber(2)
  set field_2($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasField_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearField_2() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get details => $_getSZ(3);
  @$pb.TagNumber(4)
  set details($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDetails() => $_has(3);
  @$pb.TagNumber(4)
  void clearDetails() => clearField(4);
}

class ErrorV2 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ErrorV2', package: const $pb.PackageName('antaresWallet'), createEmptyInstance: create)
    ..aOS(1, 'error')
    ..aOS(2, 'message')
    ..hasRequiredFields = false
  ;

  ErrorV2._() : super();
  factory ErrorV2() => create();
  factory ErrorV2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrorV2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ErrorV2 clone() => ErrorV2()..mergeFromMessage(this);
  ErrorV2 copyWith(void Function(ErrorV2) updates) => super.copyWith((message) => updates(message as ErrorV2));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ErrorV2 create() => ErrorV2._();
  ErrorV2 createEmptyInstance() => create();
  static $pb.PbList<ErrorV2> createRepeated() => $pb.PbList<ErrorV2>();
  @$core.pragma('dart2js:noInline')
  static ErrorV2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrorV2>(create);
  static ErrorV2 _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get error => $_getSZ(0);
  @$pb.TagNumber(1)
  set error($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

