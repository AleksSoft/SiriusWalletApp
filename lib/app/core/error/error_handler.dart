import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/services/session_service.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:grpc/grpc.dart';

abstract class ErrorHandler {
  final dialogManager = Get.find<DialogManager>();
  final sessionService = Get.find<SessionService>();

  Future<T> safeCall<T>(
    Future<T> Function() future, {
    @required String method,
  }) async {
    try {
      return await future();
    } catch (e) {
      if (e is GrpcError) {
        _handleGrpcError(e, method);
      } else {
        _handleError(e, method);
      }
      return null;
    }
  }

  void _handleGrpcError(GrpcError e, String method) async {
    if (e.code == StatusCode.unauthenticated) {
      sessionService.verifySessionPIN(logOutOnError: true);
    }
    logError(
      code: e.code.toString(),
      message: e.message,
      method: method,
    );
    _defaultErrorDialog();
  }

  void _handleError(dynamic e, String method) {
    logError(
      code: e.toString(),
      message: '',
      method: method,
    );
    _defaultErrorDialog();
  }

  void _defaultErrorDialog() => dialogManager.error(
        ErrorContent(
          title: 'Oops',
          message: 'Something went wrong. Please try again later.',
        ),
      );

  void logError({
    @required String code,
    @required String message,
    @required String method,
  }) =>
      AppLog.logger.e(
        '''Error in method: $method
        Code: $code
        Message: $message''',
      );
}
