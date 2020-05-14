import 'package:flutter/material.dart';

class DepositLimits extends StatelessWidget {
  final GlobalKey _key = GlobalKey();
  final String text;
  final TextStyle style;
  final double percent;
  final double height;

  DepositLimits(
    this.text, {
    this.style,
    this.percent = 1.0,
    this.height = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          text,
          style: style,
        ),
        SizedBox(height: 8.0),
        SizedBox(
          height: height,
          child: AnimatedContainer(
            key: _key,
            width: _getWidth(),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(32),
            ),
            duration: Duration(milliseconds: 300),
          ),
        ),
      ],
    );
  }

  double _getWidth() {
    final RenderBox renderBox = _key.currentContext.findRenderObject();
    return renderBox.size.width * percent;
  }
}
