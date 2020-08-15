import 'package:antares_wallet/src/apiservice.pb.dart' as apiservice;
import 'package:antares_wallet/ui/pages/start/start_page.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:grpc/grpc.dart';

import 'dialog_manager.dart';

class ErrorHandler {
  static final _dialogManager = Get.find<DialogManager>();

  static Future safeCall(Future future) async {
    dynamic response = await future
        .catchError(
          _handleGrpcError,
          test: (e) => e is GrpcError,
        )
        .catchError(_handleError);
    try {
      if (response?.error != null && response.error.hasMessage()) {
        _handleApiError(response.error);
        return null;
      }
    } catch (e) {}
    return response;
  }

  static _handleApiError(error) {
    if (error is apiservice.Error) {
      _showErrorDialog(message: error.message);
    } else if (error is apiservice.ErrorV1) {
      _showErrorDialog(code: error.code, message: error.message);
    } else if (error is apiservice.ErrorV2) {
      _showErrorDialog(code: error.error, message: error.message);
    }
  }

  static _handleGrpcError(e) {
    switch (e.code) {
      case StatusCode.unauthenticated:
        _showErrorDialog(
          code: e.code.toString(),
          message: e.message,
          action: () => GetStorage().erase().whenComplete(
                () => Get.offAllNamed(StartPage.route),
              ),
        );
        break;
      default:
        _showErrorDialog(code: e.code.toString(), message: e.message);
        break;
    }
  }

  static _handleError(e) {
    _showErrorDialog(message: e.message);
  }

  static _showErrorDialog({
    String code,
    String customTitle,
    String message,
    VoidCallback action,
  }) {
    String title = code.isNullOrBlank ? 'Error' : 'Error ($code)';
    _dialogManager.error(ErrorContent(
      title: customTitle ?? title,
      message: message,
      action: action,
    ));
  }
}
