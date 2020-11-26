import 'package:antares_wallet/app/common/common.dart';
import 'package:flutter/material.dart';

class DefaultCard extends StatelessWidget {
  final Widget child;
  final Color color;
  final Color shadowColor;
  final double blurRadius;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final BorderRadiusGeometry borderRadius;

  const DefaultCard({
    Key key,
    this.child,
    this.color = Colors.white,
    this.shadowColor,
    this.blurRadius = AppSizes.small,
    this.padding = const EdgeInsets.all(0.0),
    this.margin = const EdgeInsets.all(AppSizes.small),
    this.borderRadius = const BorderRadius.all(
      Radius.circular(AppSizes.medium),
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: this.padding,
      margin: this.margin,
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: this.borderRadius,
        boxShadow: [
          BoxShadow(
            blurRadius: this.blurRadius,
            color: shadowColor ?? Colors.grey[300],
          ),
        ],
      ),
      child: child,
    );
  }
}
