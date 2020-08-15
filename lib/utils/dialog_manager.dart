import 'dart:collection';

import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class DialogManager {
  ListQueue<ErrorContent> _errorsQueue = ListQueue<ErrorContent>();

  error(ErrorContent content) {
    if (content != null) {
      ErrorContent existingContent = _errorsQueue.firstWhere(
        (e) => e == content,
        orElse: () => null,
      );
      if (existingContent == null) {
        _errorsQueue.add(content);
        _checkNext();
      }
    }
  }

  _checkNext() async {
    if (_errorsQueue.isNotEmpty) {
      ErrorContent content = _errorsQueue.first;
      Get.defaultDialog(
        title: content?.title ?? '',
        middleText: content?.message ?? '',
        buttonColor: AppColors.red,
        confirmTextColor: AppColors.primary,
        onConfirm: () {
          Get.back();
          content?.action?.call();
          _errorsQueue.removeFirst();
          _checkNext();
        },
      );
    }
  }
}

class ErrorContent with EquatableMixin {
  String title;
  String message;
  VoidCallback action;

  ErrorContent({
    this.title,
    @required this.message,
    this.action,
  });

  @override
  List<Object> get props => [title, message];
}
