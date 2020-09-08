import 'dart:convert';

import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/models/saved_errors_model.dart';
import 'package:antares_wallet/src/apiservice.pb.dart' as apiservice;
import 'package:antares_wallet/ui/pages/disclaimer/disclaimer_page.dart';
import 'package:antares_wallet/ui/pages/start/start_page.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:grpc/grpc.dart';

typedef Future<T> FutureGenerator<T>();

class ErrorHandler {
  static Future safeCall(FutureGenerator future,
      {@required String method}) async {
    dynamic response = await future()
        .catchError(
          (e) => _handleGrpcError(e, method),
          test: (e) => e is GrpcError,
        )
        .catchError((e) => _handleError(e, method));
    try {
      if (response?.errors != null && response.errors.hasMessage()) {
        _handleApiError(response.errors, future, method);
        return null;
      }
    } catch (e) {}
    return response;
  }

  static _handleApiError(
    dynamic error,
    FutureGenerator future,
    String method,
  ) async {
    if (error is apiservice.Error) {
      saveError(code: '', message: error.message, method: method);
    } else if (error is apiservice.ErrorV1) {
      // check if it's pending disclaimer
      if (error.code == '70') {
        final result = await Get.toNamed(DisclaimersPage.route);
        if (result ?? false) {
          await ErrorHandler.safeCall(() => future(), method: method);
        }
      } else {
        saveError(code: error.code, message: error.message, method: method);
      }
    } else if (error is apiservice.ErrorV2) {
      saveError(code: error.error, message: error.message, method: method);
    }
  }

  static _handleGrpcError(e, String method) {
    if (e.code == StatusCode.unauthenticated) {
      GetStorage().erase().whenComplete(
            () => Get.offAllNamed(StartPage.route),
          );
    }
    saveError(code: e.code.toString(), message: e.message, method: method);
  }

  static _handleError(dynamic e, String method) {
    saveError(code: '', message: e.message, method: method);
  }

  static saveError({
    @required String code,
    @required String message,
    @required String method,
  }) {
    final storage = GetStorage();
    String jsonStr = storage.read(AppStorageKeys.errorList);
    SavedErrorsModel model = jsonStr.isNullOrBlank
        ? SavedErrorsModel()
        : SavedErrorsModel().fromJson(json.decode(jsonStr));
    model.errors.add(
      SavedError()
        ..code = code
        ..message = message
        ..method = method,
    );
    storage.write(AppStorageKeys.errorList, json.encode(model.toJson()));
  }
}
