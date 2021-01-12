///
//  Generated code. Do not modify.
//  source: common.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ErrorCode extends $pb.ProtobufEnum {
  static const ErrorCode Unknown = ErrorCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Unknown');
  static const ErrorCode InvalidField = ErrorCode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'InvalidField');
  static const ErrorCode Unauthorized = ErrorCode._(401, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Unauthorized');
  static const ErrorCode NotFound = ErrorCode._(404, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NotFound');
  static const ErrorCode Runtime = ErrorCode._(500, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Runtime');

  static const $core.List<ErrorCode> values = <ErrorCode> [
    Unknown,
    InvalidField,
    Unauthorized,
    NotFound,
    Runtime,
  ];

  static final $core.Map<$core.int, ErrorCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ErrorCode valueOf($core.int value) => _byValue[value];

  const ErrorCode._($core.int v, $core.String n) : super(v, n);
}

