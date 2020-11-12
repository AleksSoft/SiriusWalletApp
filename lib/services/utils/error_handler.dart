import 'dart:convert';

import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/models/saved_errors_model.dart';
import 'package:antares_wallet/src/apiservice.pb.dart' as apiservice;
import 'package:antares_wallet/ui/pages/disclaimer/disclaimer_page.dart';
import 'package:antares_wallet/ui/pages/start/start_page.dart';
import 'package:cross_local_storage/cross_local_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:grpc/grpc.dart';

class ErrorHandler {
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
        _handleGrpcError(e, method);
      } else {
        _handleError(e, method);
      }
      return null;
    }
  }

  static _handleApiError<T>(
    dynamic error,
    Future<T> Function() future,
    String method,
  ) async {
    if (error is apiservice.Error) {
      await saveError(code: '', message: error.message, method: method);
    } else if (error is apiservice.ErrorV1) {
      // check if it's pending disclaimer
      if (error.code == '70') {
        final result = await Get.toNamed(DisclaimersPage.route);
        if (result ?? false) {
          await ErrorHandler.safeCall<T>(() => future(), method: method);
        }
      } else {
        await saveError(
            code: error.code, message: error.message, method: method);
      }
    } else if (error is apiservice.ErrorV2) {
      await saveError(
          code: error.error, message: error.message, method: method);
    }
  }

  static _handleGrpcError(e, String method) async {
    if (e.code == StatusCode.unauthenticated) {
      Get.find<LocalStorageInterface>().clear().whenComplete(
            () => Get.offAllNamed(StartPage.route),
          );
    }
    await saveError(
      code: e.code.toString(),
      message: e.message,
      method: method,
    );
  }

  static _handleError(dynamic error, String method) async {
    try {
      await saveError(code: '', message: error.message, method: method);
    } catch (e) {
      await saveError(code: '', message: error.toString(), method: method);
    }
  }

  static saveError({
    @required String code,
    @required String message,
    @required String method,
  }) async {
    final storage = Get.find<LocalStorageInterface>();
    String jsonStr = storage.getString(AppStorageKeys.errorList);
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
    await storage.setString(
      AppStorageKeys.errorList,
      json.encode(model.toJson()),
    );
  }
}
