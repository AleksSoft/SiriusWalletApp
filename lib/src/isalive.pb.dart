///
//  Generated code. Do not modify.
//  source: isalive.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class IsAliveRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IsAliveRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'common'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  IsAliveRequest._() : super();
  factory IsAliveRequest() => create();
  factory IsAliveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsAliveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsAliveRequest clone() => IsAliveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsAliveRequest copyWith(void Function(IsAliveRequest) updates) => super.copyWith((message) => updates(message as IsAliveRequest)); // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IsAliveResponce', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'common'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startedAt', protoName: 'startedAt')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'env')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hostname')
    ..hasRequiredFields = false
  ;

  IsAliveResponce._() : super();
  factory IsAliveResponce() => create();
  factory IsAliveResponce.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsAliveResponce.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsAliveResponce clone() => IsAliveResponce()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsAliveResponce copyWith(void Function(IsAliveResponce) updates) => super.copyWith((message) => updates(message as IsAliveResponce)); // ignore: deprecated_member_use
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

