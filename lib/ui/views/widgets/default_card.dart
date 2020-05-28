import 'package:flutter/material.dart';

class DefaultCard extends StatelessWidget {
  const DefaultCard({
    Key key,
    this.height,
    this.child,
  }) : super(key: key);

  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        boxShadow: [
          BoxShadow(
            blurRadius: 8.0,
            color: Colors.grey[400],
          ),
        ],
      ),
      child: child,
    );
  }
}
