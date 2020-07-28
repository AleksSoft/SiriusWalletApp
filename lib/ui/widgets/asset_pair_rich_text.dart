import 'package:flutter/material.dart';

class PairRichText extends StatelessWidget {
  const PairRichText({
    Key key,
    @required this.displayId1,
    @required this.displayId2,
  }) : super(key: key);

  final String displayId1;
  final String displayId2;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.button;
    return RichText(
      text: TextSpan(
        style: textStyle.copyWith(
          fontSize: 12.0,
        ),
        children: [
          TextSpan(
            text: displayId1,
            style: textStyle.copyWith(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(text: ' / '),
          TextSpan(text: displayId2),
        ],
      ),
    );
  }
}
