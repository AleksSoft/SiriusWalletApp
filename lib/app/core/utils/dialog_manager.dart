import 'dart:collection';
import 'dart:ui';

import 'package:antares_wallet/app/core/common/common.dart';
import 'package:antares_wallet/app/domain/entities/error_content.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

import 'app_log.dart';

class DialogManager {
  ListQueue<ErrorContent> _errorsQueue = ListQueue<ErrorContent>();

  void error({
    @required String message,
    String title,
    VoidCallback action,
  }) {
    final content = ErrorContent(
      message: message,
      title: title,
      action: action,
    );
    ErrorContent existingContent = _errorsQueue.firstWhere(
      (e) => e == content,
      orElse: () => null,
    );
    if (existingContent == null) {
      _errorsQueue.add(content);
      _checkNext();
    }
  }

  void defaultError() => error(
        title: 'error_default_title'.tr,
        message: 'error_default_message'.tr,
      );

  Future<void> _checkNext() async {
    try {
      ErrorContent content = _errorsQueue.first;
      Get.defaultDialog(
        title: content?.title ?? '',
        middleText: content?.message ?? '',
        buttonColor: AppColors.red,
        confirmTextColor: AppColors.primary,
        onConfirm: () {
          Get.back();
          content?.action?.call();
          _errorsQueue.remove(content);
          _checkNext();
        },
      );
    } catch (e) {
      AppLog.logger.e(e);
    }
  }
}
