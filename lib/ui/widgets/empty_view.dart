import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadHelperView extends StatelessWidget {
  final String emptyHeader;
  final String emptyMessage;
  final Widget child;
  final bool showEmpty;
  final bool loading;

  const LoadHelperView({
    Key key,
    @required this.emptyHeader,
    @required this.emptyMessage,
    @required this.child,
    @required this.showEmpty,
    this.loading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: showEmpty
              ? Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        this.emptyHeader,
                        style: Get.textTheme.button.copyWith(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        this.emptyMessage,
                        style: Get.textTheme.caption,
                      )
                    ],
                  ),
                )
              : SizedBox.shrink(),
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: loading != null && loading
              ? AppUiHelpers.linearProgress
              : SizedBox.shrink(),
        ),
        child,
      ],
    );
  }
}
