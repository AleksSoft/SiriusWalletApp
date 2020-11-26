import 'dart:ui';

import 'package:antares_wallet/app/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmptyReloadingView extends StatelessWidget {
  final String emptyHeader;
  final String emptyMessage;
  final Widget child;
  final Widget customLoader;
  final bool isEmpty;
  final bool isLoading;
  final RefreshCallback onRefresh;

  const EmptyReloadingView({
    @required this.child,
    this.customLoader,
    this.isEmpty,
    this.emptyMessage,
    this.emptyHeader,
    this.isLoading,
    this.onRefresh,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => Future.delayed(Duration()).whenComplete(
        () => onRefresh?.call(),
      ),
      color: AppColors.dark,
      child: Stack(
        children: <Widget>[
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: isEmpty ?? false
                ? Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          this.emptyHeader ?? '',
                          style: Get.textTheme.button.copyWith(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          this.emptyMessage ?? '',
                          style: Get.textTheme.caption,
                        )
                      ],
                    ),
                  )
                : SizedBox.shrink(),
          ),
          child,
          isLoading != null && isLoading
              ? this.customLoader ?? AppUiHelpers.linearProgress
              : SizedBox.shrink()
        ],
      ),
    );
  }
}
