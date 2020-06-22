///
//  Generated code. Do not modify.
//  source: asset_dictionary.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'google/protobuf/empty.pb.dart' as $0;
import 'asset_dictionary.pb.dart' as $1;
export 'asset_dictionary.pb.dart';

class ApiServiceClient extends $grpc.Client {
  static final _$assetsDictionary =
      $grpc.ClientMethod<$0.Empty, $1.AssetsDictionaryResponse>(
          '/antaresWallet.ApiService/AssetsDictionary',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AssetsDictionaryResponse.fromBuffer(value));

  ApiServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.AssetsDictionaryResponse> assetsDictionary(
      $0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$assetsDictionary, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class ApiServiceBase extends $grpc.Service {
  $core.String get $name => 'antaresWallet.ApiService';

  ApiServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.AssetsDictionaryResponse>(
        'AssetsDictionary',
        assetsDictionary_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.AssetsDictionaryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.AssetsDictionaryResponse> assetsDictionary_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return assetsDictionary(call, await request);
  }

  $async.Future<$1.AssetsDictionaryResponse> assetsDictionary(
      $grpc.ServiceCall call, $0.Empty request);
}
