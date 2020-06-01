import 'package:flutter/material.dart';

class DefaultCard extends StatelessWidget {
  final Widget child;
  final Color color;
  final double blurRadius;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final BorderRadiusGeometry borderRadius;

  const DefaultCard({
    Key key,
    this.child,
    this.color = Colors.white,
    this.blurRadius = 8.0,
    this.padding = const EdgeInsets.all(0.0),
    this.margin = const EdgeInsets.all(8.0),
    this.borderRadius = const BorderRadius.all(Radius.circular(16.0)),
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
            color: Colors.grey[400],
          ),
        ],
      ),
      child: child,
    );
  }
}
