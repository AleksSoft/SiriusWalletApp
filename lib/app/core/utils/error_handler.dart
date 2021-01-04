import 'dart:convert';

import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/service/session_service.dart';
import 'package:antares_wallet/models/saved_errors_model.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:grpc/grpc.dart';

import 'app_log.dart';
import 'dialog_manager.dart';

class ErrorHandler {
  static final _dialogManager = Get.find<DialogManager>();

  static Future<T> safeCall<T>(
    Future<T> Function() future, {
    @required String method,
    bool showErrorDialog = true,
  }) async {
    try {
      T response = await future();
      try {
        dynamic dResponse = response as dynamic;
        if (dResponse?.error != null && dResponse.error.hasMessage()) {
          _handleApiError<T>(dResponse.error, future, method);
          response = null;
        }
      } catch (e) {}
      return response;
    } catch (e) {
      if (e is GrpcError) {
        _handleGrpcError(e, method, showErrorDialog);
      } else {
        _handleError(e, method, showErrorDialog);
      }
      return null;
    }
  }

  static _handleApiError<T>(
    dynamic error,
    Future<T> Function() future,
    String method,
  ) async {
    // if (error is apiservice.Error) {
    //   logError(code: '', message: error.message, method: method);
    // } else if (error is apiservice.ErrorV1) {
    //   // check if it's pending disclaimer
    //   if (error.code == '70') {
    //     final result = await Get.toNamed(DisclaimersPage.route);
    //     if (result ?? false) {
    //       await ErrorHandler.safeCall<T>(
    //         () => future(),
    //         method: method,
    //       );
    //     }
    //   } else {
    //     logError(
    //       code: error.code,
    //       message: error.message,
    //       method: method,
    //     );
    //   }
    // } else if (error is apiservice.ErrorV2) {
    //   logError(
    //     code: error.error,
    //     message: error.message,
    //     method: method,
    //   );
    // }
  }

  static void _handleGrpcError(
    GrpcError e,
    String method,
    bool showDialog,
  ) {
    if (e.code == StatusCode.unauthenticated) {
      Get.find<SessionService>().verifySessionPIN(logOutOnError: true);
    }
    logError(
      code: e.code.toString(),
      message: e.message,
      method: method,
    );
  }

  static void _handleError(
    dynamic e,
    String method,
    bool showDialog,
  ) {
    logError(
      code: e.toString(),
      message: '',
      method: method,
    );
    if (showDialog) _defaultErrorDialog();
  }

  static void _defaultErrorDialog() => _dialogManager.error(
        ErrorContent(
            title: 'Oops',
            message: 'Something went wrong. Please try again later.'),
      );

  static void logError({
    @required String code,
    @required String message,
    @required String method,
  }) =>
      AppLog.logger.e('''Error in method: $method
        Code: $code
        Message: $message''');

  static saveError({
    @required String code,
    @required String message,
    @required String method,
  }) async {
    final storage = GetStorage();
    String jsonStr = storage.read(AppStorageKeys.errorList);
    SavedErrorsModel model = jsonStr.isNullOrBlank
        ? SavedErrorsModel()
        : SavedErrorsModel().fromJson(json.decode(jsonStr));
    model.errors.add(
      SavedError()
        ..code = code
        ..message = message
        ..method = method
        ..timestamp = DateTime.now().millisecondsSinceEpoch,
    );
    await storage.write(
      AppStorageKeys.errorList,
      json.encode(model.toJson()),
    );
  }
}
