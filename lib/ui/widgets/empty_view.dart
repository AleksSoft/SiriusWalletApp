import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmptyView extends StatelessWidget {
  final String header;
  final String message;
  final Widget child;
  final bool condition;

  const EmptyView({
    Key key,
    @required this.header,
    @required this.message,
    @required this.child,
    @required this.condition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: Duration(milliseconds: 300),
          child: condition
              ? Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        this.header,
                        style: Get.textTheme.button.copyWith(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        this.message,
                        style: Get.textTheme.caption,
                      )
                    ],
                  ),
                )
              : SizedBox.shrink(),
        ),
        child,
      ],
    );
  }
}
