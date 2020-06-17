///
//  Generated code. Do not modify.
//  source: isalive.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'isalive.pb.dart' as $0;
export 'isalive.pb.dart';

class MonitoringClient extends $grpc.Client {
  static final _$isAlive =
      $grpc.ClientMethod<$0.IsAliveRequest, $0.IsAliveResponce>(
          '/common.Monitoring/IsAlive',
          ($0.IsAliveRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.IsAliveResponce.fromBuffer(value));

  MonitoringClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.IsAliveResponce> isAlive($0.IsAliveRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$isAlive, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class MonitoringServiceBase extends $grpc.Service {
  $core.String get $name => 'common.Monitoring';

  MonitoringServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.IsAliveRequest, $0.IsAliveResponce>(
        'IsAlive',
        isAlive_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.IsAliveRequest.fromBuffer(value),
        ($0.IsAliveResponce value) => value.writeToBuffer()));
  }

  $async.Future<$0.IsAliveResponce> isAlive_Pre(
      $grpc.ServiceCall call, $async.Future<$0.IsAliveRequest> request) async {
    return isAlive(call, await request);
  }

  $async.Future<$0.IsAliveResponce> isAlive(
      $grpc.ServiceCall call, $0.IsAliveRequest request);
}
