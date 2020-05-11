import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key key,
    @required this.height,
    @required this.child,
  }) : super(key: key);

  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      shadowColor: Colors.grey[100],
      elevation: 4.0,
      child: SizedBox(
        height: height,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: child,
        ),
      ),
    );
  }
}
