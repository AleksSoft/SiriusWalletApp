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
  static const ErrorCode MaintenanceMode = ErrorCode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MaintenanceMode');
  static const ErrorCode AssetUnavailable = ErrorCode._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AssetUnavailable');
  static const ErrorCode PendingDialog = ErrorCode._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PendingDialog');
  static const ErrorCode KycRequired = ErrorCode._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'KycRequired');
  static const ErrorCode NoData = ErrorCode._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NoData');
  static const ErrorCode LimitationCheckFailed = ErrorCode._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LimitationCheckFailed');
  static const ErrorCode AmountIsBiggerThanLimit = ErrorCode._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AmountIsBiggerThanLimit');
  static const ErrorCode AmountIsBiggerThanLimitAndUpgrade = ErrorCode._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AmountIsBiggerThanLimitAndUpgrade');
  static const ErrorCode InconsistentData = ErrorCode._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'InconsistentData');
  static const ErrorCode MinVolume = ErrorCode._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MinVolume');
  static const ErrorCode InvalidCashoutAddress = ErrorCode._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'InvalidCashoutAddress');
  static const ErrorCode NotEnoughFunds = ErrorCode._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NotEnoughFunds');
  static const ErrorCode BadRequest = ErrorCode._(400, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BadRequest');
  static const ErrorCode Unauthorized = ErrorCode._(401, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Unauthorized');
  static const ErrorCode NotFound = ErrorCode._(404, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NotFound');
  static const ErrorCode Runtime = ErrorCode._(500, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Runtime');

  static const $core.List<ErrorCode> values = <ErrorCode> [
    Unknown,
    InvalidField,
    MaintenanceMode,
    AssetUnavailable,
    PendingDialog,
    KycRequired,
    NoData,
    LimitationCheckFailed,
    AmountIsBiggerThanLimit,
    AmountIsBiggerThanLimitAndUpgrade,
    InconsistentData,
    MinVolume,
    InvalidCashoutAddress,
    NotEnoughFunds,
    BadRequest,
    Unauthorized,
    NotFound,
    Runtime,
  ];

  static final $core.Map<$core.int, ErrorCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ErrorCode valueOf($core.int value) => _byValue[value];

  const ErrorCode._($core.int v, $core.String n) : super(v, n);
}

