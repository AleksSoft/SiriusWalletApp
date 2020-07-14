///
//  Generated code. Do not modify.
//  source: isalive.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class IsAliveRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('IsAliveRequest', package: const $pb.PackageName('common'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  IsAliveRequest._() : super();
  factory IsAliveRequest() => create();
  factory IsAliveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsAliveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  IsAliveRequest clone() => IsAliveRequest()..mergeFromMessage(this);
  IsAliveRequest copyWith(void Function(IsAliveRequest) updates) => super.copyWith((message) => updates(message as IsAliveRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsAliveRequest create() => IsAliveRequest._();
  IsAliveRequest createEmptyInstance() => create();
  static $pb.PbList<IsAliveRequest> createRepeated() => $pb.PbList<IsAliveRequest>();
  @$core.pragma('dart2js:noInline')
  static IsAliveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsAliveRequest>(create);
  static IsAliveRequest _defaultInstance;
}

class IsAliveResponce extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('IsAliveResponce', package: const $pb.PackageName('common'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..aOS(2, 'version')
    ..aOS(3, 'startedAt', protoName: 'startedAt')
    ..aOS(4, 'env')
    ..aOS(5, 'hostname')
    ..hasRequiredFields = false
  ;

  IsAliveResponce._() : super();
  factory IsAliveResponce() => create();
  factory IsAliveResponce.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsAliveResponce.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  IsAliveResponce clone() => IsAliveResponce()..mergeFromMessage(this);
  IsAliveResponce copyWith(void Function(IsAliveResponce) updates) => super.copyWith((message) => updates(message as IsAliveResponce));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsAliveResponce create() => IsAliveResponce._();
  IsAliveResponce createEmptyInstance() => create();
  static $pb.PbList<IsAliveResponce> createRepeated() => $pb.PbList<IsAliveResponce>();
  @$core.pragma('dart2js:noInline')
  static IsAliveResponce getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsAliveResponce>(create);
  static IsAliveResponce _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get startedAt => $_getSZ(2);
  @$pb.TagNumber(3)
  set startedAt($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStartedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartedAt() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get env => $_getSZ(3);
  @$pb.TagNumber(4)
  set env($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEnv() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnv() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get hostname => $_getSZ(4);
  @$pb.TagNumber(5)
  set hostname($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHostname() => $_has(4);
  @$pb.TagNumber(5)
  void clearHostname() => clearField(5);
}

