import 'package:flutter/material.dart';

class NothingView extends StatelessWidget {
  final String header;
  final String message;

  const NothingView({
    Key key,
    @required this.header,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            this.header,
            style: Theme.of(context).textTheme.button.copyWith(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            this.message,
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}
