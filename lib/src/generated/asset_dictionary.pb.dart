///
//  Generated code. Do not modify.
//  source: asset_dictionary.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

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
    ..a<$core.int>(4, 'accuracy', $pb.PbFieldType.O3)
    ..aOB(5, 'kycNeeded', protoName: 'kycNeeded')
    ..aOS(6, 'categoryId', protoName: 'categoryId')
    ..aOB(7, 'cardDeposit', protoName: 'cardDeposit')
    ..aOB(8, 'swiftDeposit', protoName: 'swiftDeposit')
    ..aOB(9, 'blockchainDeposit', protoName: 'blockchainDeposit')
    ..aOB(10, 'swiftWithdrawal', protoName: 'swiftWithdrawal')
    ..aOB(11, 'forwardWithdrawal', protoName: 'forwardWithdrawal')
    ..aOB(12, 'crosschainWithdrawal', protoName: 'crosschainWithdrawal')
    ..aOB(13, 'isTrusted', protoName: 'isTrusted')
    ..aOB(14, 'canBeBase', protoName: 'canBeBase')
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
  $core.int get accuracy => $_getIZ(3);
  @$pb.TagNumber(4)
  set accuracy($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccuracy() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccuracy() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get kycNeeded => $_getBF(4);
  @$pb.TagNumber(5)
  set kycNeeded($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasKycNeeded() => $_has(4);
  @$pb.TagNumber(5)
  void clearKycNeeded() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get categoryId => $_getSZ(5);
  @$pb.TagNumber(6)
  set categoryId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCategoryId() => $_has(5);
  @$pb.TagNumber(6)
  void clearCategoryId() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get cardDeposit => $_getBF(6);
  @$pb.TagNumber(7)
  set cardDeposit($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCardDeposit() => $_has(6);
  @$pb.TagNumber(7)
  void clearCardDeposit() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get swiftDeposit => $_getBF(7);
  @$pb.TagNumber(8)
  set swiftDeposit($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSwiftDeposit() => $_has(7);
  @$pb.TagNumber(8)
  void clearSwiftDeposit() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get blockchainDeposit => $_getBF(8);
  @$pb.TagNumber(9)
  set blockchainDeposit($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBlockchainDeposit() => $_has(8);
  @$pb.TagNumber(9)
  void clearBlockchainDeposit() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get swiftWithdrawal => $_getBF(9);
  @$pb.TagNumber(10)
  set swiftWithdrawal($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSwiftWithdrawal() => $_has(9);
  @$pb.TagNumber(10)
  void clearSwiftWithdrawal() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get forwardWithdrawal => $_getBF(10);
  @$pb.TagNumber(11)
  set forwardWithdrawal($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasForwardWithdrawal() => $_has(10);
  @$pb.TagNumber(11)
  void clearForwardWithdrawal() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get crosschainWithdrawal => $_getBF(11);
  @$pb.TagNumber(12)
  set crosschainWithdrawal($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasCrosschainWithdrawal() => $_has(11);
  @$pb.TagNumber(12)
  void clearCrosschainWithdrawal() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get isTrusted => $_getBF(12);
  @$pb.TagNumber(13)
  set isTrusted($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasIsTrusted() => $_has(12);
  @$pb.TagNumber(13)
  void clearIsTrusted() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get canBeBase => $_getBF(13);
  @$pb.TagNumber(14)
  set canBeBase($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasCanBeBase() => $_has(13);
  @$pb.TagNumber(14)
  void clearCanBeBase() => clearField(14);
}

