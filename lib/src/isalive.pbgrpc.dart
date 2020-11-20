///
//  Generated code. Do not modify.
//  source: isalive.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'isalive.pb.dart' as $2;
export 'isalive.pb.dart';

class MonitoringClient extends $grpc.Client {
  static final _$isAlive =
      $grpc.ClientMethod<$2.IsAliveRequest, $2.IsAliveResponce>(
          '/common.Monitoring/IsAlive',
          ($2.IsAliveRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.IsAliveResponce.fromBuffer(value));

  MonitoringClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.IsAliveResponce> isAlive($2.IsAliveRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$isAlive, request, options: options);
  }
}

abstract class MonitoringServiceBase extends $grpc.Service {
  $core.String get $name => 'common.Monitoring';

  MonitoringServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.IsAliveRequest, $2.IsAliveResponce>(
        'IsAlive',
        isAlive_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.IsAliveRequest.fromBuffer(value),
        ($2.IsAliveResponce value) => value.writeToBuffer()));
  }

  $async.Future<$2.IsAliveResponce> isAlive_Pre(
      $grpc.ServiceCall call, $async.Future<$2.IsAliveRequest> request) async {
    return isAlive(call, await request);
  }

  $async.Future<$2.IsAliveResponce> isAlive(
      $grpc.ServiceCall call, $2.IsAliveRequest request);
}
